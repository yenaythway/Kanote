part of 'take_image_cubit.dart';

abstract class TakeImageState extends Equatable {
  const TakeImageState();

  @override
  List<Object> get props => [];
}

class TakeImageInitial extends TakeImageState {

}

class TakeImageSuccess extends TakeImageState {
  final File imageFile;

  const TakeImageSuccess(this.imageFile);
}

class TakeImageError extends TakeImageState {

}