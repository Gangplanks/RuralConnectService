class UserSchemeFavoritesController < ApplicationController
  before_action :set_user_scheme_favorite, only: [:show, :edit, :update, :destroy]

  # GET /user_scheme_favorites
  # GET /user_scheme_favorites.json
  def index
    @user_scheme_favorites = UserSchemeFavorite.all
  end

  # GET /user_scheme_favorites/1
  # GET /user_scheme_favorites/1.json
  def show
  end

  # GET /user_scheme_favorites/new
  def new
    @user_scheme_favorite = UserSchemeFavorite.new
  end

  # GET /user_scheme_favorites/1/edit
  def edit
  end

  # POST /user_scheme_favorites
  # POST /user_scheme_favorites.json
  def create
    @user_scheme_favorite = UserSchemeFavorite.new(user_scheme_favorite_params)

    respond_to do |format|
      if @user_scheme_favorite.save
        format.html { redirect_to @user_scheme_favorite, notice: 'User scheme favorite was successfully created.' }
        format.json { render :show, status: :created, location: @user_scheme_favorite }
      else
        format.html { render :new }
        format.json { render json: @user_scheme_favorite.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_scheme_favorites/1
  # PATCH/PUT /user_scheme_favorites/1.json
  def update
    respond_to do |format|
      if @user_scheme_favorite.update(user_scheme_favorite_params)
        format.html { redirect_to @user_scheme_favorite, notice: 'User scheme favorite was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_scheme_favorite }
      else
        format.html { render :edit }
        format.json { render json: @user_scheme_favorite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_scheme_favorites/1
  # DELETE /user_scheme_favorites/1.json
  def destroy
    @user_scheme_favorite.destroy
    respond_to do |format|
      format.html { redirect_to user_scheme_favorites_url, notice: 'User scheme favorite was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_scheme_favorite
      @user_scheme_favorite = UserSchemeFavorite.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_scheme_favorite_params
      params.require(:user_scheme_favorite).permit(:user_id, :scheme_id)
    end
end
