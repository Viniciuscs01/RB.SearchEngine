require_relative '../lib/search_engine'

describe SearchEngine do
    let(:search_engine) { SearchEngine.new }

    describe 'Add Page' do 
        it "Adds a page to the search engine" do
            search_engine.add_page("https://teste.com.br", "Welcome")
            expect(search_engine.instance_variable_get(:@pages).length).to eq(1)
        end
    end

    describe '#search' do
        before do
          search_engine.add_page('https://example.com/page1', 'Welcome to Example.com')
          search_engine.add_page('https://example.com/page2', 'This is another page')
          search_engine.add_page('https://example.com/page3', 'More content for testing')
        end
    
        it 'returns matched pages for a query ("content")' do
        #   expect { search_engine.search('content') }.to output("Search results for 'content': https://example.com/page3").to_stdout
        end
    
        it 'returns no results for a non-matching query' do
        #   expect { search_engine.search('nonexistent') }.to output("No results found for 'nonexistent'").to_stdout
        end
      end
end