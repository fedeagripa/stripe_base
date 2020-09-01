module Api
  module V1
    class PaymentsController < Api::V1::ApiController
      helper_method :user

      def index
        @payments = Payment.all
      end

      def create
        StripeService.new(user).create_payment
        # payments are stored in cents
        Payment.create!(user: user, concept: 'Test payment', amount: amount)
        head :no_content
      end

      private

      def user
        @user ||= current_user
      end

      def amount
        params[:amount]*100 || 10000
      end
    end
  end
end
