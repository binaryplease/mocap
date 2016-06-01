json.array!(@motions) do |motion|
  json.extract! motion, :id, :actor, :bvh_file, :c3d_file, :role, :mood, :attribute_1, :attribute_2, :attribute_3, :attribute_4, :attribute_5
  json.url motion_url(motion, format: :json)
end
