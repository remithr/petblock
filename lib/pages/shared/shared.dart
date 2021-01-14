import 'package:flutter/material.dart';
import 'package:petblock/enums/enums.dart';

import 'package:petblock/ui/loaders.dart';

class CommonWidgets {
  Widget getProgressBar(ViewState viewState) {
    if (viewState == ViewState.Busy) {
      return Container(
        color: Colors.white.withAlpha(204),
        child: Center(
          child: ColorLoader5(
            dotOneColor: Colors.blue,
            dotTwoColor: Colors.lightBlue,
            dotThreeColor: Colors.lightBlueAccent,
          ),
        ),
      );
    } else {
      return Container();
    }
  }
}
