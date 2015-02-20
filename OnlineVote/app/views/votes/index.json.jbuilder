json.array!(@votes) do |vote|
  json.extract! vote, :id, :vote_type, :bill_id, :voter_id
  json.url vote_url(vote, format: :json)
end
