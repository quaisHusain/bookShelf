json.extract! book, :id, :title, :author, :ISBN, :description, :Language, :cover_image, :created_at, :updated_at
json.url book_url(book, format: :json)
