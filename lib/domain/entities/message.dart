enum FromWho { me, hers }

class Message {
  final String text;
  final String? img;
  final FromWho fromWho;

  Message({required this.text, this.img, required this.fromWho});
}
