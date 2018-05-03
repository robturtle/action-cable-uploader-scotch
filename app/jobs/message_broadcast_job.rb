class MessageBroadcastJob < ApplicationJob
  queue_as :message

  def perform(message)
    ActionCable.server.broadcast 'chat_channel', message: render_message(message)
  end

  private

  def render_message(message)
    ChatsController.render partial: 'messages/message', locals: { message: message }
  end
end