# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Clear the database before reseeding
# City.delete_all
# Post.delete_all

# Initialize some cities
atlanta = City.create description:"The city in the forest.", image_url:"http://www.diserio.com/atlantaskyline.jpg", city:"Atlanta", region:"Georgia", country:"United States of America"
chicago = City.create description:"WINDY CITY BABY", image_url:"http://www.diserio.com/atlantaskyline.jpg", city:"Chicago", region:"Illinois", country:"United States of America"
paris = City.create description:"Where cheese is made", image_url:"http://www.diserio.com/atlantaskyline.jpg", city:"Paris", region:"Centre", country:"France"

# Initialize some posts
atlanta_post_1 = Post.create author:"Swag", 
                             title:"Double Swag",  
                             body:"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus quasi suscipit at optio officia quae velit, laborum vitae illum corrupti cupiditate sapiente totam recusandae. Corporis nobis velit incidunt, eum eligendi.", 
                             city_id:atlanta.id
atlanta_post_2 = Post.create author:"Stuff", 
                             title:"Double stuff", 
                             body:"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus quasi suscipit at optio officia quae velit, laborum vitae illum corrupti cupiditate sapiente totam recusandae. Corporis nobis velit incidunt, eum eligendi.", 
                             city_id:atlanta.id
atlanta_post_3 = Post.create author:"Tips", 
                             title:"Double Tips",  
                             body:"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus quasi suscipit at optio officia quae velit, laborum vitae illum corrupti cupiditate sapiente totam recusandae. Corporis nobis velit incidunt, eum eligendi.", 
                             city_id:atlanta.id

chicago_post_1 = Post.create author:"Swag", 
                             title:"Double Swag",  
                             body:"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus quasi suscipit at optio officia quae velit, laborum vitae illum corrupti cupiditate sapiente totam recusandae. Corporis nobis velit incidunt, eum eligendi.", 
                             city_id:chicago.id
chicago_post_2 = Post.create author:"Stuff", 
                             title:"Double stuff", 
                             body:"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus quasi suscipit at optio officia quae velit, laborum vitae illum corrupti cupiditate sapiente totam recusandae. Corporis nobis velit incidunt, eum eligendi.", 
                             city_id:chicago.id
chicago_post_3 = Post.create author:"Tips", 
                             title:"Double Tips",  
                             body:"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus quasi suscipit at optio officia quae velit, laborum vitae illum corrupti cupiditate sapiente totam recusandae. Corporis nobis velit incidunt, eum eligendi.", 
                             city_id:chicago.id

paris_post_1 = Post.create author:"Swag", 
                             title:"Double Swag",  
                             body:"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus quasi suscipit at optio officia quae velit, laborum vitae illum corrupti cupiditate sapiente totam recusandae. Corporis nobis velit incidunt, eum eligendi.", 
                             city_id:paris.id
paris_post_2 = Post.create author:"Stuff", 
                             title:"Double stuff", 
                             body:"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus quasi suscipit at optio officia quae velit, laborum vitae illum corrupti cupiditate sapiente totam recusandae. Corporis nobis velit incidunt, eum eligendi.", 
                             city_id:paris.id
paris_post_3 = Post.create author:"Tips", 
                             title:"Double Tips",  
                             body:"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus quasi suscipit at optio officia quae velit, laborum vitae illum corrupti cupiditate sapiente totam recusandae. Corporis nobis velit incidunt, eum eligendi.", 
                             city_id:paris.id

