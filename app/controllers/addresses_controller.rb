class AddressesController < ApplicationController
  before_action :set_address, only: %i[ show edit update destroy ]

  # GET /addresses or /addresses.json
  def index
    address = Address.all.order(created_at: :desc)
    @pagy, @records = pagy(address, items: 10)
  end

  # GET /addresses/1 or /addresses/1.json
  def show
  end

  # GET /addresses/new
  def new
    @address = Address.new
  end

  # GET /addresses/1/edit
  def edit
  end

  # POST /addresses or /addresses.json
  def create
    @address = Address.new(address_params)

    respond_to do |format|
      if @address.save
        message = t("global.messages.create.created_m", obj: Address.model_name.human)
        format.html { redirect_to [:addresses], notice: message }
        format.json { render :show, status: :created, location: @address }
        format.turbo_stream { flash.now.notice = message }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @address.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /addresses/1 or /addresses/1.json
  def update
    respond_to do |format|
      if @address.update(address_params)
        message = t("global.messages.update.updated_m", obj: AddressCategory.model_name.human)
        format.html { redirect_to [:addresses], notice: message }
        format.json { render :show, status: :ok, location: @address }
        format.turbo_stream { flash.now.notice = message }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @address.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /addresses/1 or /addresses/1.json
  def destroy
    @address.destroy

    respond_to do |format|
      message = t("global.messages.destroy.destroyed_m", obj: AddressCategory.model_name.human)
      format.html { redirect_to [:addresses], notice: message }
      format.json { head :no_content }
      format.turbo_stream { flash.now.notice = message }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_address
      @address = Address.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def address_params
      params.require(:address).permit(:name, :state_name, :city_name, :address_line_1, :address_line_2, :district_name, :address_number, :address_type, :address_category_id)
    end
end
