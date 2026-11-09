/// Response models for the Language Detector API.

/// API Response wrapper.
class LanguagedetectorResponse {
  final String status;
  final dynamic error;
  final LanguagedetectorData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  LanguagedetectorResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory LanguagedetectorResponse.fromJson(Map<String, dynamic> json) => LanguagedetectorResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? LanguagedetectorData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Language Detector API.

class LanguagedetectorData {
  String? primaryLanguage;
  String? primaryCode;
  String? confidenceLevel;
  List<LanguagedetectorDataDetectedlanguagesItem>? detectedLanguages;

  LanguagedetectorData({
    this.primaryLanguage,
    this.primaryCode,
    this.confidenceLevel,
    this.detectedLanguages,
  });

  factory LanguagedetectorData.fromJson(Map<String, dynamic> json) => LanguagedetectorData(
      primaryLanguage: json['primaryLanguage'],
      primaryCode: json['primaryCode'],
      confidenceLevel: json['confidenceLevel'],
      detectedLanguages: (json['detectedLanguages'] as List?)?.map((e) => LanguagedetectorDataDetectedlanguagesItem.fromJson(e)).toList(),
    );
}

class LanguagedetectorDataDetectedlanguagesItem {
  String? language;
  num? confidence;
  String? code;

  LanguagedetectorDataDetectedlanguagesItem({
    this.language,
    this.confidence,
    this.code,
  });

  factory LanguagedetectorDataDetectedlanguagesItem.fromJson(Map<String, dynamic> json) => LanguagedetectorDataDetectedlanguagesItem(
      language: json['language'],
      confidence: json['confidence'],
      code: json['code'],
    );
}

class LanguagedetectorRequest {
  String text;

  LanguagedetectorRequest({
    required this.text,
  });

  Map<String, dynamic> toJson() => {
      'text': text,
    };
}
