import 'dart:math';

import 'package:flutter/painting.dart';

abstract class AppGradients {
  Gradient get background;
}

class AppGradientsDefault implements AppGradients {
  Gradient get background => RadialGradient(
        colors: [
          Color(0xFF45CC93),
          Color(0XFF40B28C),
        ],
        transform: GradientRotation(2.35619 * pi),
      );
}
