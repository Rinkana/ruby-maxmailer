class MailbuildersController < ApplicationController
  before_action :set_mailbuilder, only: [:show, :edit, :update, :destroy,:general]

  # GET /mailbuilders
  # GET /mailbuilders.json
  def index
    @mailbuilders = Mailbuilder.all
  end

  # GET /mailbuilders/1
  # GET /mailbuilders/1.json
  def show
  end

  # GET /mailbuilders/new
  def new
    @mailbuilder = Mailbuilder.new
  end

  # GET /mailbuilders/1/edit
  def edit
  end

  # POST /mailbuilders
  # POST /mailbuilders.json
  def create
    @mailbuilder = Mailbuilder.new(mailbuilder_params)

    respond_to do |format|
      if @mailbuilder.save
        format.html { redirect_to @mailbuilder, notice: 'Mailbuilder was successfully created.' }
        format.json { render :show, status: :created, location: @mailbuilder }
      else
        format.html { render :new }
        format.json { render json: @mailbuilder.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mailbuilders/1
  # PATCH/PUT /mailbuilders/1.json
  def update
    respond_to do |format|
      if @mailbuilder.update(mailbuilder_params)
        format.html { redirect_to @mailbuilder, notice: 'Mailbuilder was successfully updated.' }
        format.json { render :show, status: :ok, location: @mailbuilder }
      else
        format.html { render :edit }
        format.json { render json: @mailbuilder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mailbuilders/1
  # DELETE /mailbuilders/1.json
  def destroy
    @mailbuilder.destroy
    respond_to do |format|
      format.html { redirect_to mailbuilders_url, notice: 'Mailbuilder was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mailbuilder
      @mailbuilder = Mailbuilder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mailbuilder_params
      params[:mailbuilder]
    end
end
