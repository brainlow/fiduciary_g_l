class FiduciariesController < ApplicationController
  def index
    @matter = Matter.find(params[:id])
    @fiduciaries = @matter.fiduciaries

    render("fiduciaries/index.html.erb")
  end

  def show
    @fiduciary = Fiduciary.find(params[:id])

    render("fiduciaries/show.html.erb")
  end

  def new
    @matter = Matter.find(params[:id])
    @fiduciaries = Fiduciary.new

    render("fiduciaries/new.html.erb")
  end

  def create
    @fiduciary = Fiduciary.new

    @fiduciary.fiduciary_name = params[:fiduciary_name]
    @fiduciary.fiduciary_address = params[:fiduciary_address]
    @fiduciary.matter_id = params[:matter_id]

    save_status = @fiduciary.save

    if save_status == true
      redirect_to("/fiduciaries/#{@fiduciary.id}", :notice => "Fiduciary created successfully.")
    else
      render("fiduciaries/new.html.erb")
    end
  end

  def edit
    @fiduciary = Fiduciary.find(params[:id])

    render("fiduciaries/edit.html.erb")
  end

  def update
    @fiduciary = Fiduciary.find(params[:id])

    @fiduciary.fiduciary_name = params[:fiduciary_name]
    @fiduciary.fiduciary_address = params[:fiduciary_address]
    @fiduciary.matter_id = params[:matter_id]

    save_status = @fiduciary.save

    if save_status == true
      redirect_to("/fiduciaries/#{@fiduciary.id}", :notice => "Fiduciary updated successfully.")
    else
      render("fiduciaries/edit.html.erb")
    end
  end

  def destroy
    @fiduciary = Fiduciary.find(params[:id])

    @fiduciary.destroy

    if URI(request.referer).path == "/fiduciaries/#{@fiduciary.id}"
      redirect_to("/", :notice => "Fiduciary deleted.")
    else
      redirect_to(:back, :notice => "Fiduciary deleted.")
    end
  end
end
