import 'dart:math';
import 'package:open_url/open_url.dart';

void main() {
  switch (soundCardOnBoard()) {
    case true:
      listenPicknick();
    case false:
      readPicknick();
  }
}

bool soundCardOnBoard() => Random().nextInt(2) == 1;

bool timeOk() {
  if (DateTime.now().hour < 23) {
    return true;
  } else {
    print('Time to sleep...');
    return false;
  }
}

bool neighboorsKnock() {
  if (Random().nextInt(2) == 1) {
    print('Way too noisy...');
    return true;
  } else {
    return false;
  }
}

void listenPicknick() {
  if (timeOk() && !neighboorsKnock()) 
    openUrl('https://www.youtube.com/watch?v=HVwsOOE3i2g');
}

void readPicknick() {
  if (timeOk()) 
    openUrl('https://www.piknik.info/lyrics/index/song/24');
}
