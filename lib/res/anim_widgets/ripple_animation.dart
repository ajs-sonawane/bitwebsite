import 'package:bit_web/res/anim_widgets/circle_painter.dart';
import 'package:bit_web/res/anim_widgets/circle_wave.dart';
import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';

class RipplesAnimation extends StatefulWidget {
  const RipplesAnimation({
    Key? key,
    this.size = 80.0,
    this.color = Colors.red,
    this.onPressed,
    @required this.child,
  }) : super(key: key);
  final double? size;
  final Color? color;
  final Widget? child;
  final VoidCallback? onPressed;

  @override
  _RipplesAnimationState createState() => _RipplesAnimationState();
}

class _RipplesAnimationState extends State<RipplesAnimation>
    with TickerProviderStateMixin {
  AnimationController? _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  Widget _button() {
    return Center(
      child: ScaleTransition(
          scale: Tween(begin: 0.95, end: 1.0).animate(
            CurvedAnimation(
              parent: _controller!,
              curve: const CurveWave(),
            ),
          ),
          child: Icon(
            Icons.speaker_phone,
            size: 44,
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomPaint(
        painter: CirclePainter(
          _controller!,
          color: widget.color,
        ),
        child: SizedBox(
          width: widget.size! * 4.125,
          height: widget.size! * 4.125,
          child: _button(),
        ),
      ),
    );
  }
}
