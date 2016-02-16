class DailyWritingsController < ApplicationController
  before_action :set_daily_writing, only: [:show, :edit, :update, :destroy]

  # GET /daily_writings
  # GET /daily_writings.json
  def index
    @daily_writings = DailyWriting.all
  end

  # GET /daily_writings/1
  # GET /daily_writings/1.json
  def show
  end

  # GET /daily_writings/new
  def new
    @daily_writing = DailyWriting.new
  end

  # GET /daily_writings/1/edit
  def edit
  end

  # POST /daily_writings
  # POST /daily_writings.json
  def create
    @daily_writing = DailyWriting.new(daily_writing_params)

    respond_to do |format|
      if @daily_writing.save
        format.html { redirect_to @daily_writing, notice: 'Daily writing was successfully created.' }
        format.json { render :show, status: :created, location: @daily_writing }
      else
        format.html { render :new }
        format.json { render json: @daily_writing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daily_writings/1
  # PATCH/PUT /daily_writings/1.json
  def update
    respond_to do |format|
      if @daily_writing.update(daily_writing_params)
        format.html { redirect_to @daily_writing, notice: 'Daily writing was successfully updated.' }
        format.json { render :show, status: :ok, location: @daily_writing }
      else
        format.html { render :edit }
        format.json { render json: @daily_writing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daily_writings/1
  # DELETE /daily_writings/1.json
  def destroy
    @daily_writing.destroy
    respond_to do |format|
      format.html { redirect_to daily_writings_url, notice: 'Daily writing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daily_writing
      @daily_writing = DailyWriting.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daily_writing_params
      params.require(:daily_writing).permit(:person_id, :start_time, :end_time, :words, :memo)
    end
end
