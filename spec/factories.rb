FactoryGirl.define do
    factory :user do
        name    "Joey Jenkins"
        email   "joey@revelstone.org"
        password"foobar"
        password_confirmation   "foobar"
    end
end
