class BooksController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @books = Book.all

    render json: @books
  end

  def show
    @book = Book.find(params[:id])

    render json: @book
  end

  def create
    @book = Book.new(permitted_params)

    if @book.save
      render json: { success: true }, status: :created
    else
      render json: {}, status: :bad_request
    end
  end

  private

  def permitted_params
    params.require(:book).permit(:title, :author, :library_id)
  end
end
