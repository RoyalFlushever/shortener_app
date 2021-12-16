
## Installation

Use bundler to install required gems:

```bash
bundle install
```

Create a database and fill it with sample data:
```bash
rake db:create
rake db:migrate
rake db:seed
```

Install Redis depending on your operating system - [Redis](https://redis.io/)

Run Sidekiq worker:
```bash
bundle exec sidekiq
```

And start server:
```
rails s 
```

The application will be available on [localhost:3000](http://localhost:3000)


## Shortener algorithm

Shortener algorithm creating short version based on the ID of the website in a database. 
[Stackoverflow](https://stackoverflow.com/questions/742013/how-do-i-create-a-url-shortener)

For encoding/decoding used [bijective function](https://en.wikipedia.org/wiki/Bijection).