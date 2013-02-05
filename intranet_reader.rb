require 'rss'
require 'open-uri'
# require 'debugger'

class IntranetReader
  attr_accessor :feed_url

  def initialize(url)
    @feed_url = url
  end

  def process
    @raw = open(@feed_url).read
    @rss = RSS::Parser.parse @raw
  end

  def entries
    @rss.items if @rss
  end

  def empty?
    @rss.nil? ? true : @rss.items.empty?
  end

  def raw
    @raw
  end
end

@my_rss = IntranetReader.new('http://www.ruby-lang.org/en/feeds/news.rss')
# debugger
@my_rss.process
puts @my_rss.entries