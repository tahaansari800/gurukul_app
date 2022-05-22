import 'dart:math';
import 'package:flutter/material.dart';
import '../constant.dart';
import 'componant/DigitalWatch/custom_date_time.dart';

class CustomPExample extends StatefulWidget {
  static String routName = '/custom_example';
  const CustomPExample({Key? key}) : super(key: key);

  @override
  State<CustomPExample> createState() => _CustomPExampleState();
}

class _CustomPExampleState extends State<CustomPExample> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 250,
      width: 250,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              // color: orange,

              alignment: Alignment.center,

              child: CustomPaint(
               
                painter: ClockPainter(size: 1, text: ''),
              ),
            ),
          ),
          const Align(
              alignment: Alignment.center, child: DateTimeDigitalWatch())
        ],
      ),
    );
  }
}

class ClockPainter extends CustomPainter {
  var dateTime = DateTime.now();

  ClockPainter({
    required String text,
    required int size,
  });
  void _drawSpeenWheel(Canvas canvas, Paint paint,
      {required Offset center,
      required double radius,
      required List<double> sources,
      required List<Color> colors,
      required double startRadian}) {
    var total = 0.0;
    for (var d in sources) {
      total += d;
    }
    List<double> radians = [];
    for (var data in sources) {
      radians.add(data * 2 * pi / total);
    }
    for (int i = 0; i < radians.length; i++) {
      paint.color = colors[i % colors.length];
      canvas.drawArc(Rect.fromCircle(center: center, radius: radius),
          startRadian, radians[i], true, paint);
      startRadian += radians[i];
    }
  }

  //*******************************************/
  // Path getWheelPath(
  //     double radius, Offset wheelSize, double fromRadius, double toRadius) {
  //   return Path()
  //     ..moveTo(radius, radius)
  //     ..arcTo(Rect.fromCircle(radius: radius, center: wheelSize), fromRadius,
  //         toRadius, false)
  //     ..close();
  // }

  // Paint getColoredPaint(Color color) {
  //   Paint paint = Paint();
  //   paint.color = color;
  //   return paint;
  // }

  //60 sec - 360, 1 sec - 6degree
  //12 hours  - 360, 1 hour - 30degrees, 1 min - 0.5degrees

  @override
  void paint(Canvas canvas, Size size) {
    var centerX = size.width / 2;
    var centerY = size.height / 2;
    var center = Offset(centerX, centerY);
    var radius = min(centerX, centerY);
    var fillBrush = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.fill
      ..strokeCap = StrokeCap.round;
    var outlineBrush = Paint()
      ..color = orange
      ..style = PaintingStyle.stroke
      ..strokeWidth = 15;

    var centerFillBrush = Paint()..color = const Color(0xFFEAECFF);

    var secHandBrush = Paint()
      ..color = orange
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 5;

    var minHandBrush = Paint()
      ..shader =
          const RadialGradient(colors: [Color(0xFF748EF6), Color(0xFF77DDFF)])
              .createShader(Rect.fromCircle(center: center, radius: radius))
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 8;

    var hourHandBrush = Paint()
      ..shader =
          const RadialGradient(colors: [Color(0xFFEA74AB), Color(0xFFC279FB)])
              .createShader(Rect.fromCircle(center: center, radius: radius))
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 12;

    var dashBrush = Paint()
      ..color = orange
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 2;
    var dashBrush2 = Paint()
      ..color = textColor
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 2;

    // canvas.drawCircle(center, 120, fillBrush);

    canvas.drawCircle(center, 120, outlineBrush);
    // canvas.drawCircle(Offset(200, 200), 100, fillBrush);
    _drawSpeenWheel(
      canvas,
      fillBrush,
      sources: [20, 5],
      colors: [
        Colors.white,
        const Color(0XFFFF9C6F),
      ],
      center: center,
      radius: 113,
      startRadian: 0.1,
    );
// _drawSpeenWheel(
//       canvas,
//       fillBrush,
//       sources: [22, 3],
//       colors: [
//         Colors.white,
//         const Color(0XFFFF9C6F),
//       ],
//       center: center,
//       radius: 110,
//       startRadian: 0.1,
//     );
    var outerCircleRadius = 90;
    var innerCircleRadius = 90 - 14;
    for (double i = 0; i < 360; i += 90) {
      var x1 = centerX + outerCircleRadius * cos(i * pi / 180);
      var y1 = centerX + outerCircleRadius * sin(i * pi / 180);

      var x2 = centerX + innerCircleRadius * cos(i * pi / 180);
      var y2 = centerX + innerCircleRadius * sin(i * pi / 180);
      canvas.drawLine(Offset(x1, y1), Offset(x2, y2), dashBrush2);
    }

    var outerCircleRadius1 = 100;
    var innerCircleRadius1 = 100 - 1;
    for (double i = 0; i < 360; i += 10) {
      var x1 = centerX + outerCircleRadius1 * cos(i * pi / 180);
      var y1 = centerX + outerCircleRadius1 * sin(i * pi / 180);

      var x2 = centerX + innerCircleRadius1 * cos(i * pi / 180);
      var y2 = centerX + innerCircleRadius1 * sin(i * pi / 180);
      canvas.drawLine(Offset(x1, y1), Offset(x2, y2), dashBrush);
    }

//***************************

    // double wheelRadius = 110;
    // // Offset wheelSize = center;
    // double nbElem = 6;
    // double radius2 = (2 * pi) / nbElem;
    // canvas.drawPath(getWheelPath(wheelRadius, center, wheelRadius, radius2),
    //     getColoredPaint(const Color(0XFFFF9C6F)));
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
