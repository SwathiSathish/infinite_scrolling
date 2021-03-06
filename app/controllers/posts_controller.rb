class PostsController < ApplicationController
  def index
  	@posts = Post.paginate(page: params[:page], per_page: 5)
  	respond_to do |format|
  		format.html
  		format.js
		end
  end

  def show 
  	@post  = Post.find(params[:id])
  end
end
