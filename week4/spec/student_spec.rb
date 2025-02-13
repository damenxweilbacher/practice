# require_relative '../advancedRSpec'

# RSpec.describe Library do
#   let(:library) { Library.new("test") }

#   describe '#fetch_books_from_api' do
#     it 'retrieves a book from inventory' do
#       library.fetch_books_from_api = ["1984", "Thomas the train"]
#       allow(library).to receive(:inventory).and_return(["1984", "Thomas the train"])
#       expect(library.inventory).to eq(["1984", "Thomas the train"])
#     end
#   end
# end