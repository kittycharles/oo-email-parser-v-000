# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require "pry"
class EmailParser
 attr_accessor :emails

 def initialize(emails)
   @emails = emails
 end

 def parse
    emails.split.collect { |address| address.split(',')}.flatten.uniq
  end
end

richard_email = EmailParser.new("richard@richard.com," "z@z.com," "cat@kitty.com")
puts 
binding.pry
richard_email.parse

