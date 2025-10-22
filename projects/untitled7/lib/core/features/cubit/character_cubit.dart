import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:untitled7/data/data.dart';
import 'package:untitled7/model/character_model.dart';

part 'character_state.dart';

class CharacterCubit extends Cubit<CharacterState> {
  CharacterCubit() : super(CharacterInitial());
  AppData appData = AppData();
  getDataCharacte()async{
      emit( Scucess(char: await appData.getData()));
  }
}
