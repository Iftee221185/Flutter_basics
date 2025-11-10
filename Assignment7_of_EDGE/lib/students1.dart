import 'package:assignment7/service/note_service.dart';
import 'package:assignment7/update_notes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'models/note.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final NoteService noteService = NoteService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Students",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: StreamBuilder<List<Note>>(
        stream: noteService.getNotes(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }

          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }

          final notes = snapshot.data!;

          return ListView.builder(
            itemCount: notes.length,
            itemBuilder: (context, index) {
              final note = notes[index];
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        ListTile(
                          contentPadding: const EdgeInsets.all(10),
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(color: Colors.blue, width: 1),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          title: Text(
                            note.name,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(note.studentid),
                          leading: const Icon(
                            Icons.person,
                            size: 40,
                          ),
                        ),
                        Positioned(
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width/4,
                              height: 35,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  // minimumSize: const Size.fromHeight(50),
                                  backgroundColor: Colors.blue,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                onPressed: ()  {
                                  noteService.deleteNote(note.id!);

                                },
                                child : Text(
                                  "Delete",
                                  style: const TextStyle(
                                      color: Colors.white,fontSize: 12),
                                ),
                              ),
                            ),
                          top: 5,
                          right: 10,
                        ),
                        Positioned(
                            child:  SizedBox(
                              width: MediaQuery.of(context).size.width/4,
                              height: 35,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  // minimumSize: const Size.fromHeight(50),
                                  backgroundColor: Colors.blue,

                                ),
                                onPressed: ()  {
                                  Get.to(()=>UpdateNotes(note: note,));

                                },
                                child : Text(
                                  "Update",
                                  style: const TextStyle(
                                      color: Colors.white,fontSize: 12),
                                ),
                              ),
                            ),
                          bottom: 5,
                          right: 10,
                        ),

                      ],
                    )
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}