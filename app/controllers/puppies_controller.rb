class PuppiesController < ApplicationController
  # GET /puppies
  # GET /puppies.json
  def index
    @puppies = Puppy.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @puppies }
    end
  end

  # GET /puppies/1
  # GET /puppies/1.json
  def show
    @puppy = Puppy.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @puppy }
    end
  end

  # GET /puppies/new
  # GET /puppies/new.json
  def new
    @puppy = Puppy.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @puppy }
    end
  end

  # GET /puppies/1/edit
  def edit
    @puppy = Puppy.find(params[:id])
  end

  # POST /puppies
  # POST /puppies.json
  def create
    @puppy = Puppy.new(params[:puppy])

    respond_to do |format|
      if @puppy.save
        format.html { redirect_to @puppy, notice: 'Puppy was successfully created.' }
        format.json { render json: @puppy, status: :created, location: @puppy }
      else
        format.html { render action: "new" }
        format.json { render json: @puppy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /puppies/1
  # PUT /puppies/1.json
  def update
    @puppy = Puppy.find(params[:id])

    respond_to do |format|
      if @puppy.update_attributes(params[:puppy])
        format.html { redirect_to @puppy, notice: 'Puppy was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @puppy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /puppies/1
  # DELETE /puppies/1.json
  def destroy
    @puppy = Puppy.find(params[:id])
    @puppy.destroy

    respond_to do |format|
      format.html { redirect_to puppies_url }
      format.json { head :no_content }
    end
  end
end
