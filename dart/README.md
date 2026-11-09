# Language Detector API - Dart/Flutter Client

Language Detector is a language detection API that identifies the language of any submitted text string. It returns the primary language, its ISO 639-1 code, and candidate matches ranked by confidence scores.

[![pub package](https://img.shields.io/pub/v/apiverve_languagedetector.svg)](https://pub.dev/packages/apiverve_languagedetector)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Language Detector API](https://apiverve.com/marketplace/languagedetector?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_languagedetector: ^1.2.5
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_languagedetector/apiverve_languagedetector.dart';

void main() async {
  final client = LanguagedetectorClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'text': 'esta es una frase en español. esta API puede detectar fácilmente el idioma'
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

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

## API Reference

- **API Home:** [Language Detector API](https://apiverve.com/marketplace/languagedetector?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/languagedetector](https://docs.apiverve.com/ref/languagedetector?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
