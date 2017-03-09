class CommentsController < ApplicationController



  def new
    @product = Product.find(params[:product_id])
    @comment = Comment.new
  end

  def create
    @product = Product.find(params[:product_id])
    @comment = Comment.new(comment_params)
    @comment.user = current_user
    @comment.product = @product 
    if @comment.save
      redirect_to product_path(@product)
    else
      render :new
    end
  end


  private
  def comment_params
    params.require(:comment).permit(:content)

  end
end