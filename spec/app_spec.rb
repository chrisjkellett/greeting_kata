require './app'

describe App do
  it "can greet one person" do
    app = App.new
    result = app.greet("bob")
    expect(result).to eq "hello bob"
  end

  it "can greet with a default value" do
    app = App.new
    result = app.greet()
    expect(result).to eq "hello my friend"
  end

  it "can handle shouting" do
    app = App.new
    result = app.greet("JERRY")
    expect(result).to eq "HELLO JERRY!"
  end

  it "can handle 2 names" do
    app = App.new
    result = app.greet(["Jill", "Jane"])
    expect(result).to eq "hello Jill and Jane"
  end

  it "can handle 3 names" do
    app = App.new
    result = app.greet(["Jill", "Jane", "James"])
    expect(result).to eq "Hello Jill, Jane and James"
  end


end

