class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      redirect_to '/contact-thankyou'
    else
      redirect_to '/contact-us'
    end
  end
end