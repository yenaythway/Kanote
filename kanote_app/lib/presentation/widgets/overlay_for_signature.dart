import 'dart:typed_data';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kanote_app/extensions/context_extensions.dart';
import 'package:kanote_app/presentation/resources/colors.dart';
import 'package:kanote_app/presentation/resources/dimens.dart';
import 'package:kanote_app/presentation/viewmodels/create/create_auction/add_your_artwork_provider.dart';
import 'package:kanote_app/presentation/widgets/kn_button_view.dart';
import 'package:painter/painter.dart';

late OverlayEntry overlayEntryForSignature;

void insertOverlayForSignature(BuildContext context, WidgetRef ref) {
  PainterController _controller = PainterController()
    ..thickness = 5.0
    ..backgroundColor = Colors.white
    ..drawColor = Color.fromRGBO(0, 0, 0, 0.7);
  overlayEntryForSignature = OverlayEntry(
    builder: (context) {
      return TweenAnimationBuilder(
        tween: Tween<double>(begin: 0, end: 1),
        duration: Duration(milliseconds: 300),
        builder: (context, double value, child) => Opacity(
          opacity: value,
          child: BackdropFilter(
            filter: new ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
            child: Scaffold(
              backgroundColor: Color.fromRGBO(0, 0, 0, 0.8),
              body: Center(
                child: Transform.scale(
                  scale: value,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * 2 / 3,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(MARGIN_SMALL),
                          border: Border.all(
                            color: kHintTextColor,
                          ),
                        ),
                        child: Stack(
                          children: [
                            Painter(_controller),
                            Padding(
                              padding: const EdgeInsets.only(
                                right: MARGIN_MEDIUM_2,
                                top: MARGIN_SMALL,
                              ),
                              child: Align(
                                alignment: Alignment.topRight,
                                child: IconButton(
                                  onPressed: () async {
                                    overlayEntryForSignature.remove();
                                  },
                                  constraints: BoxConstraints(),
                                  padding: EdgeInsets.zero,
                                  icon: Icon(
                                    Icons.clear_rounded,
                                    color: Colors.black,
                                    size: MARGIN_XLARGE,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: MARGIN_MEDIUM_2),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
                        child: KnButtonView(
                          label: "Apply your signature",
                          onTap: () async {
                            Uint8List image = await _controller.finish().toPNG();
                            print("image is $image");
                            ref.read(addYourArtworkProvider).onTapApplySignature(image);
                            overlayEntryForSignature.remove();
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    },
  );

  return Overlay.of(context).insert(overlayEntryForSignature);
}
