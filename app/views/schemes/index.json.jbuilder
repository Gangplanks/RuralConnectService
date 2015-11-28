json.array!(@schemes) do |scheme|
  json.extract! scheme, :id, :name, :department, :beneficiaries, :funding_pattern, :jurisdiction, :age_eligible, :income_eligible, :community_eligible, :others_eligible, :avail_from, :valid_from, :valid_till, :description
  json.url scheme_url(scheme, format: :json)
end
