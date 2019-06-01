class ContactInfoController < ApplicationController
  def create
    puts("#Email: " + params[:contact][:email].downcase)
    puts("#Name: " + params[:contact][:name].downcase)
    puts("#Phone: " + params[:contact][:phone].downcase)
    puts("#Message: " + params[:contact][:message].downcase)
    @contact = Contact.new(contact_params)
    puts @contact.inspect
    @contact.save
    redirect_to("/contact")
  end
  def contact_params
    params.require(:contact).permit(:name, :email, :phone, :message)
  end
end
