# Language Detector API - Ruby Gem

Language Detector is a language detection API that identifies the language of any submitted text string. It returns the primary language, its ISO 639-1 code, and candidate matches ranked by confidence scores.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_languagedetector'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_languagedetector
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_languagedetector'

# Initialize the client
client = APIVerve::Languagedetector::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({ text: "esta es una frase en español. esta API puede detectar fácilmente el idioma" })

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ text: "esta es una frase en español. esta API puede detectar fácilmente el idioma" })
  puts response["data"]
rescue APIVerve::Languagedetector::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Languagedetector::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Languagedetector::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "primaryLanguage": "spanish",
    "primaryCode": "es",
    "confidenceLevel": "medium",
    "detectedLanguages": [
      {
        "language": "spanish",
        "confidence": 0.38471794871794873,
        "code": "es"
      },
      {
        "language": "portuguese",
        "confidence": 0.2946153846153846,
        "code": "pt"
      },
      {
        "language": "danish",
        "confidence": 0.2464615384615384,
        "code": "da"
      }
    ]
  }
}
```

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/languagedetector?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/languagedetector?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/languagedetector?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
