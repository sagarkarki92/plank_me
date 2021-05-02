import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:plank_me/data/services/local_storage_service.dart';
import 'package:plank_me/presentation/app/app_service/base_cubit.dart';

part 'app_state.dart';
part 'app_cubit.freezed.dart';

class AppCubit extends BaseCubit<AppState> {
  AppCubit() : super(AppState.initial());

  bool isSessionAvailable() {
    return Hive.box(StorageKeys.userDetails).containsKey('name');
  }
}
