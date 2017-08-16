def measure(arg=1)
  time = Time.now
  for arg in 1..arg do yield if block_given?
  end
  time -= Time.now
  time = (time ** 2) ** 0.5 / arg
end
