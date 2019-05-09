class App
  
  def greet(name="my friend")
    if name.class == String
      process_string(name)
    else
      process_array(name)
    end
  end

  def process_string(name)
    if name == name.upcase
      "HELLO " + name + "!"
    else
      "hello " + name
    end
  end

  def process_array(names)
    if names.length == 2
      "hello " + names.join(" and ")
    else
      str = ""
      names.each {|name, i| 
        print i
        str += name + ", "
      }
      return "Hello " + str
    end
  end

end