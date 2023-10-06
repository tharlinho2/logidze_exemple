class AddressCategoriesController < ApplicationController
  before_action :set_address_category, only: %i[ show edit update destroy ]

  # GET /address_categories or /address_categories.json
  def index
    address_categories = AddressCategory.all.order(created_at: :desc)
    address_categories = address_categories.search(params[:q]) if params[:q].present?

    @pagy, @records = pagy(address_categories, items: 10)
  end

  # GET /address_categories/1 or /address_categories/1.json
  def show
  end

  # GET /address_categories/new
  def new
    @address_category = AddressCategory.new
  end

  # GET /address_categories/1/edit
  def edit
  end

  # POST /address_categories or /address_categories.json
  def create
    @address_category = AddressCategory.new(address_category_params)

    respond_to do |format|
      if @address_category.save
        message = t("global.messages.create.created_m", obj: AddressCategory.model_name.human)
        format.html { redirect_to [:address_categories], notice: message }
        format.json { render :show, status: :created, location: @address_category }
        format.turbo_stream { flash.now.notice = message }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @address_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /address_categories/1 or /address_categories/1.json
  def update
    respond_to do |format|
      if @address_category.update(address_category_params)
        message = t("global.messages.update.updated_m", obj: AddressCategory.model_name.human)
        format.html { redirect_to [:address_categories], notice: message }
        format.json { render :show, status: :ok, location: @address_category }
        format.turbo_stream { flash.now.notice = message }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @address_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /address_categories/1 or /address_categories/1.json
  def destroy
    @address_category.destroy

    respond_to do |format|
      message = t("global.messages.destroy.destroyed_m", obj: AddressCategory.model_name.human)
      format.html { redirect_to [:address_categories], notice: message }
      format.json { head :no_content }
      format.turbo_stream { flash.now.notice = message }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_address_category
      @address_category = AddressCategory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def address_category_params
      params.require(:address_category).permit(:name)
    end
end
