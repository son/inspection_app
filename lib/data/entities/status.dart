import 'result.dart';

enum Status {
  complete,
  incomplete;

  static Status fromResults(Iterable<Result> results) {
    if (results.contains(Result.none)) {
      return Status.incomplete;
    }

    return results.every((result) => result == Result.passed)
        ? Status.complete
        : Status.incomplete;
  }
}
