class SellPricesController < ApplicationController
  before_action :set_sell_price, only: [:show, :edit, :update, :destroy]

  # GET /sell_prices
  # GET /sell_prices.json
  def index
    @sell_prices = SellPrice.all
  end

  # GET /sell_prices/1
  # GET /sell_prices/1.json
  def show
  end

  # GET /sell_prices/new
  def new
    @sell_price = SellPrice.new
  end

  # GET /sell_prices/1/edit
  def edit
  end

  # POST /sell_prices
  # POST /sell_prices.json
  def create
    @sell_price = SellPrice.new(sell_price_params)

    respond_to do |format|
      if @sell_price.save
        format.html { redirect_to @sell_price, notice: 'Sell price was successfully created.' }
        format.json { render :show, status: :created, location: @sell_price }
      else
        format.html { render :new }
        format.json { render json: @sell_price.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sell_prices/1
  # PATCH/PUT /sell_prices/1.json
  def update
    respond_to do |format|
      if @sell_price.update(sell_price_params)
        format.html { redirect_to @sell_price, notice: 'Sell price was successfully updated.' }
        format.json { render :show, status: :ok, location: @sell_price }
      else
        format.html { render :edit }
        format.json { render json: @sell_price.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sell_prices/1
  # DELETE /sell_prices/1.json
  def destroy
    @sell_price.destroy
    respond_to do |format|
      format.html { redirect_to sell_prices_url, notice: 'Sell price was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sell_price
      @sell_price = SellPrice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sell_price_params
      params.require(:sell_price).permit(:price, :total, :cant)
    end
end
