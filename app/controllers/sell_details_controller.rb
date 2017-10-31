class SellDetailsController < ApplicationController
  before_action :set_sell_detail, only: [:show, :edit, :update, :destroy]

  # GET /sell_details
  # GET /sell_details.json
  def index
    @sell_details = SellDetail.all
  end

  # GET /sell_details/1
  # GET /sell_details/1.json
  def show
  end

  # GET /sell_details/new
  def new
    @sell_detail = SellDetail.new
  end

  # GET /sell_details/1/edit
  def edit
  end

  # POST /sell_details
  # POST /sell_details.json
  def create
    @sell_detail = SellDetail.new(sell_detail_params)

    respond_to do |format|
      if @sell_detail.save
        format.html { redirect_to @sell_detail, notice: 'Sell detail was successfully created.' }
        format.json { render :show, status: :created, location: @sell_detail }
      else
        format.html { render :new }
        format.json { render json: @sell_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sell_details/1
  # PATCH/PUT /sell_details/1.json
  def update
    respond_to do |format|
      if @sell_detail.update(sell_detail_params)
        format.html { redirect_to @sell_detail, notice: 'Sell detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @sell_detail }
      else
        format.html { render :edit }
        format.json { render json: @sell_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sell_details/1
  # DELETE /sell_details/1.json
  def destroy
    @sell_detail.destroy
    respond_to do |format|
      format.html { redirect_to sell_details_url, notice: 'Sell detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sell_detail
      @sell_detail = SellDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sell_detail_params
      params.require(:sell_detail).permit(:product_id, :sell_id, :cant)
    end
end
