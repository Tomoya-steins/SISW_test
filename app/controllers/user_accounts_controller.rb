class UserAccountsController < ApplicationController
  def index
    @users_info = User.all
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:notice] = "削除されました"
    redirect_to accounts_path
  end

  def edit
    @info = User.find(params[:id])
  end

  def update
    @info = User.find(params[:id])
    @info.name = params[:name]
    @info.account_id = params[:account_id]
    if @info.save
      flash[:notice] = "ユーザー情報の変更を完了しました"
      redirect_to accounts_path
    else
      render("/account/#{@info.id}/edit")
    end
  end
end
