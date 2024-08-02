module Jekyll
  class TableHeadersConverter < Converter
    safe true
    priority :low

    def matches(ext)
      ext =~ /^\.md$/i
    end

    def output_ext(ext)
      ".html"
    end

    def convert(content)
      content.gsub!(/<th>/, '<th scope="col">')
    end
  end
end
