class ApplicationController < ActionController::Base
    def hello
    render html: 'hello world!'
    end
end
class Application_Controller < ActionController::Base
    def hello
        render html: 'hello world'
    end
end
