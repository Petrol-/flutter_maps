import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'stores/application_store.dart';
import 'views/application_view.dart';

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<ApplicationStore>(
          builder :(_) => ApplicationStore(),
        ),

      ],
      child: ApplicationView(),
    );
  }
}

