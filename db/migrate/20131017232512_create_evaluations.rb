class CreateEvaluations < ActiveRecord::Migration
  def change
    create_table :evaluations do |t|
      t.references :user_evaluator, index: true
      t.references :user_evaluated, index: true
      t.float :rating

      t.timestamps
    end
  end
end
