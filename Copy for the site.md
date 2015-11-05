# Copy for the site

Portal
A portal to the services that you need to access

Do you think this site is missing an important service? You can add a service here.


Round the buttons - 15px across the board
Box 
.university-box {
  padding: 10px 0px;
}
.button.tag {
  padding: 5px
}





Adding the search type to include tags at the top. 





<% if !user_signed_in? %>
  when you go to /services/new, redirect to /services/index
<% else %>
  Act as normal.
  i.e. when you go to /services/new, 
<% end %>




Search by partial tag name, 
search by 
  service.name (string) Service.all.each
  service.description (string) 
  service.tag_list (array) 
  service_type (array) ServiceType.all

  