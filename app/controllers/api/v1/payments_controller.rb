module Api
  module V1
    class CreditCardsController < Api::V1::ApiController
      helper_method :user

      def create
        StripeService.new(user).create_payment
        # payments are stored in cents
        Payment.create!(user: user, concept: 'Test payment', amount: 10000)
        head :no_content
      end

      private

      def user
        @user ||= current_user
      end
    end
  end
end
