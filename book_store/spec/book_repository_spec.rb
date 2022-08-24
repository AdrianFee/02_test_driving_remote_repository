require 'book_repository'

RSpec.describe BookRepository do 
    def reset_books_table
        seed_sql = File.read('spec/seeds.sql')
        connection = PG.connect({ host: '127.0.0.1', dbname: 'book_store_test' })
        connection.exec(seed_sql)
    end
      
        before(:each) do 
          reset_books_table
        end

    it 'returns the total number of books in the repository' do 
        repo = BookRepository.new
        books = repo.all 
        expect(books.length).to eq 2
    end 

    it 'returns the id of the first book' do 
        repo = BookRepository.new
        books = repo.all 
        expect(books.first.id).to eq '1'
    end 

    it 'returns the title of the first book' do 
        repo = BookRepository.new
        books = repo.all 
        expect(books.first.title).to eq 'Nineteen forty three'
    end 

    it 'returns the author of the first book' do 
        repo = BookRepository.new
        books = repo.all 
        expect(books.first.author_name).to eq 'Stephen Queen'
    end 

    it 'returns the title of the second book' do 
        repo = BookRepository.new
        books = repo.all 
        expect(books[1].title).to eq 'Matilda'
    end 
end 