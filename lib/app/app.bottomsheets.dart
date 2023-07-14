// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedBottomsheetGenerator
// **************************************************************************

// ignore: implementation_imports
import 'package:flutter/src/widgets/framework.dart';
import 'package:stacked_services/stacked_services.dart';

import '../ui/bottom_sheets/notice/notice_sheet.dart';
import 'app.locator.dart';

enum BottomSheetType {
  notice,
}

void setupBottomSheetUi() {
  final BottomSheetService bottomsheetService = locator<BottomSheetService>();

  // ignore: always_specify_types
  final Map<BottomSheetType, SheetBuilder> builders = {
    BottomSheetType.notice:
        // ignore: always_specify_types
        (BuildContext context, SheetRequest<dynamic> request, completer) =>
            NoticeSheet(request: request, completer: completer),
  };

  bottomsheetService.setCustomSheetBuilders(builders);
}
