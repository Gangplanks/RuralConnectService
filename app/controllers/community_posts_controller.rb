class CommunityPostsController < ApplicationController
  before_action :set_community_post, only: [:show, :edit, :update, :destroy]

  # GET /community_posts
  # GET /community_posts.json
  def index
    @community_posts = CommunityPost.all
  end

  # GET /community_posts/1
  # GET /community_posts/1.json
  def show
  end

  # GET /community_posts/new
  def new
    @community_post = CommunityPost.new
  end

  # GET /community_posts/1/edit
  def edit
  end

  # POST /community_posts
  # POST /community_posts.json
  def create
    @community_post = CommunityPost.new(community_post_params)

    respond_to do |format|
      if @community_post.save
        format.html { redirect_to @community_post, notice: 'Community post was successfully created.' }
        format.json { render :show, status: :created, location: @community_post }
      else
        format.html { render :new }
        format.json { render json: @community_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /community_posts/1
  # PATCH/PUT /community_posts/1.json
  def update
    respond_to do |format|
      if @community_post.update(community_post_params)
        format.html { redirect_to @community_post, notice: 'Community post was successfully updated.' }
        format.json { render :show, status: :ok, location: @community_post }
      else
        format.html { render :edit }
        format.json { render json: @community_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /community_posts/1
  # DELETE /community_posts/1.json
  def destroy
    @community_post.destroy
    respond_to do |format|
      format.html { redirect_to community_posts_url, notice: 'Community post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_community_post
      @community_post = CommunityPost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def community_post_params
      params.require(:community_post).permit(:user_id, :community_id, :type, :content)
    end
end
