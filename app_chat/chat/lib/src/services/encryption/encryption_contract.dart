//@dart =2.3
abstract class IEncryption {
  String encrypt(String text);
  String decrypt(String encryptedText);
}