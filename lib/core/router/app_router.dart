import 'package:auto_route/auto_route.dart';
import 'package:flutter_joke_app_mmi/features/navigation/presentation/screen/navigation_screen.dart';

import '../../features/authorization/presentation/screen/authorization_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [AutoRoute(page: AuthorizationRoute.page, initial: true), AutoRoute(page: NavigationRoute.page)];
}
