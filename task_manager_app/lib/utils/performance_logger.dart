/// Wraps async work and reports how long it took.
class PerformanceLogger {
  static Future<MeasuredResult<T>> measure<T>(Future<T> Function() action) async {
    final startedAt = DateTime.now();
    final data = await action();
    final endedAt = DateTime.now();
    return MeasuredResult<T>(
      data: data,
      durationMs: endedAt.difference(startedAt).inMilliseconds,
    );
  }
}

class MeasuredResult<T> {
  const MeasuredResult({required this.data, required this.durationMs});

  final T data;
  final int durationMs;
}
