class TicketSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :date, :main_act, :category_id, :category
end
