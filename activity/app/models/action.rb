class Action
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic
  include Mongoid::Timestamps 

  field :title, type: String


end
