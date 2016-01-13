class UserSubsController < ApplicationController
  before_action :set_user_sub, only: [:show, :edit, :update, :destroy]

  # GET /user_subs
  # GET /user_subs.json
  def index
    @user_subs = UserSub.all
  end

  # GET /user_subs/1
  # GET /user_subs/1.json
  def show
  end

  # GET /user_subs/new
  def new
    @user_sub = UserSub.new
  end

  # GET /user_subs/1/edit
  def edit
  end

  # POST /user_subs
  # POST /user_subs.json
  def create
    @user_sub = UserSub.new(user_sub_params)

    respond_to do |format|
      if @user_sub.save
        format.html { redirect_to @user_sub, notice: 'User sub was successfully created.' }
        format.json { render :show, status: :created, location: @user_sub }
      else
        format.html { render :new }
        format.json { render json: @user_sub.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_subs/1
  # PATCH/PUT /user_subs/1.json
  def update
    respond_to do |format|
      if @user_sub.update(user_sub_params)
        format.html { redirect_to @user_sub, notice: 'User sub was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_sub }
      else
        format.html { render :edit }
        format.json { render json: @user_sub.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_subs/1
  # DELETE /user_subs/1.json
  def destroy
    @user_sub.destroy
    respond_to do |format|
      format.html { redirect_to user_subs_url, notice: 'User sub was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_sub
      @user_sub = UserSub.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_sub_params
      params.require(:user_sub).permit(:user_id, :subscription_id, :moderator)
    end
end
