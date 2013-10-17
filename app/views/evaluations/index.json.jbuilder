json.array!(@evaluations) do |evaluation|
  json.extract! evaluation, :user_evaluator_id, :user_evaluated_id, :rating
  json.url evaluation_url(evaluation, format: :json)
end
