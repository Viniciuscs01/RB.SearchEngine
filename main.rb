require_relative 'lib/search_engine'

search_engine = SearchEngine.new

# Add some sample pages
search_engine.add_page('https://example.com/page1', 'Welcome to Example.com')
search_engine.add_page('https://example.com/page2', 'This is another page')
search_engine.add_page('https://example.com/page3', 'More content for testing')

search_engine.run