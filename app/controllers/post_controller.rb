class PostController < ApplicationController
  def index
	@posts = Post.all
  end
  
  def show
	@post = Post.find(params[:id])
  end
  
  def new
	@post = Post.new
  end
  
  def create
	@post = Post.new(params[:post])
	
	if @post.save
		redirect_to :action => 'index', :notice => "your post was saved"
	else
		render "new"
	end
  end
  
  def edit
	@post = Post.find(params[:id])
  end
  
  def update
	@post = Post.find(params[:id])
	
	if @post.update_attributes!(params[:post])
		redirect_to :action => 'index', :notice => "your post was updated"
	else
		render "new"
	end
  end
  
  def destroy
	@post = Post.find(params[:id])
	
	if @post.destroy
		redirect_to :action => 'index', :notice => "your post was deleted"
	else
		render "new"
	end
  end

end
