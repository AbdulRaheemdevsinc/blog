# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base
  default from: 'abdul.raheem@devsinc.com'
  layout 'mailer'
end

# app/mailers/user_mailer.rb
class UserMailer < ApplicationMailer
end
