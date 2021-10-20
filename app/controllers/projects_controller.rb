class ProjectsController < ApplicationController
    def signup
    end
    def login
    end
    def signpage
    end
    def signpage_new
       if params!=nil
        (@creates=Create.new(username:params[:username],password:params[:password],email:params[:email]))
       end
        if @creates.save
          #@create=Create.find_by(params[:username])
          @authentication="successfully created account"
          render :authentication
        else
          @authentication="failed"
          render :authentication
       end
    end
    def loginpage
    end
    def loginpage_new
        @status=false
        if params!=nil
            if((params[:username]!=nil) && (params[:password]!=nil) && (params[:email]!=nil))
                @creates=Create.where(username:params[:username],email:params[:email])
                @creates.each do |f|
                    if((f.username==params[:username]) && (f.password==params[:password]) && (f.email==params[:email]))
                        @status=true
                    end
                end
            end
        end
        if status==true
            @authentication="login success"
            render :authentication
        else
            @authentication="login failed"
            render :authentication
        end
    end
    
end