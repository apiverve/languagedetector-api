declare module '@apiverve/languagedetector' {
  export interface languagedetectorOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface languagedetectorResponse {
    status: string;
    error: string | null;
    data: LanguageDetectorData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface LanguageDetectorData {
      primaryLanguage:   null | string;
      primaryCode:       null | string;
      confidenceLevel:   null | string;
      detectedLanguages: DetectedLanguage[];
  }
  
  interface DetectedLanguage {
      language:   null | string;
      confidence: number | null;
      code:       null | string;
  }

  export default class languagedetectorWrapper {
    constructor(options: languagedetectorOptions);

    execute(callback: (error: any, data: languagedetectorResponse | null) => void): Promise<languagedetectorResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: languagedetectorResponse | null) => void): Promise<languagedetectorResponse>;
    execute(query?: Record<string, any>): Promise<languagedetectorResponse>;
  }
}
