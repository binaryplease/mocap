json.array!(@actors) do |actor|
  json.extract! actor, :id, :name, :weight, :gender, :body_height, :shoulder_width, :shoulder_height, :inner_leg_length, :tibia_length, :body_depth, :hip_width, :seat_height, :shoulder_elbow_length, :elbow_wrist_length, :chest_girth, :waist_girth, :thigh_girth
  json.url actor_url(actor, format: :json)
end
