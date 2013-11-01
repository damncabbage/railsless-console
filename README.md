# Railsless-Console

Provides a Rails-like console via Rake.

## Installation

Add this line to your application's Gemfile:

    gem 'railsless-console'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install railsless-console

## Usage

Open up your `Rakefile` and add:

```ruby
require 'railsless/console/task.rake'
```

To use, run `rake console` (or `rake c`).

This will fire up IRB (or Pry, if it's installed), and will optionally run the `:environment` task, if it's defined.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License

Copyright 2013, Rob Howard

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

  http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
