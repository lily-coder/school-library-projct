class Corrector
  def correct_name(name)
    name.capitalize!
    if name.length > 10
      name[0, 10]
    else
      name
    end
  end
end
