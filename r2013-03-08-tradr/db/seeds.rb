Stock.delete_all
User.delete_all


u1= User.create(:name => 'Me', :email => 'me@gmail.com', :password => 'a', :password_confirmation => 'a', :cash_balance => 44000)
u2= User.create(:name => 'Bob', :email => 'bob@gmail.com', :password => 'a', :password_confirmation => 'a', :cash_balance => 10000)
u3= User.create(:name => 'Amy', :email => 'amy@gmail.com', :password => 'a', :password_confirmation => 'a', :cash_balance => 29000)


s1= Stock.create(:ticker => 'AAPL', :shares => 10)
s2= Stock.create(:ticker => 'GOOG', :shares => 10)
s3= Stock.create(:ticker => 'AMZN', :shares => 20)



u1.stocks << s1 << s2
u2.stocks << s2 << s3
u3.stocks << s1 << s2


