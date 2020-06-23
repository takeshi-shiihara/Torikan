class SuppliersController < ApplicationController

  def index
    @suppliers = Supplier.all
    @q = Supplier.ransack(params[:q])
  end

  def show
    @supplier = Supplier.find(params[:id])
    @q = Supplier.ransack(params[:q])
  end

  def new
    @suppliers = Supplier.new
    @products = Product.all
    @q = Supplier.ransack(params[:q])
  end

  def create
    @suppliers =Supplier.new(suppliers_params)
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

  def search
    @q = Supplier.search(search_params)
    @suppliers = @q.result(distinct: true)
  end

private

def suppliers_params
  params.require(:supplier).permit(:name, :phone_number, :store, :contact_name, :agreement, :agreement_name, product_ids: [] )
end

def search_params
  params.require(:q).permit(:name_cont)
end

end
