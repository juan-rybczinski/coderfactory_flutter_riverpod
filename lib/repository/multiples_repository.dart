class MultiplesRepository {
  static Future<List<int>> getMultiplesFuture({
  required int number,
}) async {
    await Future.delayed(const Duration(seconds: 1));

    return List.generate(number, (index) => index * number);
  }
}