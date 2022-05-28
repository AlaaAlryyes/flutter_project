import 'dart:isolate';

void bookAppointment(String dID, String uID, String date) {}

Future<Map<String, dynamic>> notifyAppointment() async {
  final p = ReceivePort();

  await Isolate.spawn((message) {
    // ignore: dead_code
    while (true) {
      if (true) {
        print("hi");
      }
    }
  }, p.sendPort);
  return await p.first as Map<String, dynamic>;
}
