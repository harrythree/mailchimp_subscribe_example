class HomeController < ApplicationController
  def index
    list_id = ENV["MAILCHIMP_LIST_ID"]
    members_res = Rails.configuration.mailchimp.lists.members({:id => list_id})
    @members = members_res['data']
  end
end
