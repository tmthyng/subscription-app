class SubscriptionsController < ApplicationController
  def home
    @subscriptions = Subscription.all
  end

  def show
    @subscription = Subscription.find(params[:id])
  end

  def new
    @subscription = Subscription.new
  end

  def create
    @subscription = Subscription.new(subscription_params)

    if @subscription.save
      redirect_to @subscription
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @subscription = Subscription.find(params[:id])
  end

  def update
    @subscription = Subscription.find(params[:id])

    if @subscription.update(subscription_params)
      redirect_to @subscription
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @subscription = Subscription.find(params[:id])
    @subscription.destroy

    redirect_to root_path, status: :see_other
  end

  private
    def subscription_params
      params.require(:subscription).permit(:name, :cost, :renewal_date)
    end
end
