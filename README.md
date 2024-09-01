# Skin Analyzer

Skin Analyzer is a Flutter application that provides a comprehensive analysis of facial skin conditions using the Skin Analyze Advanced API. This app is designed for skincare applications, beauty platforms, and dermatology tools, offering users detailed insights into their skin health and condition to help them make informed skincare decisions.

## Features

- **Face Detection:** Detects the face and its position in the image.
- **Skin Analysis:** Analyzes various skin attributes such as skin tone, texture, wrinkles, acne, spots, and more.
- **Skin Age Estimation:** Provides an estimation of the user's skin age.
- **Detailed Skin Insights:** Displays the analysis results in a graphical format or indicators showing the percentages of related skin features.
- **User-Friendly Interface:** Clean and modern UI/UX with easy navigation.
- **GetX State Management:** Efficient state management using GetX.
- **Multi-language Support:** Supports multiple languages (English, French, Arabic).
- **Error Handling:** Displays appropriate error messages for API issues or unexpected errors.

## Getting Started

### Prerequisites

- Flutter SDK
- Dart SDK
- A valid subscription to the [Skin Analyze Advanced API](https://rapidapi.com/) on RapidAPI

### Installation

1. **Clone the repository:**
    ```bash
    git clone https://github.com/miabilal/Skin-Analyzer.git
    cd Skin-Analyzer
    ```

2. **Install dependencies:**
    ```bash
    flutter pub get
    ```

3. **Run the app:**
    ```bash
    flutter run
    ```

## API Integration

The app uses the Skin Analyze Advanced API for analyzing skin conditions. The API key and endpoint details are set in the `SkinAnalyzeController`. Ensure you have a valid API subscription and replace the placeholder API key with your actual key.

### Instructions:

1. **Replace** any placeholder text (like `YOUR_API_KEY` or `your-email@example.com`) with your actual details.
2. **Update** the README directly in your GitHub repository, either by editing it online or pushing an updated version from your local project.

Let me know if you want to make any further adjustments!


### Example API Request

```http
POST /facebody/analysis/skinanalyze-advanced HTTP/1.1
X-Rapidapi-Key: YOUR_API_KEY
X-Rapidapi-Host: skin-analyze-advanced.p.rapidapi.com
Content-Type: multipart/form-data; boundary=---011000010111000001101001,


