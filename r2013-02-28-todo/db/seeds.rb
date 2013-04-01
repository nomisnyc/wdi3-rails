User.delete_all
Task.delete_all
Priority.delete_all

u1 = User.create(:name => 'ron', :email => 'ron@ron.com', :password => 'a', :password_confirmation => 'a')
u2 = User.create(:name => 'jim', :email => 'jim@ron.com', :password => 'a', :password_confirmation => 'a')
u3 = User.create(:name => 'john', :email => 'ron@ron.com', :password => 'a', :password_confirmation => 'a')


t1 = Task.create(:title => 'dishes', :description => 'do the fucking dishes', :due_date => '4/20/2013', :complete => 'false')
t2 = Task.create(:title => 'trash', :description => 'do the fucking trash', :due_date => '4/20/2013', :complete => 'false')
t3 = Task.create(:title => 'milk the cat', :description => 'do the fucking cats', :due_date => '4/20/2013', :complete => 'false')

p1 = Priority.create(:name => 'high', :color => '#ff0000', :value => 2)
p2 = Priority.create(:name => 'medium', :color => '#00ff00', :value => 1)
p3 = Priority.create(:name => 'low', :color => '#0000ff', :value => 3)

t1.priority = p1
t1.save
t2.priority = p2
t2.save
t3.priority = p3
t3.save

u1.priorities << p1 << p2 << p3
u1.tasks << t1 << t2 << t3