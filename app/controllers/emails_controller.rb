class EmailsController < ApplicationController
  before_action :require_user, only: [:index]
  
  def index
    @emails = Email.all()
  end
  
  
  def new
    @email = Email.new

  end

  def create
    @email = Email.create(email_params)
    if @email.save
      flash[:success] = "Thank You, Your Message Has Been Sent"
      redirect_to root_path
    else
      if @email.errors.any?
        errors = ""
        @email.errors.full_messages.each do |msg|
          errors += "#{msg}<br>"
      end
      flash[:danger] = errors
      redirect_to root_path
      end
    end
  end
  
 

  private
  def email_params
    params.require(:email).permit(:name, :email, :message)
  end
end
