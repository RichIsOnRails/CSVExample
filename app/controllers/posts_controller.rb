class PostsController < ApplicationController
  def index
  	@posts = Post.order(:created_at)

  	respond_to do |format|
  		format.html
  		format.csv { send_data @posts.as_csv }
  	end
  end
end
