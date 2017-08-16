class Friend
  def greeting(who = nil)
    if who.nil?
      "Hello!"
    else
      str = "Hello, " + who + "!"
    end
  end
end