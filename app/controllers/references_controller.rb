class ReferencesController < ApplicationController

  def index
    @references = Reference.all
    respond_to do |format|
      format.html { :back }
      format.js
    end
  end

  def new
    @reference = Reference.new
    respond_to do |format|
      format.html { :back }
      format.js
    end
  end

  def create
    @reference = Reference.new(reference_params)
    if @reference.save
      @references = Reference.all
      respond_to do |format|
        format.html { redirect_to references_path }
        format.js
      end
    else
      render :new
    end
  end

  private
  def reference_params
    params.require(:reference).permit!
  end

end
