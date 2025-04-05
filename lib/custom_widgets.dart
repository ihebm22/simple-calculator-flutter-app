import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/diagnostics.dart';
import 'record_model.dart';

Widget calculatorButton(
    {required String text, required VoidCallback onPressed}) {
  return ElevatedButton(
    onPressed: onPressed,
    style: ElevatedButton.styleFrom(
      padding: const EdgeInsets.all(20),
      backgroundColor: Color.fromARGB(255, 169, 62, 112),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
    child: Text(
      text,
      style: const TextStyle(fontSize: 24, color: Colors.white),
    ),
  );
}

// class recordCardi extends StatelessWidget(){

//   const recordCard({super.key, required this.record, required this.value});

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       color: Color.fromARGB(255, 241, 188, 224),
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(15),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(15),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               'Date: ${record.dateTime}',
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 10),
//             Text(
//               'Value: $value',
//               style: TextStyle(fontSize: 16),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
Widget recordCard({required Record record}) {
  return Card(
    child: Container(
        height: 50,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            '${record.dateTime} ->  ${record.value}',
            style: TextStyle(fontSize: 20),
          ),
        )),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
    color: Color.fromARGB(147, 239, 236, 174),
    shadowColor: Color.fromARGB(127, 185, 180, 121),
    elevation: 10,
    margin: EdgeInsets.all(10),
  );
}
