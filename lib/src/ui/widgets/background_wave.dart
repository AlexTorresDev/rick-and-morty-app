import 'package:flutter/material.dart';
import 'package:rick_and_morty_app/src/ui/commons/colors.dart';

class BackgroundWave extends StatelessWidget {
  const BackgroundWave({
    Key? key,
    required this.showSearchBar,
  }) : super(key: key);

  final bool showSearchBar;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: showSearchBar ? 240 : 160,
      child: ClipPath(
        clipper: BackgroundWaveClipper(minSize: showSearchBar ? 120 : 110),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: showSearchBar ? 240 : 160,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [kGreen, kYellow],
            ),
          ),
        ),
      ),
    );
  }
}

class BackgroundWaveClipper extends CustomClipper<Path> {
  const BackgroundWaveClipper({
    required this.minSize,
  });

  final double minSize;

  @override
  Path getClip(Size size) {
    var path = Path();

    final p1Diff = ((minSize - size.height) * 0.3).truncate().abs();
    path.lineTo(0.0, size.height - p1Diff);

    final controlPoint = Offset(size.width * 0.4, size.height);
    final endPoint = Offset(size.width, minSize);

    path.quadraticBezierTo(
        controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy);

    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(BackgroundWaveClipper oldClipper) => oldClipper != this;
}
