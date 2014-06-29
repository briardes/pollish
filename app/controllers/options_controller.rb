class OptionsController < ApplicationController
  before_action :set_poll
  before_action :set_option, only: [:show, :edit, :add_vote]

  def add_vote
    if cookies[:voted]
      redirect_to @poll
    else
      @option.add_vote!
      cookies[:voted] = {value: true, expires: Time.now + 3600}
      redirect_to @poll
    end
  end

  # GET /options
  # GET /options.json
  def index
    @options = @poll.options
  end

  # GET /options/1
  # GET /options/1.json
  def show
  end

  # GET /options/new
  def new
    @option = Option.new
  end

  # GET /options/1/edit
  def edit
  end

  # POST /options
  # POST /options.json
  def create
    @option = @poll.options.create(option_params)
      if @option.save
        redirect_to  poll_options_path, notice: 'Option was successfully created.'
      else
        render :new
      end
  end

  # PATCH/PUT /options/1
  # PATCH/PUT /options/1.json
  def update
    respond_to do |format|
      if @option.update(option_params)
        format.html { redirect_to @option, notice: 'Option was successfully updated.' }
        format.json { render :show, status: :ok, location: @option }
      else
        format.html { render :edit }
        format.json { render json: @option.errors, status: :unprocessable_entity }
      end
    end
  end


  # DELETE /options/1
  # DELETE /options/1.json
  def destroy
    @option.destroy
    respond_to do |format|
      format.html { redirect_to options_url, notice: 'Option was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_option
      @option = @poll.options.find(params[:id])
    end

    def set_poll
      @poll = Poll.find(params[:poll_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def option_params
      params.require(:option).permit(:answer, :count)
    end
end
