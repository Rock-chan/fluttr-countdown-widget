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

## Usage


```dart
CountDownWidget(
  countDownTime: timeStamp,
  builder: (context, day, hour, minute, second) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 168.0),
      height: 18.0,
      alignment: Alignment.center,
      margin: const EdgeInsets.only(top: 3.5),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "$day",
              style: const TextStyle(fontSize: 13.0, color: Colors.black, fontWeight: FontWeight.w500),
            ),
            ...
          ],
        ),
      ),
    );
  },
)
```

## More
For more question, you can email me: chenzhangjin@outlook.com

## Linked
https://pub.dev/packages/flutter_countdown_widget 