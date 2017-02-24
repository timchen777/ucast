class EmailusersController < ApplicationController
  before_action :set_emailuser, only: [:show, :edit, :update, :destroy]

  # GET /emailusers
  # GET /emailusers.json
  def index
    @emailusers = Emailuser.all
  end

  # GET /emailusers/1
  # GET /emailusers/1.json
  def show
  end

  # GET /emailusers/new
  def new
    @emailuser = Emailuser.new
  end

  # GET /emailusers/1/edit
  def edit
  end

  # POST /emailusers
  # POST /emailusers.json
  def create
    @emailuser = Emailuser.new(emailuser_params)

    respond_to do |format|
      if @emailuser.save
        # Tell the UserMailer to send a welcome email after save
        Usermailer.welcome_email(@user).deliver_later        
        
        format.html { redirect_to @emailuser, notice: 'Emailuser was successfully created.' }
        format.json { render :show, status: :created, location: @emailuser }
        # Usermailer.signup_confirmation(@user).deliver
        # redirect_to @user, notice: "Signed up successfully."
      else
        format.html { render :new }
        format.json { render json: @emailuser.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /emailusers/1
  # PATCH/PUT /emailusers/1.json
  def update
    respond_to do |format|
      if @emailuser.update(emailuser_params)
        format.html { redirect_to @emailuser, notice: 'Emailuser was successfully updated.' }
        format.json { render :show, status: :ok, location: @emailuser }
      else
        format.html { render :edit }
        format.json { render json: @emailuser.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /emailusers/1
  # DELETE /emailusers/1.json
  def destroy
    @emailuser.destroy
    respond_to do |format|
      format.html { redirect_to emailusers_url, notice: 'Emailuser was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_emailuser
      @emailuser = Emailuser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def emailuser_params
      params.require(:emailuser).permit(:name, :email, :login)
    end
end
