class ContactsController < ApplicationController
  before_action :set_contact, only: %i[ show edit update destroy ]

  # GET /contacts or /contacts.json
  def index
    @contacts = Contact.all
  end

  # GET /contacts/1 or /contacts/1.json
  def show
    @users = User.all;
  end

  # GET /contacts/new
  def new
    @contact = Contact.new
  end

  # GET /contacts/1/edit
  def edit
  end

  # POST /contacts or /contacts.json
  def create
    @user_associated = User.find_by_name(params[:contact][:user_name])
    @email = params[:contact][:email]
    @cellphone = params[:contact][:cellphone]
    @contact = Contact.new()
    @contact.email = @email
    @contact.cellphone = @cellphone
    @contact.user = @user_associated

    print('-------------- \n')
    print(params)
    print('-------------- \n')

    respond_to do |format|
      if @contact.save
        format.html { redirect_to contact_url(@contact), notice: "Contato criado com sucesso." }
        format.json { render :show, status: :created, location: @contact }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contacts/1 or /contacts/1.json
  def update

    respond_to do |format|
      params[:contact][:user_id] = User.find_by_name(params[:contact][:user_name]).id
      params[:contact] = params[:contact].except(:user_name)

      if @contact.update(contact_params)
        format.html { redirect_to contact_url(@contact), notice: "Contato editado com sucesso." }
        format.json { render :show, status: :ok, location: @contact }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contacts/1 or /contacts/1.json
  def destroy
    @contact.destroy

    respond_to do |format|
      format.html { redirect_to contacts_url, notice: "Contact was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact
      @contact = Contact.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def contact_params
      params.require(:contact).permit(:email, :cellphone, :user_id, :user_name)
    end
end
