class MattersController < ApplicationController
  def index
    @matters = Matter.all

    render("matters/index.html.erb")
  end

  def show
    @matter = Matter.find(params[:id])

    render("matters/show.html.erb")
  end

  def new
    @matter = Matter.new

    render("matters/new.html.erb")
  end

  def create
    @matter = Matter.new

    @matter.name = params[:name]
    @matter.matter_type = params[:matter_type]
    @matter.fiduciary_number = params[:fiduciary_number]
    @matter.user_id = params[:user_id]

    save_status = @matter.save

    if save_status == true
      redirect_to("/matters/#{@matter.id}", :notice => "Matter created successfully.")
    else
      render("matters/new.html.erb")
    end
  end

  def edit
    @matter = Matter.find(params[:id])

    render("matters/edit.html.erb")
  end

  def update
    @matter = Matter.find(params[:id])

    @matter.name = params[:name]
    @matter.matter_type = params[:matter_type]
    @matter.fiduciary_number = params[:fiduciary_number]
    @matter.user_id = params[:user_id]

    save_status = @matter.save

    if save_status == true
      redirect_to("/matters/#{@matter.id}", :notice => "Matter updated successfully.")
    else
      render("matters/edit.html.erb")
    end
  end

  def destroy
    @matter = Matter.find(params[:id])

    @matter.destroy

    if URI(request.referer).path == "/matters/#{@matter.id}"
      redirect_to("/", :notice => "Matter deleted.")
    else
      redirect_to(:back, :notice => "Matter deleted.")
    end
  end
end
