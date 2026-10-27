# Rails Yelp MVP

The data layer of a Yelp-style restaurant review app built with **Ruby on Rails**. Restaurants have many reviews, and every record is validated before it reaches the database.

Built during the [Le Wagon](https://www.lewagon.com) AI Software Development bootcamp (2026) to practise Active Record associations and validations.

## Data model

```
Restaurant                      Review
- name          (required)      - content   (required)
- address       (required)      - rating    (integer 0 to 5)
- phone_number                  - restaurant_id
- category      (chinese, italian, japanese, french, belgian)

Restaurant has_many :reviews, dependent: :destroy
Review belongs_to :restaurant
```

## What I practised

- Designing a one-to-many relationship with a foreign key
- Model validations (presence, inclusion, numericality)
- Cascading deletes with `dependent: :destroy`
- Seeding the database with sample restaurants (`db/seeds.rb`)
- Running the bootcamp's RSpec test suite against my models

## Tech stack

| Layer | Technology |
| --- | --- |
| Framework | Ruby on Rails 8 |
| Language | Ruby 3.3 |
| Database | SQLite (development) |
| Testing | RSpec |

## Run it locally

```bash
git clone https://github.com/StefanoIncisa/rails-yelp-mvp.git
cd rails-yelp-mvp
bundle install
rails db:migrate db:seed
rails console   # try Restaurant.first.reviews
```

## Next steps

- [ ] Routes, controllers and views for restaurants (index, show, new, create)
- [ ] Nested route to add a review from a restaurant page
- [ ] Average rating per restaurant
