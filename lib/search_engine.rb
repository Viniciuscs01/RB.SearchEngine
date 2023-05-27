require 'tty-prompt'
require_relative 'page'

class SearchEngine
    def initialize
        @pages = []
        @prompt = TTY::Prompt.new
    end

    def add_page(url, content)
        page = Page.new(url, content)
        @pages << page
    end

    def search(query)
        matched_pages = @pages.select { |page| page.matches_query?(query) }

        if matched_pages.empty?
            puts "No results found for '#{query}'"
        else
            puts "Search Results for '#{query}'"
            matched_pages.each { |page| puts "- #{page}" }
        end
    end

    def run
        loop do
            choice = @prompt.select("Choose an option:", ["Add Page", "Search", "Exit"])

            case choice
            when "Add Page"
                url = @prompt.ask("Enter the URL:")
                content = @prompt.multiline("Enter the page content (press CTRL + D to finish)")
                add_page(url, content.join("\n"))
            when "Search"
                query = @prompt.ask("Enter the search query:")
                search(query)
            when "Exit"
                break
            end

            puts '-------------------------------------'
        end
    end
end