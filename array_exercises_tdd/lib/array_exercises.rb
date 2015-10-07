class Array
  def my_uniq
    self.each_with_object([]) do | el, uniq |
      uniq << el unless uniq.count(el) > 0
    end
  end



end
