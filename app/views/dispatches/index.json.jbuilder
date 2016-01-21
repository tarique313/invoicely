json.array!(@dispatches) do |dispatch|
  json.extract! dispatch, :id, :date, :company, :tax, :salesperson
  json.url dispatch_url(dispatch, format: :json)
end
