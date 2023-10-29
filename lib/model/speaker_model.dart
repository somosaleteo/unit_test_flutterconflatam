class SpeakerModel {
  SpeakerModel(String result) {
    speaker = result;
  }
  String speaker = "";

  static fromString(String result) => SpeakerModel(result);
}
