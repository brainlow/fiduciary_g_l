class ReportsController < ApplicationController
  def report
    @matter = Matter.find(params[:id])
    @asset = @matter.assets
    @transaction = @asset.transactions

    render("matters/report.html.erb")
  end
end
