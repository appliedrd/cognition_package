part of cognition_package_model;

/// Delayed Recall Test Result
@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class RPDelayedRecallResult extends RPActivityResult {
  RPDelayedRecallResult({required String identifier})
      : super(identifier: identifier);

  /// make result for Delayed Recall Test
  /// wordList: list of words to be recalled
  /// resultlist: list of recalled words
  /// timetaken: time taken to recall
  /// score: score of the test calculated in model class
  RPActivityResult makeResult(List<String> wordlist, List<String> resultlist,
      int timeTaken, int score) {
    var res = RPActivityResult(identifier: identifier);
    res.results.addAll({'wordlist delayed': wordlist});
    res.results.addAll({'resultlist3': resultlist});
    res.results.addAll({'time taken': timeTaken});
    res.results.addAll({'score': score});
    return res;
  }

  factory RPDelayedRecallResult.fromJson(Map<String, dynamic> json) =>
      _$RPDelayedRecallResultFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$RPDelayedRecallResultToJson(this);
}
