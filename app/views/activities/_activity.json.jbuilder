json.extract! activity, :id, :user_id, :theme, :difficulty, :question_quantity, :is_public, :created_at, :updated_at
json.url activity_url(activity, format: :json)
