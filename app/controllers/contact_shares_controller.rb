class ContactSharesController < ApplicationController

  def index
    render json: ContactShare.all
  end

  def create
    contact_share = ContactShare.new(contact_share_params)
  
    if contact_share.save!
       render json: contact
    else
      render json: contact_share.error.full_messages, status: :unprocessable_entity
    end
  end

  def show
    render json: ContactShare.find(params[:id])
  end

  def update
    contact_share = ContactShare.find(params[:id])
  
    if contact_share.update(contact_share_params)
       render json: contact
    else
       render json: contact_share.error.full_messages, status: :unprocessable_entity
    end
  end

  def destroy
    contact_share = ContactShare.find(params[:id])  

    contact_share.destroy!
    render json: contact_share
  end

  private
  def contact_share_params
    params.require(:contact_share).permit(:contact_id, :user_id)
  end
  
  
end
