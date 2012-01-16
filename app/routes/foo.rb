module Foobar
  class Foo < Foobar::Base
    
    get '/' do
      erb :"index"
    end

  end
end