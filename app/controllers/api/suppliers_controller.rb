class Api::SuppliersController < ApplicationController
  def index
    @suppliers = Supplier.all
    # if params[:search]

    # end
    render "supplier_index.json.jb"
  end

  def show
    # item = params[:item_select]
    @supplier = Supplier.find(params[:id])
    render "supplier_show.json.jb"
  end

  def create
    @supplier = Supplier.new(
      name: params[:name],
      email: params[:email],
      phone_number: params[:phone_number],
    )
    if @supplier.save
      render "supplier_show.json.jb"
    else
      render json: { errors: @supplier.errors.full_messages }, status: 406
    end
  end

  def update
    id = params[:id]
    @supplier = Supplier.find(id)

    (@supplier.name = params[:name] || @supplier.name
      @supplier.email = params[:email] || @supplier.email
      @supplier.phone_number = params[:phone_number] || @supplier.phone_number)
    if @supplier.save
      render "supplier_show.json.jb"
    else
      render json: { errors: @supplier.errors.full_messages }, status: 406
    end
  end

  def destroy
    id = params[:id]
    @supplier = Supplier.find(id)
    @supplier.delete
    render json: { message: "supplier deleted" }
  end
end
