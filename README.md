# Forum Ruby Library

![](https://foru.ms/images/cover.png)

[![fern shield](https://img.shields.io/badge/%F0%9F%8C%BF-Built%20with%20Fern-brightgreen)](https://buildwithfern.com?utm_source=github&utm_medium=github&utm_campaign=readme&utm_source=https%3A%2F%2Fgithub.com%2Fforu-ms%2Fruby-sdk)

The Forum Ruby library provides convenient access to the Forum APIs from Ruby.

## Table of Contents

- [Documentation](#documentation)
- [Reference](#reference)
- [Usage](#usage)
- [Environments](#environments)
- [Errors](#errors)
- [Advanced](#advanced)
  - [Timeouts](#timeouts)
- [Contributing](#contributing)

## Documentation

API reference documentation is available [here](https://foru.ms/docs/api-reference).

## Reference

A full reference for this library is available [here](https://github.com/foru-ms/ruby-sdk/blob/HEAD/./reference.md).

## Usage

Instantiate and use the client with the following:

```ruby
require "forum"

client = Forum::Client.new(api_key: '<value>');

client.auth.register(
  username: 'username',
  email: 'email',
  password: 'password'
);
```

## Environments

This SDK allows you to configure different environments or custom URLs for API requests. You can either use the predefined environments or specify your own custom URL.
### Environments
```ruby
require "forum"

forum = Forum::Client.new(
    base_url: Forum::Environment::PRODUCTION
)
```

### Custom URL
```ruby
require "forum"

client = Forum::Client.new(
    base_url: "https://example.com"
)
```

## Errors

Failed API calls will raise errors that can be rescued from granularly.

```ruby
require "forum"

client = Forum::Client.new(
    base_url: "https://example.com"
)

begin
    result = client.auth.register
rescue Forum::Errors::TimeoutError
    puts "API didn't respond before our timeout elapsed"
rescue Forum::Errors::ServiceUnavailableError
    puts "API returned status 503, is probably overloaded, try again later"
rescue Forum::Errors::ServerError
    puts "API returned some other 5xx status, this is probably a bug"
rescue Forum::Errors::ResponseError => e
    puts "API returned an unexpected status other than 5xx: #{e.code} #{e.message}"
rescue Forum::Errors::ApiError => e
    puts "Some other error occurred when calling the API: #{e.message}"
end
```

## Advanced

### Timeouts

The SDK defaults to a 60 second timeout. Use the `timeout` option to configure this behavior.

```ruby
require "forum"

response = client.auth.register(
    ...,
    timeout: 30  # 30 second timeout
)
```

## Contributing

While we value open-source contributions to this SDK, this library is generated programmatically.
Additions made directly to this library would have to be moved over to our generation code,
otherwise they would be overwritten upon the next generated release. Feel free to open a PR as
a proof of concept, but know that we will not be able to merge it as-is. We suggest opening
an issue first to discuss with us!

On the other hand, contributions to the README are always very welcome!