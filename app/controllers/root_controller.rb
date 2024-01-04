class RootController < ApplicationController

    # def home
    #     puts "------------------------------------"
    #     puts " home in the server"
    #     render "home"
    # end
    
    # def account
    #     puts "------------------------------------"
    #     puts " account in the server"
    #     render "account"
    # end

  def index
    @posts = TodoApp.all  
    render "index" 
  end 

  def add 
    @post = TodoApp.new
    @post.title = params[:title]
    @post.description = params[:description]
    @post.save
        # @response = {
        #     :status => 200,
        #     :message => "saved successfully"
        # }
    redirect_to :action => "index"
  end

  def update
    @post = TodoApp.find(params[:id])
    @id = params[:id]
    @title = @post.title
    @description = @post.description
    render "todo_update"
  end

  def updateform=
    @post = TodoApp.find(params[:id])
    # @id = params[:id]
    @post.title = params[:title]
    @post.description = params[:description]  
    @post.save
    @posts = TodoApp.all  
    redirect_to :action => "index" 
    end

  def delete
    @post = TodoApp.find(params[:id])
    @post.destroy
    redirect_to :action => "index"
  end

  def search
   @search_input = params[:search_input]
   @posts = TodoApp.where("title LIKE '%#{@search_input}%'")
   render "index"
  end

end
