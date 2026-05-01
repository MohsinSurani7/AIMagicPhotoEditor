# AI Magic Photo Editor

A production-ready, high-performance React Native mobile application for AI-powered photo editing with 100% client-side processing (zero server dependency).

## Features

- **Background Removal** - Remove backgrounds using MediaPipe Selfie Segmentation
- **Style Transfer** - Apply Cyberpunk, Anime, and Sketch style filters using TensorFlow Lite
- **Image Upscaling** - Enhance image resolution with ESRGAN
- **Real-time Camera** - Capture photos with react-native-vision-camera
- **Before/After Slider** - Interactive comparison using Skia
- **AdMob Integration** - Monetization with App Open, Rewarded, and Interstitial ads
- **Dark Mode UI** - Professional glassmorphism design
- **Offline Processing** - All AI processing happens on-device

## Tech Stack

- **Framework**: React Native 0.73.2 (TypeScript)
- **AI/ML**: 
  - MediaPipe Tasks Vision (@mediapipe/tasks-vision)
  - TensorFlow Lite (react-native-fast-tflite)
- **Graphics**: @shopify/react-native-skia
- **Camera**: react-native-vision-camera
- **Ads**: react-native-google-mobile-ads
- **State Management**: Zustand
- **Animation**: react-native-reanimated
- **Navigation**: React Navigation

## Prerequisites

- Node.js >= 18
- React Native CLI
- Android Studio (for Android development)
- Xcode (for iOS development)

## Installation

1. Clone the repository:
```bash
git clone <repository-url>
cd AIMagicPhotoEditor
```

2. Install dependencies:
```bash
npm install
```

3. For iOS only:
```bash
cd ios
pod install
cd ..
```

## Running the App

### Android

```bash
npm run android
```

### iOS

```bash
npm run ios
```

## Project Structure

```
AIMagicPhotoEditor/
├── android/                 # Android native code
├── ios/                     # iOS native code
├── src/
│   ├── components/          # React components (Atomic Design)
│   │   ├── atoms/          # Basic UI elements
│   │   ├── molecules/      # Component combinations
│   │   ├── organisms/      # Complex UI sections
│   │   └── templates/      # Page templates
│   ├── services/           # Business logic services
│   │   ├── AssetDownloader.ts
│   │   ├── MediaPipeService.ts
│   │   ├── TFLiteService.ts
│   │   ├── AIWorker.ts
│   │   └── AdService.ts
│   ├── stores/             # State management
│   │   └── useAppStore.ts
│   ├── types/              # TypeScript definitions
│   │   └── index.ts
│   ├── constants/          # App constants
│   │   └── index.ts
│   └── App.tsx            # Main app component
├── index.js               # Entry point
├── package.json
├── tsconfig.json
└── README.md
```

## Architecture

### Atomic Design Pattern
- **Atoms**: Basic UI components (Button, GlassCard, ProgressBar)
- **Molecules**: Component combinations (FilterCard)
- **Organisms**: Complex UI sections (CameraView, EditorScreen, HomeScreen)
- **Templates**: Page templates (ErrorBoundary)

### State Management
- Zustand for global state with persistence
- Separate stores for different concerns

### AI Processing
- Background thread worker for AI operations
- Non-blocking UI during heavy processing
- Progress tracking for model downloads

### Model Management
- On-demand model downloading
- Progress indicators
- Local storage caching
- ~120MB total download size

## Configuration

### AdMob

Update ad unit IDs in `src/constants/index.ts`:

```typescript
export const DEFAULT_ADS_CONFIG: AdConfig = {
  appOpenAdUnitId: 'YOUR_APP_OPEN_AD_UNIT_ID',
  rewardedAdUnitId: 'YOUR_REWARDED_AD_UNIT_ID',
  interstitialAdUnitId: 'YOUR_INTERSTITIAL_AD_UNIT_ID',
  isTestMode: false,
};
```

### AI Models

Model URLs are configured in `src/constants/index.ts`. Replace with your hosted model URLs if needed.

## Performance Optimizations

- GPU acceleration for AI inference (iOS)
- FP16 precision for faster TFLite inference
- Background thread processing
- Image caching
- Lazy loading of components

## Error Handling

- Error boundaries for crash recovery
- Graceful degradation for low-end devices
- User-friendly error messages
- Logging for debugging

## Building for Production

### Android

```bash
cd android
./gradlew assembleRelease
```

### iOS

```bash
cd ios
xcodebuild -workspace AIMagicPhotoEditor.xcworkspace -scheme AIMagicPhotoEditor -configuration Release
```

## Troubleshooting

### Model Download Issues
- Check internet connection
- Verify model URLs are accessible
- Check storage permissions

### Camera Permissions
- Android: Ensure permissions in AndroidManifest.xml
- iOS: Ensure permissions in Info.plist

### Build Errors
- Clear cache: `npm start -- --reset-cache`
- Reinstall pods (iOS): `cd ios && pod install`
- Clean build: `npm run clean`

## License

This project is proprietary software. All rights reserved.

## Support

For issues and questions, please contact the development team.
