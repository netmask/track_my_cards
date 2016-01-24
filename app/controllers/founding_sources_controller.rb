class FoundingSourcesController < ApplicationController
  before_action :set_founding_source, only: [:show, :edit, :update, :destroy]

  # GET /founding_sources
  # GET /founding_sources.json
  def index
    @founding_sources = FoundingSource.all
  end

  # GET /founding_sources/1
  # GET /founding_sources/1.json
  def show
  end

  # GET /founding_sources/new
  def new
    @founding_source = FoundingSource.new
  end

  # GET /founding_sources/1/edit
  def edit
  end

  # POST /founding_sources
  # POST /founding_sources.json
  def create
    @founding_source = FoundingSource.new(founding_source_params)

    respond_to do |format|
      if @founding_source.save
        format.html { redirect_to @founding_source, notice: 'Founding source was successfully created.' }
        format.json { render :show, status: :created, location: @founding_source }
      else
        format.html { render :new }
        format.json { render json: @founding_source.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /founding_sources/1
  # PATCH/PUT /founding_sources/1.json
  def update
    respond_to do |format|
      if @founding_source.update(founding_source_params)
        format.html { redirect_to @founding_source, notice: 'Founding source was successfully updated.' }
        format.json { render :show, status: :ok, location: @founding_source }
      else
        format.html { render :edit }
        format.json { render json: @founding_source.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /founding_sources/1
  # DELETE /founding_sources/1.json
  def destroy
    @founding_source.destroy
    respond_to do |format|
      format.html { redirect_to founding_sources_url, notice: 'Founding source was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_founding_source
      @founding_source = FoundingSource.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def founding_source_params
      params[:founding_source]
    end
end
