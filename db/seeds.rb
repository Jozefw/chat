
User.create(email: "joe@shmoe.com")

10.times do
  Page.create(post: Forgery(:lorem_ipsum).words(2, :random =>true),comment: Forgery(:lorem_ipsum).words(10, :random =>true))
end


