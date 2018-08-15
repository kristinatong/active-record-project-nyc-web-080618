class User < ActiveRecord::Base
  has_many :bookusers
  has_many :books, through: :bookusers

  def check_out_book(book,due_date:)

    Bookuser.create({user_id:self.id,
      book_id: book.id,
      returned: false})
  #  the_doctor.check_out_book(book, due_date: "September 1st, 2016")
  end

  def return_book(book)
    bookuser = Bookuser.find_by(book_id: book.id)
    bookuser.update(returned:true)
  end
end
