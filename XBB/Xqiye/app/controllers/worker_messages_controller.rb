class WorkerMessagesController < ApplicationController
  before_filter :authenticate_workeraccount!
  before_action :set_worker_message, only: [:show, :edit, :update, :destroy]

  # GET /worker_messages
  # GET /worker_messages.json
  def index
    @worker_messages = WorkerMessage.all
  end

  # GET /worker_messages/1
  # GET /worker_messages/1.json
  def show
  end

  # GET /worker_messages/new
  def new
    @worker_message = WorkerMessage.new
  end

  # GET /worker_messages/1/edit
  def edit
  end

  # POST /worker_messages
  # POST /worker_messages.json
  def create
    @worker_message = WorkerMessage.new(worker_message_params)

    respond_to do |format|
      if @worker_message.save
        format.html { redirect_to @worker_message, notice: 'Worker message was successfully created.' }
        format.json { render :show, status: :created, location: @worker_message }
      else
        format.html { render :new }
        format.json { render json: @worker_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /worker_messages/1
  # PATCH/PUT /worker_messages/1.json
  def update
    respond_to do |format|
      if @worker_message.update(worker_message_params)
        format.html { redirect_to @worker_message, notice: 'Worker message was successfully updated.' }
        format.json { render :show, status: :ok, location: @worker_message }
      else
        format.html { render :edit }
        format.json { render json: @worker_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /worker_messages/1
  # DELETE /worker_messages/1.json
  def destroy
    @worker_message.destroy
    respond_to do |format|
      format.html { redirect_to worker_messages_url, notice: 'Worker message was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_worker_message
      @worker_message = WorkerMessage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def worker_message_params
      params.require(:worker_message).permit(:worker_id, :worker_name, :sex, :age, :birthday, :role, :academic, :factory_id, :region, :delFlag, :S_01, :S_o2)
    end
end
