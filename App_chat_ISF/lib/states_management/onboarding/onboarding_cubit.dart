// //@dart=2.3
// import 'dart:io';

// import 'package:chat/chat.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// //import 'package:app_chat/cache/local_cache.dart';
// import 'package:app_chat/data/services/image_uploader.dart';
// import 'package:app_chat/states_management/onboarding/onboarding_state.dart';

// class OnboardingCubit extends Cubit<OnboardingState> {
//   final IUserService _userService;
//   final ImageUploader _imageUploader;
//   OnboardingCubit(this._userService, this._imageUploader)
//   // final ILocalCache _localCache;
//   // OnboardingCubit(this._userService, this._imageUploader, this._localCache)
//       : super(OnboardingInitial());

//   Future<void> connect(String name, File profileImage) async {
//     emit(Loading());
//     final url = await _imageUploader.uploadImage(profileImage);
//     final user = User(
//       username: name,
//       photoUrl: url,
//       active: true,
//       lastseen: DateTime.now(),
//     );
//     final createdUser = await _userService.connect(user);
//     // final userJson = {
//     //   'username': createdUser.username,
//     //   'active': true,
//     //   'photo_url': createdUser.photoUrl,
//     //   'id': createdUser.id
//     // };
//     // await _localCache.save('USER', userJson);
//     emit(OnboardingSuccess(createdUser));
//   }
// }