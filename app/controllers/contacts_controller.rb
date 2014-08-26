class ContactsController < ApplicationController

  def index
    render json: 
    
    sql_query = <<-SQL
    SELECT
      contacts.*
    FROM
      contacts
    LEFT OUTER JOIN
      contact_shares ON contact_shares.user_id = ?
    WHERE
      contacts.user_id = ?
    OR
      contact_shares.user_id = ?
    SQL
    
    
    DBController.execute(sql_query, 
    
  end

  def create
    contact = Contact.new(contact_params)
  
    if contact.save
       render json: contact
    else
      render json: contact.error.full_messages, status: :unprocessable_entity
    end
  end

  def show
    render json: Contact.find(params[:id])
  end

  def update
    contact = Contact.find(params[:id])
  
    if contact.update(contact_params)
       render json: contact
    else
       render json: contact.error.full_messages, status: :unprocessable_entity
    end
  end

  def destroy
    contact = Contact.find(params[:id])
    contact.destroy!
    render json: contact
  end

  private
  def contact_params
    params.require(:contact).permit(:name, :email, :user_id)
  end
  
end
