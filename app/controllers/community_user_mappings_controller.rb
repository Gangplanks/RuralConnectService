class CommunityUserMappingsController < ApplicationController
  before_action :set_community_user_mapping, only: [:show, :edit, :update, :destroy]

  # GET /community_user_mappings
  # GET /community_user_mappings.json
  def index
    @community_user_mappings = CommunityUserMapping.all
  end

  # GET /community_user_mappings/1
  # GET /community_user_mappings/1.json
  def show
  end

  # GET /community_user_mappings/new
  def new
    @community_user_mapping = CommunityUserMapping.new
  end

  # GET /community_user_mappings/1/edit
  def edit
  end

  # POST /community_user_mappings
  # POST /community_user_mappings.json
  def create
    @community_user_mapping = CommunityUserMapping.new(community_user_mapping_params)

    respond_to do |format|
      if @community_user_mapping.save
        format.html { redirect_to @community_user_mapping, notice: 'Community user mapping was successfully created.' }
        format.json { render :show, status: :created, location: @community_user_mapping }
      else
        format.html { render :new }
        format.json { render json: @community_user_mapping.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /community_user_mappings/1
  # PATCH/PUT /community_user_mappings/1.json
  def update
    respond_to do |format|
      if @community_user_mapping.update(community_user_mapping_params)
        format.html { redirect_to @community_user_mapping, notice: 'Community user mapping was successfully updated.' }
        format.json { render :show, status: :ok, location: @community_user_mapping }
      else
        format.html { render :edit }
        format.json { render json: @community_user_mapping.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /community_user_mappings/1
  # DELETE /community_user_mappings/1.json
  def destroy
    @community_user_mapping.destroy
    respond_to do |format|
      format.html { redirect_to community_user_mappings_url, notice: 'Community user mapping was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_community_user_mapping
      @community_user_mapping = CommunityUserMapping.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def community_user_mapping_params
      params.require(:community_user_mapping).permit(:userId, :communityId)
    end
end
