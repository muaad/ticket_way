json.array!(@tickets) do |ticket|
  json.extract! ticket, :id, :event_id, :account_id, :invoice_no, :user_id, :paid_for, :active
  json.url ticket_url(ticket, format: :json)
end
