import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hr/Cubit/cubit.dart';
import 'package:hr/shared/Location.dart';
import 'Screens/LayoutScreen.dart';
import 'Screens/goINOUT_SignUp.dart';
import 'shared/helper/Dio_Helper.dart';
import 'shared/helper/cach_Helper.dart';
import 'shared/style/theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Dio_Helper.init();
  await Cach_helper.init();
  await storeLocation();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return   MultiBlocProvider(
        providers: [
        BlocProvider(create:(BuildContext context)=>HRCubit()),],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: lightTheme,
        themeMode: ThemeMode.light,
        home:
        Directionality( // <-- Add this Directionality
          textDirection: TextDirection.rtl,
          child: LayoutScreen(),
        )
      ),
    );
  }
}
