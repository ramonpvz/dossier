class ContactInfoController < ApplicationController
  def create
    puts("#Email: " + params[:contact][:email].downcase)
    puts("#Name: " + params[:contact][:name].downcase)
    puts("#Phone: " + params[:contact][:phone].downcase)
    puts("#Message: " + params[:contact][:message].downcase)
    redirect_to("/contact")
  end
end
