class TransactionsController < ApplicationController
  def index
    @transactions = Transaction.all
  end

  def new
    @transaction = current_user.transactions.new
    @groups = Group.all.sort_by_name
    # @group_transaction = @transaction.group_transactions.build
  end

  def create
    @transaction = current_user.transactions.new(transaction_params)
    @transaction.group_transactions = params[:group_transactions]

    if @transaction.save then
      redirect_to "/transactions", notice: 'Transaction has been created'
    else
      redirect_to "/transactions/new", notice: @transaction.errors.full_messages
    end
  end

  private

  def transaction_params
    params.require(:transaction).permit(:name, :amount)
    # params.require(:transaction).permit(:name, :amount, :group_transactions[])
  end
end
