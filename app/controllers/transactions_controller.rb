class TransactionsController < ApplicationController
  def index
    @transactions = Transaction.all
  end

  def new
    @transaction = Transaction.new
  end

  def create
    @transaction = Transaction.new(transaction_params)
    if @transaction.save then
      redirect_to "/transactions", notice: 'Transaction has been created'
    else
      redirect_to "/transactions/new", notice: @transaction.errors.full_messages
    end
  end

  private

  def transaction_params
    params.require(:transaction).permit(:name, :amount)
  end
end
