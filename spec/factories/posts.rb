FactoryBot.define do
  factory :post do
    trait :a do
      title {"今日の正規連"}
      body {"朝9:30集合してください"}
    end

    trait :b do
      title nil
      body {"みんなよくがんばったね！"}
    end
  end
end
