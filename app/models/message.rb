class Message < ApplicationRecord
  belongs_to :user
  belongs_to :conversation

  after_create_commit { MessageBroadcastJob.perform_later(self) }

  def self.get_opposed_user(user_id, conversation_id)
    conversation = Conversation.find(conversation_id)
    recipient = User.find(conversation.recipient_id)
    sender = User.find(conversation.sender_id)
    if user_id == recipient.id
      sender.username
    else
      recipient.username
    end
  end

end
