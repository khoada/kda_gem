# KdaGem

Use redis to index all field to suggest the keyword and sort by popular.

## Installation

Add this line to your application's Gemfile:

    gem 'kda_gem'

Or install it yourself as:

    $ gem install kda_gem

## Usage

- Gemfile need include gem "redis"

- Config:
    KdaGem.configure do |config|
      config.host = ENV["host"]
      config.port = ENV["port"]
      config.db = ENV["database"]
    end

- Use:
    include KdaGem::Suggestion

- Method:
    - self.terms_for(prefix) => return suggestion keyword
    - index_term(term) => index the term
