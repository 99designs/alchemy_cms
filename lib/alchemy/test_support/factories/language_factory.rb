require 'factory_girl'
require 'alchemy/test_support/factories/site_factory'

FactoryGirl.define do
  factory :alchemy_language, class: 'Alchemy::Language' do
    name 'Deutsch'
    code 'de'
    default true
    frontpage_name 'Intro'
    page_layout { Alchemy::Config.get(:default_language)['page_layout'] }
    public true
    site { Alchemy::Site.first || FactoryGirl.create(:site) }

    trait :klingonian do
      name 'Klingonian'
      code 'kl'
      frontpage_name 'Tuq'
      default false
    end

    trait :english do
      name 'English'
      code 'en'
      frontpage_name 'Intro'
      default false
    end
  end
end
