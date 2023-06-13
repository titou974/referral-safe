class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end

  def create
    @chatroom = Chatroom.create(
      user_a_id: current_user.id,
      user_b_id: params[:id].to_i
    )
    redirect_to user_path(User.find(params[:id].to_i))
  end

end
