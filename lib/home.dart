import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'core/lang/locale_keys.g.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          LocaleKeys.info.tr(),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text(LocaleKeys.home),
            const Text(LocaleKeys.welcome),
            const Text(LocaleKeys.info),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () async {
                    await context.setLocale(
                      const Locale('en', 'US'),
                    );
                  },
                  child: const Text(
                    "English",
                  ),
                ),
                ElevatedButton(
                  onPressed: () async {
                    await context.setLocale(
                      const Locale('tr', 'TR'),
                    );
                  },
                  child: const Text(
                    "Türkçe",
                  ),
                ),
                ElevatedButton(
                  onPressed: () async {
                    await context.setLocale(
                      const Locale('de', 'DE'),
                    );
                  },
                  child: const Text(
                    "German",
                  ),
                ),
                ElevatedButton(
                  onPressed: () async {
                    await context.setLocale(
                      const Locale('ko', 'KR'),
                    );
                  },
                  child: const Text(
                    "Korean",
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
