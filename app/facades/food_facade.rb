<%= form_with url: foods_path, method: :get do |f| %>
  <%= f.label :search %>
  <%= f.text_field :search %>

  <%= f.submit "Search" %>
<% end %>