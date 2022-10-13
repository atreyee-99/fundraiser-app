class BasicDetailsController < ApplicationController
  # before_action :login_require
  def index
    @basic_details = BasicDetail.all        
  end

  def show
    @basic_detail = BasicDetail.find(params[:id])
  end

  def new
    @basic_detail = BasicDetail.new
  end

  def edit
    @basic_details = BasicDetail.find(params[:id])
  end

  # def update
  #   basic_details = BasicDetail.find(params[:id])
  #   basic_details.update(basic_detail_params)
  #     respond_to do |format|
  #       format.html { redirect_to order_statuses_url, notice: "orderstatus was successfully updated." }  
  #     end  
  # end
  
  def create
    basic_details  = BasicDetail.new(basic_detail_params)
    # basic_details.user_id = session[:user_id]
    # user = User.where(id: session[:user_id]).first
    # basic_details.email = user.email
    # basic_details.name = user.name
    basic_details .save
        respond_to do |format|
          format.html { redirect_to new_beneficiary_detail_path, notice: "basic details was successfully saved." }  
       end  
  end
  # def destroy
  #   basic_details  = BasicDetail.find(params[:id])
  #   basic_details.destroy
  #       respond_to do |format|
  #         format.html { redirect_to order_statuses_url, notice: "Orderstatus  are removed." }  
  #      end
  # end

  private

    def basic_detail_params
      params.require(:basic_details).permit(:name, :email, :purpose_of_fundraiser, :type_of_fundraiser, :mobile_number, :user_id)
    end
end
