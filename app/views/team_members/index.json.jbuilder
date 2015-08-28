json.array!(@team_members) do |team_member|
  json.extract! team_member, :id, :name, :job_title, :phone, :location, :image, :quote
  json.url team_member_url(team_member, format: :json)
end
