users = User.order(:created_at).take(6)
50.times do
  amount = 400
  users.each { |user| user.user_points.create!(amount: amount) }
end