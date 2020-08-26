# Setup

1. Setup the Database
  - rake db:create
  - rake db:migrate
  - rake db:seed

2. Start the server
  - rails s

3. Test
  - bundle exec rspec


# Endpoints

root: /

### Categories
  - /categories         [:index]
  - /categories/:id     [:show, :post, :put, :destroy]

### Flash Cards
  - /categories/:category_id/flash_cards/:id    [:show, :post, :put, :destroy]
