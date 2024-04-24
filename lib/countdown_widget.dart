import 'dart:async';

import 'package:flutter/material.dart';
import 'package:wakelock/wakelock.dart';

typedef BuildCountDownItemCallBack = Widget Function(BuildContext context, int day, int hour, int minute, int second);

class CountDownWidget extends StatefulWidget {
  const CountDownWidget(
      {super.key,
      required this.countDownTime,
      required this.builder,
      this.duration = const Duration(milliseconds: 1000)});

  /// 倒计时毫秒
  final int countDownTime;

  /// 时间间隔(默认一秒)
  final Duration duration;

  /// 所展示的组件样式
  final BuildCountDownItemCallBack builder;

  @override
  State<CountDownWidget> createState() => _CountDownWidgetState();
}

class _CountDownWidgetState extends State<CountDownWidget> {
  ///直播倒计时
  Timer? _countDownTimer;
  int? countDownTime;
  int time = 0;

  /// 日
  var day = 0;

  /// 时
  var hour = 0;

  /// 分
  var minute = 0;

  /// 秒
  var second = 0;

  @override
  void initState() {
    countDownTime = widget.countDownTime;
    initCountDown();
    super.initState();
  }

  @override
  void dispose() {
    if (_countDownTimer != null && _countDownTimer!.isActive) {
      _countDownTimer!.cancel();
    }
    Wakelock.toggle(enable: false);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(context, day, hour, minute, second);
  }

  initCountDown() {
    // 屏幕常亮
    Wakelock.enable();
    time = countDownTime! ~/ 1000;
    day = time ~/ 3600 ~/ 24;
    hour = time ~/ 3600 % 24;
    minute = time % 3660 ~/ 60;
    second = time % 60;
    _startCountDown();
  }

  void _startCountDown() {
    _countDownTimer = Timer.periodic(widget.duration, (timer) {
      if (time > 0) {
        time -= 1;
        if (time <= 0) {
          _countDownTimer?.cancel();
        } else {
          day = time ~/ 3600 ~/ 24;
          hour = time ~/ 3600 % 24;
          minute = time % 3600 ~/ 60;
          second = time % 60;
        }
      }
      setState(() {});
    });
  }
}
