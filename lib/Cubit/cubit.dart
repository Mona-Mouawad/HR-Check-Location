import 'package:bloc/bloc.dart';
import 'package:hr/Cubit/States.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HRCubit extends Cubit<HRStates> {
  HRCubit() : super(HRinitialState());

  static HRCubit get(context) => BlocProvider.of(context);

 List<String> RegistrationtypeList  = ['1-حضور','2-أنصراف'];

  String val_Registrationtype = '';
  Future<void> changeDropdown_Registrationtype({required String v}) async {
    val_Registrationtype = v;
    emit(ChangeDropdown_Registrationtypestate());
  }

}