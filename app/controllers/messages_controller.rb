class MessagesController < ApplicationController
  before_action :set_message, only: [:show, :edit, :update, :destroy]

  # GET /messages
  def index
    @messages = Message.all
    if params[:query].present?
      @messages = Message.search(params[:query])
    end
  end

  # GET /messages/1
  def show
  end

  # GET /messages/new
  def new
    @message = Message.new(user_id: params[:user_id])
  end

  # GET /messages/1/edit
  def edit
  end

  # POST /messages
  def create
    message = message_params
    message[:user_id] = params[:user_id]
    @message = Message.new(message)
    if @message.save
      redirect_to message_path(@message)
    else
      flash[:error] = "Wrong message parameters"
      render :new
    end
  end

  # PATCH/PUT /messages/1
  def update
    if @message.update(message_params)
      redirect_to @message, notice: 'Message was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /messages/1
  def destroy
    @message.destroy
    redirect_to messages_url, notice: 'Message was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_message
      @message = Message.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def message_params
      params.require(:message).permit(:series, :title, :content, :costumes, :props, :featured, :user_id)
    end
end
