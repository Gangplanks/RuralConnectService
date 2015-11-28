class CommunityQuestionsController < ApplicationController
  before_action :set_community_question, only: [:show, :edit, :update, :destroy]

  # GET /community_questions
  # GET /community_questions.json
  def index
    @community_questions = CommunityQuestion.all
  end

  # GET /community_questions/1
  # GET /community_questions/1.json
  def show
  end

  # GET /community_questions/new
  def new
    @community_question = CommunityQuestion.new
  end

  # GET /community_questions/1/edit
  def edit
  end

  # POST /community_questions
  # POST /community_questions.json
  def create
    @community_question = CommunityQuestion.new(community_question_params)

    respond_to do |format|
      if @community_question.save
        format.html { redirect_to @community_question, notice: 'Community question was successfully created.' }
        format.json { render :show, status: :created, location: @community_question }
      else
        format.html { render :new }
        format.json { render json: @community_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /community_questions/1
  # PATCH/PUT /community_questions/1.json
  def update
    respond_to do |format|
      if @community_question.update(community_question_params)
        format.html { redirect_to @community_question, notice: 'Community question was successfully updated.' }
        format.json { render :show, status: :ok, location: @community_question }
      else
        format.html { render :edit }
        format.json { render json: @community_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /community_questions/1
  # DELETE /community_questions/1.json
  def destroy
    @community_question.destroy
    respond_to do |format|
      format.html { redirect_to community_questions_url, notice: 'Community question was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_community_question
      @community_question = CommunityQuestion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def community_question_params
      params.require(:community_question).permit(:userId, :communityId, :question)
    end
end
