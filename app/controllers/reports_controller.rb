class ReportsController < ApplicationController
  def report
    @matter = Matter.find(params[:id])
    @assets = @matter.assets
    @fiduciaries = @matter.fiduciaries

    render("matters/report.html.erb")
  end
end
