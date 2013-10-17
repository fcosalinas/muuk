class Evaluation < ActiveRecord::Base
  belongs_to :user_evaluator
  belongs_to :user_evaluated
end
