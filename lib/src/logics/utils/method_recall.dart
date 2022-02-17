import 'dialog_helper.dart';

/// showing dialog and recall the method in `waitingTime` second(s)
///
/// the `function` parameter must be type of Function
Future<void> recallMethodWithDelay(Object function,
    [int waitingTime = 15]) async {
  if (function is Function) {
    showWarningSnackBar('Problem occured. Retryin in ${waitingTime}s');

    await Future<void>.delayed(Duration(seconds: waitingTime));

    await function.call();
  } else {
    // do nothing
  }
}

// do i really need this?

// Future<void> tryAgainDialog() async {
//   locator<GlobalKeyService>()
//       .showWarningSnackBar('Problem occured. Please try again some time');
// }
