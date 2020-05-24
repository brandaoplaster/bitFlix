class Api::V1::PlayerSerializer
  include FastJsonapi::ObjectSerializer
  set_type :exection
  attributes :id, :start_date, :end_date, :elapsed_time
  belongs_to :movie
end
