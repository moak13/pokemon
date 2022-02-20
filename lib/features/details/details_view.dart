import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'view_model/details_viewmodel.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DetailsViewModel>.reactive(
      viewModelBuilder: () => DetailsViewModel(),
      builder: (context, model, child) {
        return const Scaffold(
          body: Center(
            child: Text(
              'Details View',
            ),
          ),
        );
      },
    );
  }
}
