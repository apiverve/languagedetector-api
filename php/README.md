# Language Detector API - PHP Package

Language Detector is a simple tool for detecting the language of a text. It returns the language code and the confidence level.

## Installation

Install via Composer:

```bash
composer require apiverve/languagedetector
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Languagedetector\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute(['text' => 'esta es una frase en español. esta API puede detectar fácilmente el idioma']);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Languagedetector\Client;
use APIVerve\Languagedetector\Exceptions\APIException;
use APIVerve\Languagedetector\Exceptions\ValidationException;

try {
    $response = $client->execute(['text' => 'esta es una frase en español. esta API puede detectar fácilmente el idioma']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/languagedetector?utm_source=packagist&utm_medium=readme).

## Support

- Website: [https://apiverve.com/marketplace/languagedetector?utm_source=php&utm_medium=readme](https://apiverve.com/marketplace/languagedetector?utm_source=php&utm_medium=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
