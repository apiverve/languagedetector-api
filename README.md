# [Language Detector API](https://apiverve.com/marketplace/languagedetector?utm_source&#x3D;github&amp;utm_medium&#x3D;readme)

Language Detector is a simple tool for detecting the language of a text. It returns the language code and the confidence level.

The Language Detector API provides a simple, reliable way to integrate language detector functionality into your applications. Built for developers who need production-ready language detector capabilities without the complexity of building from scratch.

**[View API Details →](https://apiverve.com/marketplace/languagedetector?utm_source&#x3D;github&amp;utm_medium&#x3D;readme)**

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![API Status](https://img.shields.io/badge/Status-Active-green.svg)](https://apiverve.com/marketplace/languagedetector?utm_source&#x3D;github&amp;utm_medium&#x3D;readme)
[![Method](https://img.shields.io/badge/Method-POST-blue.svg)](#)
[![Platform](https://img.shields.io/badge/Platform-Multi--Platform-orange.svg)](#installation)

**Available on:**
[![npm](https://img.shields.io/badge/npm-CB3837?style=flat&logo=npm&logoColor=white)](https://www.npmjs.com/package/@apiverve/languagedetector)
[![NuGet](https://img.shields.io/badge/NuGet-004880?style=flat&logo=nuget&logoColor=white)](https://www.nuget.org/packages/APIVerve.API.LanguageDetector)
[![PyPI](https://img.shields.io/badge/PyPI-3776AB?style=flat&logo=python&logoColor=white)](https://pypi.org/project/apiverve-languagedetector/)
[![RubyGems](https://img.shields.io/badge/RubyGems-E9573F?style=flat&logo=rubygems&logoColor=white)](https://rubygems.org/gems/apiverve_languagedetector)
[![Packagist](https://img.shields.io/badge/Packagist-F28D1A?style=flat&logo=packagist&logoColor=white)](https://packagist.org/packages/apiverve/languagedetector)
[![Go](https://img.shields.io/badge/Go-00ADD8?style=flat&logo=go&logoColor=white)](#-go)
[![Dart](https://img.shields.io/badge/Dart-0175C2?style=flat&logo=dart&logoColor=white)](https://pub.dev/packages/apiverve_languagedetector)
[![JitPack](https://img.shields.io/badge/JitPack-2E7D32?style=flat&logo=android&logoColor=white)](#-android-jitpack)

---

## Quick Start

### Using JavaScript

```javascript
async function callLanguageDetectorAPI() {
    try {
        const requestBody = {
    "text": "esta es una frase en español. esta API puede detectar fácilmente el idioma"
};

        const response = await fetch('https://api.apiverve.com/v1/languagedetector', {
            method: 'POST',
            headers: {
                'x-api-key': 'YOUR_API_KEY_HERE',
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(requestBody)
        });

        const data = await response.json();
        console.log(data);
    } catch (error) {
        console.error('Error:', error);
    }
}

callLanguageDetectorAPI();
```

### Using cURL

```bash
curl -X POST "https://api.apiverve.com/v1/languagedetector" \
  -H "x-api-key: YOUR_API_KEY_HERE" \
  -H "Content-Type: application/json" \
  -d '{
    "text": "esta es una frase en español. esta API puede detectar fácilmente el idioma"
}'
```

**Get your API key:** [https://apiverve.com](https://apiverve.com)

**📁 For more examples, see the [examples folder](./examples/)**

---

## Installation

Choose your preferred programming language:

### 📦 NPM (JavaScript/Node.js)

```bash
npm install @apiverve/languagedetector
```

[**View NPM Package →**](https://www.npmjs.com/package/@apiverve/languagedetector) | [**Package Code →**](./npm/)

---

### 🔷 NuGet (.NET/C#)

```bash
dotnet add package APIVerve.API.LanguageDetector
```

[**View NuGet Package →**](https://www.nuget.org/packages/APIVerve.API.LanguageDetector) | [**Package Code →**](./nuget/)

---

### 🐍 Python (PyPI)

```bash
pip install apiverve-languagedetector
```

[**View PyPI Package →**](https://pypi.org/project/apiverve-languagedetector/) | [**Package Code →**](./python/)

---

### 💎 Ruby (RubyGems)

```bash
gem install apiverve_languagedetector
```

[**View RubyGems Package →**](https://rubygems.org/gems/apiverve_languagedetector) | [**Package Code →**](./ruby/)

---

### 🐘 PHP (Packagist)

```bash
composer require apiverve/languagedetector
```

[**View Packagist Package →**](https://packagist.org/packages/apiverve/languagedetector) | [**Package Code →**](./php/)

---

### 🎯 Dart (pub.dev)

```bash
dart pub add apiverve_languagedetector
```

[**View pub.dev Package →**](https://pub.dev/packages/apiverve_languagedetector) | [**Package Code →**](./dart/)

---

### 🤖 Android (JitPack)

```gradle
implementation 'com.github.apiverve:languagedetector-api:1.0.0'
```

[**Package Code →**](./android/)

---

### 🐹 Go

```bash
go get github.com/apiverve/languagedetector-api/go
```

[**Package Code →**](./go/)

---

## Why Use This API?

| Feature | Benefit |
|---------|---------|
| **Multi-language SDKs** | Native packages for JavaScript, Python, C#, Go, and Android |
| **Simple Integration** | Single API key authentication, consistent response format |
| **Production Ready** | 99.9% uptime SLA, served from 24 global regions |
| **Comprehensive Docs** | Full examples, OpenAPI spec, and dedicated support |

---

## Documentation

- 🏠 **API Home:** [Language Detector API](https://apiverve.com/marketplace/languagedetector?utm_source&#x3D;github&amp;utm_medium&#x3D;readme)
- 📚 **API Reference:** [docs.apiverve.com/ref/languagedetector](https://docs.apiverve.com/ref/languagedetector)
- 📖 **OpenAPI Spec:** [openapi.yaml](./openapi.yaml)
- 💡 **Examples:** [examples/](./examples/)

---

## What Can You Build?

The Language Detector API is commonly used for:

- **Web Applications** - Add language detector features to your frontend or backend
- **Mobile Apps** - Native SDKs for Android development
- **Automation** - Integrate with n8n, Zapier, or custom workflows
- **SaaS Products** - Enhance your product with language detector capabilities
- **Data Pipelines** - Process and analyze data at scale

---

## API Reference

### Authentication
All requests require an API key in the header:
```
x-api-key: YOUR_API_KEY_HERE
```

Get your API key: [https://apiverve.com](https://apiverve.com)

### Response Format
All responses are JSON with this structure:
```json
{
  "status": "ok",
  "data": { ... }
}
```

---

## Support & Community

- 🏠 **API Home**: [Language Detector API](https://apiverve.com/marketplace/languagedetector?utm_source&#x3D;github&amp;utm_medium&#x3D;readme)
- 💬 **Support**: [https://apiverve.com/contact](https://apiverve.com/contact)
- 🐛 **Issues**: [GitHub Issues](../../issues)
- 📖 **Documentation**: [https://docs.apiverve.com](https://docs.apiverve.com)
- 🌐 **Website**: [https://apiverve.com](https://apiverve.com)

---

## Contributing

We welcome contributions! Please see [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

---

## Security

For security concerns, please review our [Security Policy](SECURITY.md).

---

## License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

---

## Acknowledgments

Built with ❤️ by [APIVerve](https://apiverve.com)

Copyright © 2026 APIVerve. All rights reserved.
