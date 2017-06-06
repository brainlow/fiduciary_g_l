Rails.application.routes.draw do
  devise_for :users
  # Routes for the Fiduciary resource:
  # CREATE
  get "/fiduciaries/new/:id", :controller => "fiduciaries", :action => "new"
  post "/create_fiduciary", :controller => "fiduciaries", :action => "create"

  # READ
  get "/matters/:id/fiduciaries/", :controller => "fiduciaries", :action => "index"
  get "/fiduciaries/:id", :controller => "fiduciaries", :action => "show"

  # UPDATE
  get "/fiduciaries/:id/edit", :controller => "fiduciaries", :action => "edit"
  post "/update_fiduciary/:id", :controller => "fiduciaries", :action => "update"

  # DELETE
  get "/delete_fiduciary/:id", :controller => "fiduciaries", :action => "destroy"
  #------------------------------

  # Routes for the Beneficiary resource:
  # CREATE
  get "/beneficiaries/new", :controller => "beneficiaries", :action => "new"
  post "/create_beneficiary", :controller => "beneficiaries", :action => "create"

  # READ
  get "/beneficiaries", :controller => "beneficiaries", :action => "index"
  get "/beneficiaries/:id", :controller => "beneficiaries", :action => "show"

  # UPDATE
  get "/beneficiaries/:id/edit", :controller => "beneficiaries", :action => "edit"
  post "/update_beneficiary/:id", :controller => "beneficiaries", :action => "update"

  # DELETE
  get "/delete_beneficiary/:id", :controller => "beneficiaries", :action => "destroy"
  #------------------------------

  # Routes for the Asset_doc resource:
  # CREATE
  get "/asset_docs/new/:id", :controller => "asset_docs", :action => "new"
  post "/create_asset_doc", :controller => "asset_docs", :action => "create"

  # READ
  get "/assets/asset_docs/:id", :controller => "asset_docs", :action => "index"
  get "/asset_docs/:id", :controller => "asset_docs", :action => "show"

  # UPDATE
  get "/asset_docs/:id/edit", :controller => "asset_docs", :action => "edit"
  post "/update_asset_doc/:id", :controller => "asset_docs", :action => "update"

  # DELETE
  get "/delete_asset_doc/:id", :controller => "asset_docs", :action => "destroy"
  #------------------------------

  # Routes for the Matter resource:
  # CREATE
  get "/matters/new", :controller => "matters", :action => "new"
  post "/create_matter", :controller => "matters", :action => "create"

  # READ
  get "/matters", :controller => "matters", :action => "index"
  get "/matters/:id", :controller => "matters", :action => "show"

  # UPDATE
  get "/matters/:id/edit", :controller => "matters", :action => "edit"
  post "/update_matter/:id", :controller => "matters", :action => "update"

  # DELETE
  get "/delete_matter/:id", :controller => "matters", :action => "destroy"
  #------------------------------

  # Routes for the Matter_doc resource:
  # CREATE
  get "/matter_docs/new/:id", :controller => "matter_docs", :action => "new"
  post "/create_matter_doc", :controller => "matter_docs", :action => "create"

  # READ
  get "/matter/:id/matter_docs", :controller => "matter_docs", :action => "index"
  get "/matter_docs/:id", :controller => "matter_docs", :action => "show"

  # UPDATE
  get "/matter_docs/:id/edit", :controller => "matter_docs", :action => "edit"
  post "/update_matter_doc/:id", :controller => "matter_docs", :action => "update"

  # DELETE
  get "/delete_matter_doc/:id", :controller => "matter_docs", :action => "destroy"
  #------------------------------

  # Routes for the Asset resource:
  # CREATE
  get "/assets/new/:id", :controller => "assets", :action => "new"
  post "/create_asset", :controller => "assets", :action => "create"

  # READ
  get "/matter/assets/:id", :controller => "assets", :action => "index"
  get "/assets/:id", :controller => "assets", :action => "show"

  # UPDATE
  get "/assets/:id/edit", :controller => "assets", :action => "edit"
  post "/update_asset/:id", :controller => "assets", :action => "update"

  # DELETE
  get "/delete_asset/:id", :controller => "assets", :action => "destroy"
  #------------------------------


  # Routes for the Transaction resource:
  # CREATE
  get "/transactions/new/:id", :controller => "transactions", :action => "new"
  post "/create_transaction", :controller => "transactions", :action => "create"

  # READ
  get "/assets/:id/transactions", :controller => "transactions", :action => "index"
  get "/transactions/:id", :controller => "transactions", :action => "show"

  # UPDATE
  get "/transactions/:id/edit", :controller => "transactions", :action => "edit"
  post "/update_transaction/:id", :controller => "transactions", :action => "update"

  # DELETE
  get "/delete_transaction/:id", :controller => "transactions", :action => "destroy"
  #------------------------------
  root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
