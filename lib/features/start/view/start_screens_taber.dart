import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../router/router.dart';

@RoutePage()
class StartScreensTaber extends StatefulWidget {
  const StartScreensTaber({super.key});

  @override
  State<StartScreensTaber> createState() => _StartScreensTaberState();
}

class _StartScreensTaberState extends State<StartScreensTaber> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AutoTabsRouter(
        routes: [FirstStartRoute(), SecondStartRoute(), ThirdStartRoute()],
      ),
    );
  }
}
