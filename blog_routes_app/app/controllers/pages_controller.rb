class PagesController < ApplicationController
  def faqs
    render text:"This is FAQs"
  end

  def team
    render text:"This is TEAM"
  end

  def terms_and_conditions
    render text:"This is Terms and Condition"
  end
end
