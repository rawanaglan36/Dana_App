import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_nti/data/lap_data.dart';
import 'package:project_nti/widgets/loadingWidgets.dart';

import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {

  HomeCubit() : super(HomeInitial());
  LapData lap = LapData();
  getDataCubit() async {
    emit(HomeLoading());
    emit(HomeSuccess(lap: await lap.getData()));
  }
}
