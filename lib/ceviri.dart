import 'package:get/get.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {'hello': 'Hello World', "button_text": "you have cllicked"},
        'tr_TR': {'hello': 'Merhaba', "button_text": "Su kadar tıklandı"}
      };
}
