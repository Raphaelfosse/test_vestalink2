class SitesController < ApplicationController
  def index
    @sites = Site.all
  end

  def show
    @site = Site.find(params[:id])
  end

  def edit
    @site = Site.find(params[:id])
  end

  def update
    @site = Site.find(params[:id])
    @site.update(site_params)

    redirect_to sites_path
  end

  private

  def site_params
    params.require(:site).permit(:id, :reference_site, :nom, :address_line1, :zipcode, :city)
  end
end
