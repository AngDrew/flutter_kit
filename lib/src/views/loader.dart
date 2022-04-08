import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';

import '../logics/view_models/base_vm.dart';

/// note: T must be inheritance of `BaseViewModel`
class Loader<T extends BaseViewModel> extends StatefulWidget {
  const Loader({
    required this.builder,
    this.onReady,
    Key? key,
  }) : super(key: key);

  final Widget Function(BuildContext context, T vm, Widget? child) builder;
  final Future<void> Function(T vm)? onReady;

  @override
  _Loader<T> createState() => _Loader<T>();
}

class _Loader<T extends BaseViewModel> extends State<Loader<T>> {
  late final T vm = context.read<T>();

  @override
  void initState() {
    super.initState();
    final DateTime start = DateTime.now();
    late final DateTime end;

    SchedulerBinding.instance?.addPostFrameCallback(
      (Duration timeStamp) async {
        await widget.onReady?.call(vm);
        end = DateTime.now();

        log(
          '[$T] took ${end.difference(start).inMilliseconds}ms '
          'for second build include init',
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Consumer<T>(
        builder: widget.builder,
      ),
    );
  }
}
