require_relative '../review'

RSpec.describe Book do
  let(:book) {Book.new("Harry Potter and the Chamber of Secrets", "J.K. Rowling", 251)}
  describe '#initialize' do
    it 'initializes the title, author, total pages, and pages read of the specific book' do
      expect(book.title).to eq("Harry Potter and the Chamber of Secrets")
      expect(book.author).to eq("J.K. Rowling")
      expect(book.pages).to eq(251)
    end
  end
  # describe 'book_info' do
  #   it 'desribes the book title, author, and total pages' do
  #     expect(book.book_info).to eq(“Harry Potter and the Chamber of Secrets by J.K. Rowling. 251 total pages.“)
  #   end
  # end
  # describe 'pages_read' do
  #   it 'congratulates the reader on completing the number of pages read out of the total pages in the book' do
  #     expect(book.pages_read).to eq(“Congratulations on reading 12 of pages out of 251 total”)
  #   end
  # end
  # describe '#assigned_reading' do
  #   it 'ensures reader read a minimum number of pages' do
  #     expect(book.number).to be > 50 #72
  #     # 1) Book#assigned_reading ensures reader read a minimum number of pages
  #     # Failure/Error: expect(book.number).to be > 50 #72
  #     #   expected: > 50
  #     #        got:   12
  #   end
  # end
end