import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'take_image_state.dart';

class TakeImageCubit extends Cubit<TakeImageState> {
  TakeImageCubit() : super(TakeImageInitial());

  void onChooseImage(File imageFile) {
    emit(TakeImageSuccess(imageFile));
  }
}
