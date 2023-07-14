import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../common/app_colors.dart';
import '../../common/ui_helpers.dart';
import 'info_alert_dialog_model.dart';

const double _graphicSize = 60;

class InfoAlertDialog extends StackedView<InfoAlertDialogModel> {
  const InfoAlertDialog({
    super.key,
    required this.request,
    required this.completer,
  });
  final DialogRequest<dynamic> request;
  // ignore: always_specify_types
  final Function(DialogResponse<dynamic>) completer;

  @override
  Widget builder(
    BuildContext context,
    InfoAlertDialogModel viewModel,
    Widget? child,
  ) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      backgroundColor: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          // ignore: always_specify_types
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // ignore: always_specify_types
              children: [
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: always_specify_types
                    children: [
                      Text(
                        request.title!,
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w900),
                      ),
                      verticalSpaceTiny,
                      Text(
                        request.description!,
                        style:
                            const TextStyle(fontSize: 14, color: kcMediumGrey),
                        maxLines: 3,
                        softWrap: true,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: _graphicSize,
                  height: _graphicSize,
                  decoration: const BoxDecoration(
                    color: Color(0xffF6E7B0),
                    borderRadius: BorderRadius.all(
                      Radius.circular(_graphicSize / 2),
                    ),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    '⭐️',
                    style: TextStyle(fontSize: 30),
                  ),
                )
              ],
            ),
            verticalSpaceMedium,
            GestureDetector(
              // ignore: always_specify_types
              onTap: () => completer(DialogResponse(
                confirmed: true,
              )),
              child: Container(
                height: 50,
                width: double.infinity,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  'Got it',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  InfoAlertDialogModel viewModelBuilder(BuildContext context) =>
      InfoAlertDialogModel();
}
