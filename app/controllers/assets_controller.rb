class AssetsController < ApplicationController
  def index
    @matter = Matter.find(params[:id])
    @assets = @matter.assets

    render("assets/index.html.erb")
  end

  def show
    @asset = Asset.find(params[:id])

    render("assets/show.html.erb")
  end

  def new
    @matter = Matter.find(params[:id])
    @asset = Asset.new

    render("assets/new.html.erb")
  end

  def create
    @asset = Asset.new

    @asset.asset_type = params[:asset_type]
    @asset.asset_value = params[:asset_value]
    @asset.matter_id = params[:matter_id]
    @asset.total_shares = params[:total_shares]
    @asset.description = params[:description]
    @asset.asset_account = params[:asset_account]
    @asset.market_value = params[:market_value]

    save_status = @asset.save

    if save_status == true
      redirect_to("/matter/assets/#{@asset.matter_id}", :notice => "Asset created successfully.")
    else
      render("assets/new.html.erb")
    end
  end

  def edit
    @asset = Asset.find(params[:id])

    render("assets/edit.html.erb")
  end

  def update
    @asset = Asset.find(params[:id])

    @asset.asset_type = params[:asset_type]
    @asset.asset_value = params[:asset_value]
    @asset.matter_id = params[:matter_id]
    @asset.total_shares = params[:total_shares]
    @asset.description = params[:description]
    @asset.asset_account = params[:asset_account]
    @asset.market_value = params[:market_value]

    save_status = @asset.save

    if save_status == true
      redirect_to("/matter/assets/#{@asset.matter_id}}", :notice => "Asset updated successfully.")
    else
      render("assets/edit.html.erb")
    end
  end

  def destroy
    @asset = Asset.find(params[:id])

    @asset.destroy

    if URI(request.referer).path == "/assets/#{@asset.id}"
      redirect_to("/", :notice => "Asset deleted.")
    else
      redirect_to(:back, :notice => "Asset deleted.")
    end
  end
end
