class BeneficiariesController < ApplicationController
  def index
    @beneficiaries = Beneficiary.all

    render("beneficiaries/index.html.erb")
  end

  def show
    @beneficiary = Beneficiary.find(params[:id])

    render("beneficiaries/show.html.erb")
  end

  def new
    @beneficiary = Beneficiary.new

    render("beneficiaries/new.html.erb")
  end

  def create
    @beneficiary = Beneficiary.new

    @beneficiary.name = params[:name]
    @beneficiary.address = params[:address]
    @beneficiary.beneficiary_type = params[:beneficiary_type]
    @beneficiary.residual_amount = params[:residual_amount]
    @beneficiary.specific_amount = params[:specific_amount]
    @beneficiary.matter_id = params[:matter_id]

    save_status = @beneficiary.save

    if save_status == true
      redirect_to("/beneficiaries/#{@beneficiary.id}", :notice => "Beneficiary created successfully.")
    else
      render("beneficiaries/new.html.erb")
    end
  end

  def edit
    @beneficiary = Beneficiary.find(params[:id])

    render("beneficiaries/edit.html.erb")
  end

  def update
    @beneficiary = Beneficiary.find(params[:id])

    @beneficiary.name = params[:name]
    @beneficiary.address = params[:address]
    @beneficiary.beneficiary_type = params[:beneficiary_type]
    @beneficiary.residual_amount = params[:residual_amount]
    @beneficiary.specific_amount = params[:specific_amount]
    @beneficiary.matter_id = params[:matter_id]

    save_status = @beneficiary.save

    if save_status == true
      redirect_to("/beneficiaries/#{@beneficiary.id}", :notice => "Beneficiary updated successfully.")
    else
      render("beneficiaries/edit.html.erb")
    end
  end

  def destroy
    @beneficiary = Beneficiary.find(params[:id])

    @beneficiary.destroy

    if URI(request.referer).path == "/beneficiaries/#{@beneficiary.id}"
      redirect_to("/", :notice => "Beneficiary deleted.")
    else
      redirect_to(:back, :notice => "Beneficiary deleted.")
    end
  end
end
