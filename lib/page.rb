class Page
    attr_reader :url, :content

    def initialize(url, content)
        @url = url
        @content = content
    end

    def matches_query?(query)
        @content.include?(query)
    end

    def to_s
        @url
    end
end