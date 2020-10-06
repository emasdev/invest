# Investments manager app with Ruby on Rails

This app intends to let you organize better when you want to invest in some goals. You can create groups shared with others in which you can set an amount as a goal to invest in and have data of how near or far you are from this one.

## Built With

- Ruby
- Ruby on Rails
- Bootstrap

## Milestones

# Milestone1 Login

- Create model user name
- Create controller user new create
- Create session controller
- Create controller sessions new create login
- Add sessions#transactions view
- Add sessions#new' view
- Add sessions#create' view
- Add bootstrap
- Add logic for login buttons
- Add user profile links

# Milestone2 Groups

- Create model group name goal
- Add user/group relationships
- Create controller group index new create
- Add groups views (index, new)

# Milestone3 Investments

- Create model investment name amount
- Create model group name amount icon
- Add user/group relationships
- Create controller group index new create
- Add investments views (index, new)

# Milestone4 Testing

- Create model unit testing with rspec
- Create associations testing with rspec
- Integration test with capybara

# Milestone5 Deployment

- Deploy Invest App on Heroku

## Live Demo

[Live Demo Link](https://aqueous-escarpment-93314.herokuapp.com/)

## Getting Started

- Clone the repository using `https://github.com/emasdev/invest.git`

### Prerequisites

Ruby: 2.7.0
Rails: 6.0.2
Postgres: >=9.5

Instal gems with:

```
bundle install
```

Setup database with:

```
   rails db:create
   rails db:migrate

```

### Usage

Start server with:

```

    rails server

```

Open `http://localhost:3000/` in your browser.

### Run tests

```

    bundle exec rspec

```

## Authors

👤 **Shubham Singh**

- Github: [@emasdev](https://github.com/emasdev)
- Twitter: [@elemasss](https://twitter.com/elemass)
- Linkedin: [@emasdev](https://www.linkedin.com/in/emasdev/)

## 🤝 Contributing

Contributions, issues and feature requests are transactions!

Feel free to check the [issues page](issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Rails Documentation
- Behance design by [Gregoire Vella](https://www.behance.net/gallery/19759151/Snapscan-iOs-design-and-branding?tracking_source=)

## 📝 License

This project is [MIT](lic.url) licensed.
