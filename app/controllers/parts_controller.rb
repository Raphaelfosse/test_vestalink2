class PartsController < ApplicationController
  def index
    if params[:site_id]
      @parts = Part.where(:site_id => params[:site_id])
    else
      @parts = Part.all
    end
  end

  def new
    @part = Part.new
  end

  def create
    @part = Part.create(part_params)

    redirect_to part_path(@part)
  end

  private

  def part_params
    params.require(:part).permit(:reference_part, :reference_site, :part_type_designation, :site_id)
  end
end
