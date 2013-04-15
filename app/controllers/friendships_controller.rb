class FriendshipsController < ApplicationController


  def create
    @friendship = current_entrepreneur.friendships.build(:friend_id => params[:friend_id])
    respond_to do |format|
      if @friendship.save
        format.html { redirect_to root_path, notice: 'Added Friend.' }
      else
        format.html { redirect_to root_path, notice: 'Unable to add Friend.'  }
      end
    end
  end

  def destroy
    @friendship = current_entrepreneur.friendships.find(params[:id])
    @friendship.destroy

    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Removed Friendship'}
    end
  end
end
