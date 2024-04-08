import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:space_x/core/Api/dio_factory.dart';
import 'package:space_x/core/cache_helper/cache_helper.dart';
import 'package:space_x/core/di.dart';
import 'package:space_x/core/routing/app_router.dart';
import 'package:space_x/core/routing/routes.dart';
import 'package:space_x/core/theming/themes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupGetIt();
  await DioFactory.init();
  await CacheHelper.init();

  runApp(SpaceX(
    appRouter: AppRouter(),
  ));
}

class SpaceX extends StatelessWidget {
  final AppRouter appRouter;

  const SpaceX({
    super.key,
    required this.appRouter,
  });

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: AnnotatedRegion<SystemUiOverlayStyle>(
        value: const SystemUiOverlayStyle(
          statusBarBrightness: Brightness.light,
        ),
        child: MaterialApp(
          title: 'Space X',
          debugShowCheckedModeBanner: false,
          theme: lightTheme,
          themeMode: ThemeMode.light,
          onGenerateRoute: appRouter.generateRoute,
         initialRoute: Routes.kRocketView,
       
        ),
      ),
    );
  }
}
