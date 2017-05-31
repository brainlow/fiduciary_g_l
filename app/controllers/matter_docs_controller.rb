class MatterDocsController < ApplicationController
  def index
    @matter_docs = MatterDoc.all

    render("matter_docs/index.html.erb")
  end

  def show
    @matter_doc = MatterDoc.find(params[:id])

    render("matter_docs/show.html.erb")
  end

  def new
    @matter_doc = MatterDoc.new

    render("matter_docs/new.html.erb")
  end

  def create
    @matter_doc = MatterDoc.new

    @matter_doc.document = params[:document]
    @matter_doc.document_type = params[:document_type]
    @matter_doc.matter_id = params[:matter_id]

    save_status = @matter_doc.save

    if save_status == true
      redirect_to("/matter_docs/#{@matter_doc.id}", :notice => "Matter doc created successfully.")
    else
      render("matter_docs/new.html.erb")
    end
  end

  def edit
    @matter_doc = MatterDoc.find(params[:id])

    render("matter_docs/edit.html.erb")
  end

  def update
    @matter_doc = MatterDoc.find(params[:id])

    @matter_doc.document = params[:document]
    @matter_doc.document_type = params[:document_type]
    @matter_doc.matter_id = params[:matter_id]

    save_status = @matter_doc.save

    if save_status == true
      redirect_to("/matter_docs/#{@matter_doc.id}", :notice => "Matter doc updated successfully.")
    else
      render("matter_docs/edit.html.erb")
    end
  end

  def destroy
    @matter_doc = MatterDoc.find(params[:id])

    @matter_doc.destroy

    if URI(request.referer).path == "/matter_docs/#{@matter_doc.id}"
      redirect_to("/", :notice => "Matter doc deleted.")
    else
      redirect_to(:back, :notice => "Matter doc deleted.")
    end
  end
end
