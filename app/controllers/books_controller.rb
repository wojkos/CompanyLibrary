class BooksController < ApplicationController
  include ApplicationHelper 
  before_action :set_book, only: [:show, :edit, :update, :destroy, :borrow, :return_book]
  before_action :authenticate_user, only: [:new, :edit, :update, :destroy, :borrow, :return_book]

  # GET /books
  # GET /books.json
  def index
    @books = Book.all
  end

  # GET /books/1
  # GET /books/1.json
  def show
  end

  # GET /books/new
  def new
    @book = Book.new
  end

  # GET /books/1/edit
  def edit
  end

  # POST /books
  # POST /books.json
  def create
    @book = Book.new(book_params)

    respond_to do |format|
      if @book.save
        format.html { redirect_to @book, notice: 'Dodałeś nową książkę' }
        format.json { render :show, status: :created, location: @book }
      else
        format.html { render :new }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /books/1
  # PATCH/PUT /books/1.json
  def update
    respond_to do |format|
      if @book.update(book_params)
        format.html { redirect_to @book, notice: 'Zmieniłeś informację o książce' }
        format.json { render :show, status: :ok, location: @book }
      else
        format.html { render :edit }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /books/1
  # DELETE /books/1.json
  def destroy
    @book.destroy
    redirect_to books_url, notice: 'Książka została usunięta.'
  end

  def borrow 
    @book.borrow current_user
    redirect_to books_url, notice: "Gratulacje! Wypożyczyłeś książkę #{@book.tittle}"
  end
  
  def return_book
    @book.return_book
    redirect_to books_url , notice: "Oddałeś książkę #{@book.tittle}"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = Book.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def book_params
      params.require(:book).permit(:tittle, :author, :category, :image, :is_borrowed, :borrow_by_id)
    end
end
