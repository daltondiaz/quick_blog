class CommentsController < ApplicationController
	def create
		@post = Post.find(params[:post_id])
		#@comment = @post.comments.create!(params[:comment])
		@comment = @post.comments.create!(params.require(:comment).permit!) 
		redirect_to @post
	end
end
