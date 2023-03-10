class MultiplesRepository {
  static Future<List<int>> getMultiplesFuture({
    required int number,
  }) async {
    await Future.delayed(const Duration(seconds: 1));

    return List.generate(number, (index) => index * number);
  }

  static Stream<List<int>> getMultiplesStream({
    required int number,
  }) async* {
    for (int i = 0; i < 10; i++) {
      await Future.delayed(const Duration(seconds: 1));

      yield List.generate(i, (index) => index * number);
    }
  }
}
