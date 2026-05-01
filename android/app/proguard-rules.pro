# Add project specific ProGuard rules here.
-keep class com.google.android.gms.** { *; }
-dontwarn com.google.android.gms.**

# Keep TensorFlow Lite
-keep class org.tensorflow.lite.** { *; }
-dontwarn org.tensorflow.lite.**

# Keep MediaPipe
-keep class com.google.mediapipe.** { *; }
-dontwarn com.google.mediapipe.**

# Keep React Native
-keep,allowobfuscation,allowshrinking class com.facebook.react.** { *; }
-dontwarn com.facebook.react.**
