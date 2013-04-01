Artist.delete_all
Painting.delete_all

Artist.create(:name => 'Claude Monet', :nationality => 'French', :dob => '1840/11/14', :period => 'Impressionism', :image => 'http://upload.wikimedia.org/wikipedia/commons/9/99/Water-Lilies-and-Japanese-Bridge-(1897-1899)-Monet.jpg')

Artist.create(:name => 'Andy Warhol', :nationality => 'American', :dob => '1930/09/28', :period => 'Pop Art', :image => 'http://artobserved.com/artimages/2008/10/andy-warhol-marilyn.jpg')

Artist.create(:name => 'Pablo Picasso', :nationality => 'Spanish', :dob => '1881', :period => 'Blue Period', :image => 'http://designlov.com/wp-content/uploads/2011/08/picasso-green-lantern.jpg')

Artist.create(:name => 'Rembrandt van Rijn', :nationality => 'Dutch', :dob => '1606/07/15', :period => 'Baroque', :image => 'http://imgc.allpostersimages.com/images/P-473-488-90/65/6533/B824100Z/posters/rembrandt-van-rijn-the-night-watch.jpg')

Artist.create(:name => 'Wassily Kandinsky', :nationality => 'Russian', :dob => '12/04/1866', :period => 'Expressionism', :image => 'http://uploads3.wikipaintings.org/images/wassily-kandinsky/murnau-with-rainbow-1909.jpg')

Painting.create(:title => 'The Old Guitarist', :year => '1903', :medium => 'Oil', :style => 'Blue', :image => 'http://upload.wikimedia.org/wikipedia/en/b/bc/Old_guitarist_chicago.jpg')

