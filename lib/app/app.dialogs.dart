// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedDialogGenerator
// **************************************************************************

// ignore: implementation_imports
import 'package:flutter/src/widgets/framework.dart';
import 'package:stacked_services/stacked_services.dart';

import '../ui/dialogs/info_alert/info_alert_dialog.dart';
import 'app.locator.dart';

enum DialogType {
  infoAlert,
}

void setupDialogUi() {
  final DialogService dialogService = locator<DialogService>();

  // ignore: always_specify_types
  final Map<DialogType, DialogBuilder> builders = {
    DialogType.infoAlert:
        // ignore: always_specify_types
        (BuildContext context, DialogRequest<dynamic> request, completer) =>
            InfoAlertDialog(request: request, completer: completer),
  };

  dialogService.registerCustomDialogBuilders(builders);
}
