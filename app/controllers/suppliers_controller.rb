class SuppliersController < ApplicationController

  def index
  end

  def show
  end

  def new
    @suppliers = Supplier.new
    @product = Product.all
  end

  def create
    @suppliers =Supplier.new(supplier_params)
    if @suppliers.save
      redirect_to root_path
    else
      redirect_to controller: :suppliers, action: :new
    end
  end

  def edit
  end

  def update
  end

private

def suppliers_params
  params.require(:supplier).permit(:name, :phone_number, :store, :contact_name, :agreement, :agreement_name)
end

end
