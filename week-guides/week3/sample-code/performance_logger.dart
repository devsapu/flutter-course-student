/// Measures how long something takes — useful for comparing API speeds.
///
/// Records [start] and [end] with [DateTime.now] and prints duration in ms.
class PerformanceLogger {
  PerformanceLogger({DateTime? start})
      : start = start ?? DateTime.now();

  DateTime start;
  DateTime? end;

  /// Call when the work finishes.
  void finish({String label = 'Done'}) {
    end = DateTime.now();
    final ms = durationMs;
    // ignore: avoid_print
    print('[PerformanceLogger] $label: ${ms}ms');
  }

  /// Milliseconds between [start] and [end], or 0 if not finished.
  int get durationMs {
    if (end == null) return 0;
    return end!.difference(start).inMilliseconds;
  }

  /// Runs [action], records time, prints duration, returns the result.
  static Future<T> measure<T>(
    Future<T> Function() action, {
    String label = 'operation',
  }) async {
    final start = DateTime.now();
    try {
      final result = await action();
      final end = DateTime.now();
      final ms = end.difference(start).inMilliseconds;
      // ignore: avoid_print
      print('[PerformanceLogger] $label took ${ms}ms');
      return result;
    } catch (e) {
      final end = DateTime.now();
      final ms = end.difference(start).inMilliseconds;
      // ignore: avoid_print
      print('[PerformanceLogger] $label failed after ${ms}ms: $e');
      rethrow;
    }
  }
}
