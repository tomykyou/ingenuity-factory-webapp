FactoryBot.define do
  factory :user do
    email{"test@user"}
    password{"000000"}
    username{"testさん"}
    occupation{"サラリーマン"}
    award {"よろしくお願いします"}
    password_confirmation{"000000"}
  end
end
