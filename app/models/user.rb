class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  def subscribe_to_mailchimp testing=false
    return true if (Rails.env.test? && !testing)
    list_id = ENV["MAILCHIMP_LIST_ID"]

    response = Rails.configuration.mailchimp.lists.subscribe({
      id: list_id,
      email: {email: self.email},
      double_optin: false,
    })
    response
  end

  after_create do
      subscribe_to_mailchimp
  end
end
