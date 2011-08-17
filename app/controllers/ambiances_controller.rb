class AmbiancesController < ApplicationController
  # GET /ambiances
  # GET /ambiances.xml
  def index
    @ambiances = Ambiance.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @ambiances }
    end
  end

  # GET /ambiances/1
  # GET /ambiances/1.xml
  def show
    @ambiance = Ambiance.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @ambiance }
    end
  end

  # GET /ambiances/new
  # GET /ambiances/new.xml
  def new
    @ambiance = Ambiance.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @ambiance }
    end
  end

  # GET /ambiances/1/edit
  def edit
    @ambiance = Ambiance.find(params[:id])
  end

  # POST /ambiances
  # POST /ambiances.xml
  def create
    @ambiance = Ambiance.new(params[:ambiance])

    respond_to do |format|
      if @ambiance.save
        format.html { redirect_to(@ambiance, :notice => 'L ambiance a ete creee.') }
        format.xml  { render :xml => @ambiance, :status => :created, :location => @ambiance }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @ambiance.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /ambiances/1
  # PUT /ambiances/1.xml
  def update
    @ambiance = Ambiance.find(params[:id])

    respond_to do |format|
      if @ambiance.update_attributes(params[:ambiance])
        format.html { redirect_to(@ambiance, :notice => 'L ambiance a ete modifiee.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @ambiance.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /ambiances/1
  # DELETE /ambiances/1.xml
  def destroy
    @ambiance = Ambiance.find(params[:id])
    @ambiance.destroy

    respond_to do |format|
      format.html { redirect_to(ambiances_url) }
      format.xml  { head :ok }
    end
  end
end
