class Backoffice::AvatarsController < ApplicationController
  before_action :set_avatar, only: %i[ show edit update destroy ]

  # GET /avatars or /avatars.json
  def index
    if params[:search]
      @avatars = Avatar.where('lower(name) LIKE ?', "%#{params[:search]}%".downcase)
    else
      @avatars = Avatar.all
    end
  end

  # GET /avatars/1 or /avatars/1.json
  def show
  end

  # GET /avatars/new
  def new
    @avatar = Avatar.new
  end

  # GET /avatars/1/edit
  def edit
  end

  # POST /avatars or /avatars.json
  def create
    @avatar = Avatar.new(avatar_params)

    respond_to do |format|
      if @avatar.save
        format.html { redirect_to backoffice_avatar_url(@avatar), notice: "Avatar was successfully created." }
        format.json { render :show, status: :created, location: @avatar }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @avatar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /avatars/1 or /avatars/1.json
  def update
    respond_to do |format|
      if @avatar.update(avatar_params)
        format.html { redirect_to backoffice_avatar_url(@avatar), notice: "Avatar was successfully updated." }
        format.json { render :show, status: :ok, location: @avatar }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @avatar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /avatars/1 or /avatars/1.json
  def destroy
    @avatar.destroy

    respond_to do |format|
      format.html { redirect_to backoffice_avatars_url, notice: "Avatar was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def ranking
    @avatars = Avatar.all.order(ki: :desc)
  end

  def export_to_csv
    respond_to do |format|
      format.csv { send_data Avatar.export_to_csv, filename: "Personagens.csv" }
    end
  end 

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_avatar
      @avatar = Avatar.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def avatar_params
      params.require(:avatar).permit(:name, :ki, :description, :gender, :weight, :date_of_birth, :status, :user_admin_id, :race_id, :affiliation_id, :image)
    end
end
