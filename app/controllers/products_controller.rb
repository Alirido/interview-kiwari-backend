class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :update, :destroy]

  # GET /
  def home
    render json: {code: "200", msg: "Success", data: {name: "Belanja API Demo", version: "1.0.0"}}, status: :ok
  end

  # GET /products
  def index
    products = Product.all

    render json: {code: "200", msg: "Success", data: products}
  end

  # GET /products/1
  def show
    render json: {code: "200", msg: "Success", data: @product}
  end

  # POST /products
  def create
    @product = Product.new(product_params)

    if @product.save
      render json: {code: "200", msg: "Success", data: @product}, status: :created, location: @product
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /products/1
  def update
    if @product.update(product_params)
      render json: {code: "200", msg: "Success", data: @product}
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end

  # DELETE /products/1
  def destroy
    @product.destroy

    render json: {code: "200", msg: "Success", data: []}
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def product_params
      params.require(:product).permit(:name, :price, :image)
    end
end
