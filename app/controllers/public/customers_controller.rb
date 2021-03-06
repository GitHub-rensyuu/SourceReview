class Public::CustomersController < ApplicationController
  before_action :authenticate_customer!, except: [:guest_sign_in]
  before_action :ensure_guest_customer, only: [:edit,:withdraw_confirm]
  before_action :ensure_customer, only: [:edit, :update, :withdraw]

  def index
    @customers = Customer.all.page(params[:page])
    @customer = Customer.new
  end

  def show
    @customer = Customer.find(params[:id])
    @source = Source.new
    
    @following_customers = @customer.following_customers
    @follower_customers = @customer.follower_customers
    @reporting_customers = @customer.reporting_customers
    @reporter_customers = @customer.reporter_customers
    
    if params[:sort_draft]
      unless @customer == current_customer
        redirect_to customer_path(current_customer)
      else
        @sources = Source.where(is_public: false).where(customer_id: @customer.id).page(params[:page])
      end
    elsif params[:sort_post]
      @sources = Source.where(is_public: true).where(customer_id: @customer.id).page(params[:page])
    elsif params[:sort_like]
      customer = Customer.find(params[:id])
      @things = @customer.likes.map{|like| like.source}
      @sources = Kaminari.paginate_array(@things).page(params[:page])
    else
      @sources = Source.where(customer_id: @customer.id).page(params[:page])
    end
  end
  
  def edit
  end

  def update
    if @customer.update(customer_params)
      redirect_to customer_path(current_customer), notice: "会員情報を変更しました"
    else
      render "edit"
    end
  end

  def withdraw
    @customer = Customer.find(params[:id])
    # is_deletedカラムをtrueに変更することにより削除フラグを立てる
    @customer.update(is_deleted: true)
    reset_session
    flash[:notice] = "退会処理を実行いたしました"
    redirect_to root_path
  end

  # フォロー、フォロワー一覧表示
  def follows
    @customer = Customer.find(params[:id])
    @customers = @customer.following_customers.page(params[:page])
  end
  def followers
    @customer = Customer.find(params[:id])
    @customers = @customer.follower_customers.page(params[:page])
  end
  
  private

  def customer_params
    params.require(:customer).permit(:nickname, :birthday, :introduction,:telephone_number, :sex,:email, :is_deleted, :profile_image)
  end

  def ensure_customer
    @customer = Customer.find(params[:id])
    unless @customer == current_customer
      redirect_to customer_path(current_customer)
    end
  end
  
  def ensure_guest_customer
    @customer = Customer.find(params[:id])
    if @customer.nickname == "guestcustomer"
      redirect_to customer_path(current_customer) , notice: 'ゲストユーザーはこの機能を使えません。'
    end
  end
  
end


