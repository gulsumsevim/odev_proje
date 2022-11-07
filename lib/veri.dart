import 'dart:async';

class BlockDataStream {
  void setCount({required int index, required int value}) {
    _controller.sink.add({"index": index, "value": value});
  }

  final _controller = StreamController<Map<String, int>>();

  void dispose() {
    _controller.close();
  }

  Stream<Map<String, int>> get stream => _controller.stream;
}
