class Book
  def initialize(title)
    @title = title
  end
  def title
    self.title.capitalize!
  end
end