# Overall feedback (Entire coding assignment)

Thank you for this coding challenge. Overall we like it and are going to consider it in our final
decision regarding whether to extend an offer. Thanks for taking the time to do this assignment and
we will get back to you soon!

(Please also see `FEEDBACK.md` in PR for `stripe-web-base` project as well)

- Nice choice / use of tools (though a lot comes from the boilerplate project, but you're a maintainer on that so some credit of it goes to you for sure)
  - Good documentation
  - continuous integration
  - code-cops / linters
  - coding patterns tools
  - containers
  - testing setup
- Nice backend abstraction
- Code is clean and easy to understand

# Feedback for Rails app

- `rake secret` is a good default habit to have
- Good separation of concerns between models, services and controllers
- Maybe would be good to handle card errors on `stripe_service` `add_card` and `update_card` methods and show a friendly error in the frontend, for example distinguishing between an `incorrect_cvc`, `expired_card`, etc. errors. 
- Good separation of concerns in general, with exception of Stripe service on the backend, too many responsibilities for one service
