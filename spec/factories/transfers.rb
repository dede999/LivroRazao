FactoryGirl.define do
  factory :transfer do
    from "MyString"
    to "MyString"
    value "9.99"
    user_id 1
    dia 1
    mes "MyString"
    ano 1
  end
end
