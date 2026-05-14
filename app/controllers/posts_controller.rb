class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  # def show
  # end

  def create
    @post = current_user.posts.build(post_params)
    if @post.save!
      redirect_to root_path, notice: "Post was successfully created ~"
    else
      render :new, status: :unprocessable_entity
    end
  end

  # def edit
  # end

  # def update
  #   if @post.update(post_params)
  #     redirect_to @product
  #   else
  #     render :edit, status: :unprocessable_entity
  #   end
  # end

  # def destroy
  #   @post.destroy
  #   redirect_to posts_path
  # end

  private
    def post_params
      params.expect(post: [ :title, :body ])
    end
end
