// ignore_for_file: public_member_api_docs, sort_constructors_first
enum FromWho { me, hers }

class Message {
  final String text;
  final String? imageUrl;
  final FromWho fromWho;

  Message({
    required this.text,
    this.imageUrl,
    required this.fromWho,
  });
}
