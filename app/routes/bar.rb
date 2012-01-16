module Foobar
  class Bar < Foobar::Base
    configure do
      set :views, "./app/views/bar"
    end
    
    get '/' do
      erb :"index"
    end

  end
end