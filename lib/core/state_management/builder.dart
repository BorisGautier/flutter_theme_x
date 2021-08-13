import 'package:flutter/material.dart';
import 'package:flutter_theme_x/core/state_management/controller.dart';

typedef FxControllerBuilder<T> = Widget Function(T controller);

class FxBuilder<T extends FxController> extends StatefulWidget {
  final FxControllerBuilder<T> builder;
  final T? controller;

  final void Function(FxBuilderState<T> state)? initState,
      dispose,
      didChangeDependencies;
  final void Function(FxBuilder oldWidget, FxBuilderState<T> state)?
      didUpdateWidget;

  const FxBuilder({
    Key? key,
    required this.controller,
    required this.builder,
    this.initState,
    this.dispose,
    this.didChangeDependencies,
    this.didUpdateWidget,
  }) : super(key: key);

  @override
  FxBuilderState<T> createState() => FxBuilderState<T>();
}

class FxBuilderState<T extends FxController>
    extends State<FxBuilder<T>> //with GetStateUpdaterMixin
{
  T? controller;
  VoidCallback? _remove;

  @override
  void initState() {
    super.initState();
    widget.initState?.call(this);
    controller = widget.controller;
    controller?.context = context;
    controller?.initState();
    _subscribeToController();
  }

  /*
    This method is called immediately after initState on the first time the widget is built.
    */

  /*
    build(): This method is called often. It is required, and it must return a Widget.
    */

  /*
    If the parent widget changes and has to rebuild this widget (because it needs to give it different data),
    but it's being rebuilt with the same runtimeType, then this method is called.
    This is because Flutter is re-using the state, which is long lived.
    In this case, you may want to initialize some data again, as you would in initState.
    */

  /*
    Deactivate is called when State is removed from the tree,
    but it might be reinserted before the current frame change is finished.
    This method exists basically because State objects can be moved from one point in a tree to another.
    */
  @override
  void deactivate() {
    print("deactivate");
    super.deactivate();
  }

  /*
    Dispose is called when the State object is removed, which is permanent.
    This method is where you should unsubscribe and cancel all animations, streams, etc.
    */

  /// Register to listen Controller's events.
  /// It gets a reference to the remove() callback, to delete the
  /// setState "link" from the Controller.
  void _subscribeToController() {
    _remove?.call();
    _remove = controller?.addListener(update);
  }

  void update() {
    if (mounted) setState(() {});
  }

  @override
  void dispose() {
    super.dispose();
    widget.dispose?.call(this);
    _remove?.call();
    _remove = null;
    controller?.dispose();
    controller = null;
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("didChangeDependencies");

    widget.didChangeDependencies?.call(this);
  }

  @override
  void didUpdateWidget(FxBuilder oldWidget) {
    print("didUpdateWidget");
    super.didUpdateWidget(oldWidget as FxBuilder<T>);
    widget.didUpdateWidget?.call(oldWidget, this);
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(controller!);
  }
}
