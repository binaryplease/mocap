class Motion
  include Mongoid::Document
  field :actor
  field :c3d_file
  field :bvh_file
  field :fbx_file
  field :role
  field :mood
  field :param, :type => Array
  #Integer downloadedy
  #Integer start
  #Integer end
  #String fbx_file
  #Attribute zum Array
 
end
