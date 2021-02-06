class TicketSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :date, :main_act, :category_id, :category
  # belongs_to :category
end
