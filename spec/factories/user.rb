FactoryBot.define do
  factory :user do
    nickname              {'test'}
    email                 {'test@example'}
    password              {'a111111'}
    password_confirmation {password}
    birth_date            {'1930-02-02'}
    first_name            {'山田'}
    last_name             {'太郎'}
    first_name_kana       {'ヤマダ'}
    last_name_kana        {'タロウ'}
  end
end