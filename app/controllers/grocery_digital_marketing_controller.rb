class GroceryDigitalMarketingController < ApplicationController
  def index
    @message = Message.new
  end

  def newsletters_lead
    @message = Message.new
  end

  def create
    @message = Message.new(params[:message])
    @message.message_type = 'lead'

    respond_to do |format|
      if @message.save
        puts "=== saved"
        NotificationsMailer.new_message(@message).deliver
        puts "=== mailed"
        flash[:success] = 'Your message was successfully delivered!'
        format.html { redirect_to :home }
        format.json { render json: @message, status: :created, location: @message }
        puts "=== rendered"
      else
        puts "=== fail"
        format.html { render action: "newsletters_lead" }
        format.json { render json: @message.errors, status: :unprocessable_entity }
      end
    end
  end

  def bootstrap
    render 'bootstrap/index'
  end


end
