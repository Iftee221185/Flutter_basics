// import 'package:assignment7/add_notes.dart';
// import 'package:assignment7/service/note_service.dart';
// import 'package:assignment7/update_notes.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// import 'models/note.dart';
//
// class Students extends StatefulWidget {
//   const HomePage({super.key});
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   final NoteService noteService = NoteService();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blue,
//         title: const Text(
//           "Student",
//           style: TextStyle(color: Colors.white),
//         ),
//       ),
//       body: StreamBuilder<List<Note>>(
//         stream: noteService.getNotes(),
//         builder: (context, AsyncSnapshot snapshot) {
//           if (snapshot.hasError) {
//             return Center(child: Text('Error: ${snapshot.error}'));
//           }
//
//           if (!snapshot.hasData) {
//             return const Center(child: CircularProgressIndicator());
//           }
//
//           final notes = snapshot.data!;
//
//           return ListView.builder(
//             itemCount: notes.length,
//             itemBuilder: (context, index) {
//               final note = notes[index];
//               return Padding(
//                 padding: const EdgeInsets.all(10.0),
//                 child: ListTile(
//                   contentPadding: const EdgeInsets.all(10),
//                   shape: RoundedRectangleBorder(
//                     side: const BorderSide(color: Colors.blue, width: 1),
//                     borderRadius: BorderRadius.circular(5),
//                   ),
//                   title: Text(
//                     note.name,
//                     style: const TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                   subtitle: Text(note.description),
//                   leading: const Icon(
//                     Icons.note_alt_outlined,
//                     size: 40,
//                   ),
//                 ),
//               );
//             },
//           );
//         },
//       ),
//     );
//   }
// }