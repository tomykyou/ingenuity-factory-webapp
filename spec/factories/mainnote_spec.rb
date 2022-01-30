FactoryBot.define do
  factory :mainnote do
    user_id{1}
    title {"テストさん"}
    text {"今回はこちらの工夫を紹介します。"}
    target {'一人暮らしの学生'}
    category{'学生'}
    thingstoprepare {"洗剤,たわし"}
  end
end
