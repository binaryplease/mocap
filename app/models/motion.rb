class Motion
  include Mongoid::Document
  field :actor, type: Actor
  field :bvh_file, type: File
  field :c3d_file, type: File
  field :role, type: String
  field :mood, type: String
  field :attribute_1, type: String
  field :attribute_2, type: String
  field :attribute_3, type: String
  field :attribute_4, type: String
  field :attribute_5, type: String
end
