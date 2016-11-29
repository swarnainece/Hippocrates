json.extract! profile, :id, :firstname, :lastname, :Gender, :DateOfBirth, :BloodGroup, :RhFactor, :Height, :Weight, :user_id, :created_at, :updated_at
json.url profile_url(profile, format: :json)