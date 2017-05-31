class AssetDocsController < ApplicationController
  def index
    @asset_docs = AssetDoc.all

    render("asset_docs/index.html.erb")
  end

  def show
    @asset_doc = AssetDoc.find(params[:id])

    render("asset_docs/show.html.erb")
  end

  def new
    @asset_doc = AssetDoc.new

    render("asset_docs/new.html.erb")
  end

  def create
    @asset_doc = AssetDoc.new

    @asset_doc.asset_id = params[:asset_id]
    @asset_doc.date = params[:date]
    @asset_doc.doc_type = params[:doc_type]

    save_status = @asset_doc.save

    if save_status == true
      redirect_to("/asset_docs/#{@asset_doc.id}", :notice => "Asset doc created successfully.")
    else
      render("asset_docs/new.html.erb")
    end
  end

  def edit
    @asset_doc = AssetDoc.find(params[:id])

    render("asset_docs/edit.html.erb")
  end

  def update
    @asset_doc = AssetDoc.find(params[:id])

    @asset_doc.asset_id = params[:asset_id]
    @asset_doc.date = params[:date]
    @asset_doc.doc_type = params[:doc_type]

    save_status = @asset_doc.save

    if save_status == true
      redirect_to("/asset_docs/#{@asset_doc.id}", :notice => "Asset doc updated successfully.")
    else
      render("asset_docs/edit.html.erb")
    end
  end

  def destroy
    @asset_doc = AssetDoc.find(params[:id])

    @asset_doc.destroy

    if URI(request.referer).path == "/asset_docs/#{@asset_doc.id}"
      redirect_to("/", :notice => "Asset doc deleted.")
    else
      redirect_to(:back, :notice => "Asset doc deleted.")
    end
  end
end
