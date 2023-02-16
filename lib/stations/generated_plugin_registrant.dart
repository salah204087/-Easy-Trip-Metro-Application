import 'package:url_launcher_web/url_launcher_web.dart';

import 'package:flutter_web_plugins/flutter_web_plugins.dart';

void registerPlugins(Registrar registrar) {
  UrlLauncherPlugin.registerWith(registrar);
  registrar.registerMessageHandler();
}
