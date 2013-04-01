Genre.delete_all
Song.delete_all
Album.delete_all
User.delete_all
Mixtape.delete_all
Artist.delete_all

g1 = Genre.create(:name => 'Classical')
g2 = Genre.create(:name => 'Jazz')
g3 = Genre.create(:name => 'Ska')
g4 = Genre.create(:name => 'Alternative')
g5 = Genre.create(:name => 'Pop')

s1 = Song.create(:name => 'Under Pressure')
s2 = Song.create(:name => 'You Shook Me All Night Long')
s3 = Song.create(:name => 'Basket Case')
s4 = Song.create(:name => 'Yellow')

a1 = Album.create(:name => 'American Idiot', :image => 'http://geektyrant.com/storage/post-images/Green%20Day%20American%20Idiot.jpg?__SQUARESPACE_CACHEVERSION=1269313876987')
a2 = Album.create(:name => 'The Killers')
a3 = Album.create(:name => 'Parachutes')

r1 = Artist.create(:name => 'Nirvana')
r2 = Artist.create(:name => 'Radiohead')
r3 = Artist.create(:name => 'Linkin Park')
r4 = Artist.create(:name => 'Green Day')
r5 = Artist.create(:name => 'Coldplay')

u1 = User.create(:balance => '800.92', :name => 'Alvin', :image => 'http://aroundthesphere.files.wordpress.com/2010/06/alvin_and_the_chipmunks_14_.jpg', :password => 'aaaa', :password_confirmation => 'aaaa')
u2 = User.create(:balance => '99.75',:name => 'Simon', :image => 'http://www.polyvore.com/cgi/img-thing?.out=jpg&size=l&tid=4294995', :password => 'aaaa', :password_confirmation => 'aaaa')
u3 = User.create(:balance => '702.78', :name => 'Theo', :image => 'http://www.search-best-cartoon.com/images/theodore-chipmonk-01.jpeg', :password => 'aaaa', :password_confirmation => 'aaaa', :is_admin => true)


m1 = Mixtape.create(:name => 'Beats')
m2 = Mixtape.create(:name => 'Mc Lovin')
m3 = Mixtape.create(:name => 'Sweatout')

r1.songs << s1 << s2
r2.songs = [s3]
a1.songs = [s1, s3]
a2.songs << s2
r4.songs << s3
a1.songs << s3
r4.albums = [a1]
g3.songs = [s1, s2, s3]
u1.mixtapes = [m1, m2]
u2.mixtapes = [m3]
m3.songs = [s1, s2, s3]
u2.albums = [a1, a2, a3]