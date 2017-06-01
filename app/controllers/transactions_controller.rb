class TransactionsController < ApplicationController
  def index
    @asset = Asset.find(params[:id])
    @transactions = @asset.transactions

    render("transactions/index.html.erb")
  end

  def show
    @transaction = Transaction.find(params[:id])

    render("transactions/show.html.erb")
  end

  def new
    @asset = Asset.find(params[:id])
    @transaction = Transaction.new

    render("transactions/new.html.erb")
  end

  def create
    @transaction = Transaction.new

    @transaction.date = params[:date]
    @transaction.transaction_type = params[:transaction_type]
    @transaction.amount = params[:amount]
    @transaction.description = params[:description]
    @transaction.account = params[:account]
    @transaction.payee = params[:payee]
    @transaction.shares = params[:shares]
    @transaction.asset_id = params[:asset_id]

    save_status = @transaction.save

    if save_status == true
      redirect_to("/transactions/#{@transaction.id}", :notice => "Transaction created successfully.")
    else
      render("transactions/new.html.erb")
    end
  end

  def edit
    @transaction = Transaction.find(params[:id])

    render("transactions/edit.html.erb")
  end

  def update
    @transaction = Transaction.find(params[:id])

    @transaction.date = params[:date]
    @transaction.transaction_type = params[:transaction_type]
    @transaction.amount = params[:amount]
    @transaction.description = params[:description]
    @transaction.account = params[:account]
    @transaction.payee = params[:payee]
    @transaction.shares = params[:shares]
    @transaction.asset_id = params[:asset_id]

    save_status = @transaction.save

    if save_status == true
      redirect_to("/transactions/#{@transaction.id}", :notice => "Transaction updated successfully.")
    else
      render("transactions/edit.html.erb")
    end
  end

  def destroy
    @transaction = Transaction.find(params[:id])

    @transaction.destroy

    if URI(request.referer).path == "/transactions/#{@transaction.id}"
      redirect_to("/", :notice => "Transaction deleted.")
    else
      redirect_to(:back, :notice => "Transaction deleted.")
    end
  end
end
