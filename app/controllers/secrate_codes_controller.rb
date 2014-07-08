class SecrateCodesController < ApplicationController
  load_and_authorize_resource
  # GET /secrate_codes
  # GET /secrate_codes.json
  def index
    @secrate_codes = SecrateCode.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @secrate_codes }
    end
  end

  # GET /secrate_codes/1
  # GET /secrate_codes/1.json
  def show
    @secrate_code = SecrateCode.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @secrate_code }
    end
  end

  # GET /secrate_codes/new
  # GET /secrate_codes/new.json
  def new
    @secrate_code = SecrateCode.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @secrate_code }
    end
  end

  # GET /secrate_codes/1/edit
  def edit
    @secrate_code = SecrateCode.find(params[:id])
  end

  # POST /secrate_codes
  # POST /secrate_codes.json
  def create
    @secrate_code = SecrateCode.new(params[:secrate_code])

    respond_to do |format|
      if @secrate_code.save
        format.html { redirect_to @secrate_code, notice: 'Secrate code was successfully created.' }
        format.json { render json: @secrate_code, status: :created, location: @secrate_code }
      else
        format.html { render action: "new" }
        format.json { render json: @secrate_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /secrate_codes/1
  # PUT /secrate_codes/1.json
  def update
    @secrate_code = SecrateCode.find(params[:id])

    respond_to do |format|
      if @secrate_code.update_attributes(params[:secrate_code])
        format.html { redirect_to @secrate_code, notice: 'Secrate code was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @secrate_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /secrate_codes/1
  # DELETE /secrate_codes/1.json
  def destroy
    @secrate_code = SecrateCode.find(params[:id])
    @secrate_code.destroy

    respond_to do |format|
      format.html { redirect_to secrate_codes_url }
      format.json { head :no_content }
    end
  end
  def generate    
    params[:number_of_codes].to_i.times do
      @secrate_code = SecrateCode.new()
      @secrate_code.secrate_code = SecureRandom.urlsafe_base64(8, false)
      @secrate_code.save
    end
    @secrate_codes = SecrateCode.all
    if request.xhr?
    render :partial=>"list", :layout=>false
          return
        end
  end
end
