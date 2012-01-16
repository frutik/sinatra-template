class Foobar::Foo < Foobar::Base

  get '/' do
    erb :"foo/index"
  end

end
