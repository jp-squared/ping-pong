json.array!(@bills) do |bill|
  json.extract! bill, :id, :staffer_id, :bill_text, :vote_id
  json.url bill_url(bill, format: :json)
end
