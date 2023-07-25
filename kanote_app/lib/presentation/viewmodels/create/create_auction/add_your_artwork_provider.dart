import 'dart:typed_data';

import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddYourArtworkBloc extends ChangeNotifier {
  /// States
  Uint8List? image;
  Ref ref;

  AddYourArtworkBloc(this.ref);

  void onTapApplySignature(Uint8List? image) {
    this.image = image;
    notifyListeners();
  }
}

final addYourArtworkProvider = ChangeNotifierProvider.autoDispose<AddYourArtworkBloc>((ref) {
  return AddYourArtworkBloc(ref);
});