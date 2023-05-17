class PostsController < ApplicationController
  
  def index
    @posts = Post.all
  end

  def new
    # render posts/new view with new Post form
    @post = Post.new
  end

  def create
    # start with a new Post
    @post = Post.new

    # assign user-entered form data to Post's columns
    @post["title"] = params["post"]["title"]
    @post["description"] = params["post"]["description"]
    
    # save Post row
    @post.save
    
    # redirect user
    redirect_to "/posts"

  end

end
