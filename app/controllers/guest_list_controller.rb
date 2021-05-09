class GuestListController < ApplicationController
  def new
    @guest_list = GuestList.new
  end

  def create
    @guest_list = GuestList.new(guest_list_params)
  end

  private
    def guest_list_params
      params.require(:guest_list).permit(:user_id, :event_id)
    end
end