class MilestoneCategoriesController < ApplicationController
  layout 'main'
  # GET /milestone_categories
  # GET /milestone_categories.xml
  def index
    @milestone_categories = MilestoneCategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @milestone_categories }
    end
  end

  # GET /milestone_categories/1
  # GET /milestone_categories/1.xml
  def show
    @milestone_category = MilestoneCategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @milestone_category }
    end
  end

  # GET /milestone_categories/new
  # GET /milestone_categories/new.xml
  def new
    @milestone_category = MilestoneCategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @milestone_category }
    end
  end

  # GET /milestone_categories/1/edit
  def edit
    @milestone_category = MilestoneCategory.find(params[:id])
  end

  # POST /milestone_categories
  # POST /milestone_categories.xml
  def create
    @milestone_category = MilestoneCategory.new(params[:milestone_category])

    respond_to do |format|
      if @milestone_category.save
        format.html { redirect_to(@milestone_category, :notice => 'MilestoneCategory was successfully created.') }
        format.xml  { render :xml => @milestone_category, :status => :created, :location => @milestone_category }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @milestone_category.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /milestone_categories/1
  # PUT /milestone_categories/1.xml
  def update
    @milestone_category = MilestoneCategory.find(params[:id])

    respond_to do |format|
      if @milestone_category.update_attributes(params[:milestone_category])
        format.html { redirect_to(@milestone_category, :notice => 'MilestoneCategory was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @milestone_category.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /milestone_categories/1
  # DELETE /milestone_categories/1.xml
  def destroy
    @milestone_category = MilestoneCategory.find(params[:id])
    @milestone_category.destroy

    respond_to do |format|
      format.html { redirect_to(milestone_categories_url) }
      format.xml  { head :ok }
    end
  end
end
