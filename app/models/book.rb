class Book < ApplicationRecord
    has_attached_file :image, :styles => {:medium => "300x300>", :thumb => "100x100>"}
    validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
    
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
