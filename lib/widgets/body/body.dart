import 'package:flutter/material.dart';
import 'package:telugu_mahasabha_web/widgets/new_events/new_events.dart';
import 'package:telugu_mahasabha_web/widgets/photo_carousel/photo_carousel.dart';
import 'package:telugu_mahasabha_web/widgets/updates_box/updates_box.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UpdatesBox(),
            Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  NewEvents(),
                  PhotoCarousel(),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
