class Foobar::Bar < Foobar::Base

  get '/' do
    erb :"bar/index"
  end

end
