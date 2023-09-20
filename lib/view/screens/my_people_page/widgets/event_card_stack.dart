import 'package:event_app/util/color_lib.dart';
import 'package:event_app/util/fonts.dart';
import 'package:event_app/view/widgets/stroke_text.dart';
import 'package:flutter/material.dart';

class EventCardStack extends StatelessWidget {
  const EventCardStack({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 177,
          height: 177,
          decoration: ShapeDecoration(
            color: const Color(0xFFEF8F76),
            image: const DecorationImage(
              image: AssetImage("assets/images/techies.png"),
              fit: BoxFit.none,
            ),
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                width: 2,
                strokeAlign: BorderSide.strokeAlignCenter,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            shadows: const [
              BoxShadow(
                color: Color(0xFF000000),
                blurRadius: 0,
                offset: Offset(4, 4),
                spreadRadius: 0,
              )
            ],
          ),
          child: Stack(
            children: [
              Positioned(
                  bottom: 10,
                  right: 10,
                  child: Container(
                    width: 75,
                    height: 27,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    decoration: ShapeDecoration(
                      color: const Color(0xFFDEEDF7),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(width: 1),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      shadows: const [
                        BoxShadow(
                          color: Color(0xFF000000),
                          blurRadius: 0,
                          offset: Offset(2, 2),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '2 events',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  )),
            ],
          ),
        ),
        SizedBox(height: size.height * 0.025),
        StrokeText(
          text: 'Techies 💻',
          textStyle: Fonts.tropiline(
            color: ColorLib.orange,
            // fontSize: 48,
            fontWeight: FontWeight.w800,
            // height: 0.02,
            // letterSpacing: 0.56,
          ),
          strokeColor: ColorLib.black,
          strokeWidth: 3,
        ),
      ],
    );
  }
}
