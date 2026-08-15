class Book
  @@count = 0
  attr_reader :title
  def initialize(title)
    @title = title
    @@count += 1
  end

  def describe
    "Book: #{@title}"
  end

  def self.count
    @@count
  end

end
#inheritance
class Ebook < Book
  def initialize(title, size_mb)
    super(title)
    @size_mb = size_mb
  end

  def describe
    super + " #{@size_mb}MB"
  end

end



b = Book.new("Ruby")
puts b.describe

Book.new("Rails")
puts Book.count

puts Ebook.new("Ruby", 5).describe

ebook = Ebook.new("Rails", 2)
puts ebook.describe
puts ebook.title

#module :container that can't be initiate
module Describable
  def describe
    "#{self.class.name}: #{name}"
  end
end

class Animal
  include Describable
  attr_reader :name
  def initialize(name) = @name = name
end

puts Animal.new("Dog").describe

#encapsulation
class User
  def initialize(n) = @name = n
  
  def greet = "hi #{cleaned}"

  private 
  def cleaned = @name.strip
end

u = User.new(" ann")
puts u.greet

# puts u.cleaned #cleaned is private, can't be called outside class

puts "==========================="
#polymorphism
class Circle
  def initialize(r) = @r = r
  def area = 3.14* @r * @r
end

class Square
  def initialize(s) = @s = s
  def area = @s * @s
end

def total_area(shapes)
  shapes.sum(&:area)
end

puts total_area([Circle.new(2), Square.new(3)])

puts "==========================="
#Enumerable
class Shelf
  include Enumerable
  def initialize(books) = @books = books
  
  def each(&block)
    @books.each(&block)
  end
end


shelf = Shelf.new(["Ruby", "Rails", "Go", "Next.JS"])

puts shelf.map(&:upcase)

puts shelf.select { |t| t.start_with?("R")}

puts "==========================="
#struct & openStruct
Point = Struct.new(:x, :y) do
  def distance
    Math.sqrt(x**2 + y**2)
  end
end

p = Point.new(3, 4)
puts p.x
puts p.distance


