# by using the symbol ':user' we get Factory Girl to simulate the User model

Factory.define :user do |user|
  user.name "Jonathan Berger"
  user.email "jpb@foo.com"
  user.password "foobar"
  user.password_confirmation "foobar"
end