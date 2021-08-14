class SayController < ApplicationController
    def hello_dojo
        
    end
    
    def hello
       
    end
    
    def hello_joe
        
    end
    
    
    def hello_michael
        redirect_to "/say/hello_joe"
    end
end
