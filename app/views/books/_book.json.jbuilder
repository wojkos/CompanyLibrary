json.extract! book, :id, :tittle, :author, :category, :image_url, :is_borrowed, :created_at, :updated_at
json.url book_url(book, format: :json)
