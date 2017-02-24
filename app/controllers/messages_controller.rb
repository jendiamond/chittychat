class MessagesController < ApplicationController
  def create
  end

  private

  def message_params
    params.require(:messages).permit(:content).merge(user_id: current_user.id, room_id: current_room.id)
  end
end
