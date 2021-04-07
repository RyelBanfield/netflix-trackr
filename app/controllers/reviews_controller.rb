class ReviewsController < ApplicationController
  before_action :set_show, only: %i[ show edit update destroy ]
  before_action :authenticate_user!

  # GET /reviews or /reviews.json
  def index
    @reviews = Review.order("rating DESC, created_at DESC" )
  end

  # GET /reviews/1 or /reviews/1.json
  def show
  end

  # GET /reviews/new
  def new
    @review = Review.new
  end

  # GET /reviews/1/edit
  def edit
  end

  # POST /reviews or /reviews.json
  def create
    @review = Review.new(show_params)
    @review.user = current_user
    respond_to do |format|
      if @review.save
        format.html { redirect_to @review, notice: "Review was successfully created." }
        format.json { render :review, status: :created, location: @review }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reviews/1 or /reviews/1.json
  def update
    respond_to do |format|
      if @review.update(show_params)
        format.html { redirect_to @review, notice: "Review was successfully updated." }
        format.json { render :review, status: :ok, location: @review }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reviews/1 or /reviews/1.json
  def destroy
    @review.destroy
    respond_to do |format|
      format.html { redirect_to reviews_url, notice: "Review was successfully deleted." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_show
      @review = Review.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def show_params
      params.require(:review).permit(:title, :comment, :rating)
    end
end
