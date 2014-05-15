def random_string length = 10
  (0...length).map { (97 + rand(26)).chr }.join
end


FactoryGirl.define do
  factory :user do
    username                { random_string }
    bio                     { LoremIpsum.lorem_ipsum(paragraphs: 4) }
    password                "password"
    password_confirmation   "password"
    active                  true
  end
end