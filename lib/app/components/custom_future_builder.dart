import 'package:flutter/material.dart';
import 'package:getx_skeleton/models/data_result/data_result.dart';
import 'package:getx_skeleton/models/login/login_model.dart';

import 'custom_snackbar.dart';

typedef OnSuccess<T> = Widget Function(T data);
typedef OnError = Widget Function(String msg);
typedef OnDataEmpty = Widget Function();

class CustomFutureBuilder<T> extends StatelessWidget {
  Future<DataResult<T>> future;
  OnError onError;
  OnDataEmpty onDataEmpty;
  OnSuccess<T> onSuccess;
  CustomFutureBuilder(
      {required this.future,
      required this.onError,
      required this.onSuccess,
      required this.onDataEmpty});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FutureBuilder<DataResult<T>>(
        future: future,
        builder: (context, data) {
          if (data.connectionState != ConnectionState.done) {
            return Center(
              child: CircularProgressIndicator(
                color: Theme.of(context).colorScheme.primary,
              ),
            );
          }
          DataResult<T>? result = data.data;
          if (!(result!.status ?? true)) {
            CustomSnackBar.showCustomSnackBar(
                title: "", message: result.message ?? "");
            return onError(result.message ?? "");
          }
          if (result.data is List && result.data.isEmpty) {
            return Center(child: onDataEmpty());
          }
          return onSuccess(result.data);
        });
  }
}
