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
		flash[:notice] = 'Tip was successfully saved.'
		redirect_to :action => 'index'
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
		flash[:notice] = 'Tip was successfully updated.'
		redirect_to :action => 'index'
	else
		render "new"
	end
  end
  
  def destroy
	@post = Post.find(params[:id])
	
	if @post.destroy
		flash[:notice] = 'Tip was successfully deleted.'
		redirect_to :action => 'index'
	else
		render "new"
	end
  end

end
