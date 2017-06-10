class ReportsController < ApplicationController
  def report
    @matter = Matter.find(params[:id])
    @assets = @matter.assets
    

    render("matters/report.html.erb")
  end
end
