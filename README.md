<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->

# Buy me a crypto coffee

## Features

A Flutter package that helps you to integrate [Buy me a crypto coffee](https://www.buymeacryptocoffee.xyz/) widget in your flutter app.


[me](https://github.com/AntoTomAbraham/buy_me_crypto_coffee/blob/main/gif/DemoImage.jpg)

## Getting started

#### You have to import

```dart
your code
```

#### Then you can use the Widget.

```dart
Container(
    width: 180,
    child: BuyMeACryptoCoffeeWidget(
    address: "Enter your address here",
            ),
        )
```

For a more in depth example please go to the Example Folder [Github](https://github.com/AntoTomAbraham/buy_me_crypto_coffee).

## Configuration

### IOS

Add any URL schemes passed as LSApplicationQueriesSchemes entries in your Info.plist file.

Example:

```dart
<key>LSApplicationQueriesSchemes</key>
<array>
  <string>https</string>
  <string>http</string>
</array>
```

### ANDROID

Starting from API 30 Android requires package visibility configuration in your AndroidManifest.xml otherwise it will return false. A <queries> element must be added to your manifest as a child of the root element.

```dart
<queries>
  <!-- If your app opens https URLs -->
  <intent>
    <action android:name="android.intent.action.VIEW" />
    <data android:scheme="https" />
  </intent>
</queries>
```

## About the Developer

[Twitter](https://mobile.twitter.com/AntoTomAbraham)
[Linkedin](https://www.linkedin.com/in/anto-tom-abraham-6234441a8/)
[Github](https://github.com/AntoTomAbraham)