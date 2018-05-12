class Book < ApplicationRecord
    has_attached_file :image, :styles => {:medium => "300x300>", :thumb => "100x100>"}
    validates :tittle, presence: { message: "Tytuł ksiązki jest wymagany." }
    validates :category, presence: { message: "Kategoria ksiązki jest wymagana." }
    validates_attachment_content_type :image, content_type: /\A(image\/.(jpg|png))\Z/, message: "Format pliku jest nieprawidłowy. Poprawny format to jpeg i png"
    validates_attachment_size :image, less_than: 3.megabyte, message: "Przesyłany plik jest za duży, nie może być większy niż 3 megabajty (3MB)."
    validates_attachment_size :image, greater_than: 50.kilobyte, message: "Przesyłany plik jest za mały, nie może być mniejszy niż 50 kB. Za mały rozmiar obrazu powoduje, że jest on nieczytelny."
    
    def borrow by_user
        self.is_borrowed = true
        self.borrow_by_id = by_user.id
        self.save!
    end

    def return_book
        self.is_borrowed = false
        self.borrow_by_id = nil
        self.save!
    end

end
