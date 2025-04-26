// animation duration class
class AnimationConstants {
  // Genel süreler
  static const Duration short = Duration(milliseconds: 150);
  static const Duration medium = Duration(milliseconds: 250);
  static const Duration long = Duration(milliseconds: 400);

  // special animations durations
  static const Duration messageSend = Duration(
    milliseconds: 180,
  ); // Yeni mesaj gönderimi
  static const Duration messageRead = Duration(
    milliseconds: 150,
  ); // Okundu simgesi
  static const Duration typingIndicator = Duration(
    milliseconds: 300,
  ); // Yazıyor animasyonu
  static const Duration screenTransition = Duration(
    milliseconds: 280,
  ); // Sayfa geçişleri
  static const Duration reactionPopup = Duration(
    milliseconds: 200,
  ); // Emoji tepki popup
  static const Duration newMessageNotification = Duration(
    milliseconds: 250,
  ); // Yeni mesaj bildirimi
  static const Duration scrollToBottomButton = Duration(
    milliseconds: 250,
  ); // Scroll-to-bottom butonu
  static const Duration emojiPicker = Duration(
    milliseconds: 220,
  ); // Emoji picker açılışı
  static const Duration messageDelete = Duration(
    milliseconds: 230,
  ); // Mesaj silme/geri çekme
  static const Duration voiceWaveAnimation = Duration(
    milliseconds: 150,
  ); // Sesli mesaj dalga animasyonu
}
