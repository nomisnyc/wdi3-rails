class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def sendtxt

#     number = params[:number]
#     body = params[:body]
#     client = Twilio::REST::Client.new(ENV['TW_SID'], ENV['TW_TOK'])
#     client.account.sms.messages.create(:from => '+19172846078', :to => :number, :body => body)
#     redirect_to(root_path)
# # <---------------------------------->
    name = params[:first]
    body = params[:body]
    user = User.where(:name => name).first
    client = Twilio::REST::Client.new(ENV['TW_SID'], ENV['TW_TOK'])
    client.account.sms.messages.create(:from => '+19172846078', :to => user.phone, :body => body)
    redirect_to(root_path)
  end

  def show

  end

  def new
  end

  def create
  end

  def edit
  end

  def destroy
  end

  def update
  end

end