module Foobar
  class Foo < Foobar::Base
    configure do
      set :views, "./app/views/foo"
    end
    
    get '/' do
      erb :"index"
    end

  end
end