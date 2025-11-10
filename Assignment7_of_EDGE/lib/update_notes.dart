

import 'package:assignment7/service/note_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'models/note.dart';

class UpdateNotes extends StatefulWidget {
  final Note? note;

  const UpdateNotes({super.key, this.note});

  @override
  State<UpdateNotes> createState() => _UpdateNotesState();
}

class _UpdateNotesState extends State<UpdateNotes> {
  //declare controller
  var nameController = TextEditingController();
  var studentidController = TextEditingController();
  var phoneController = TextEditingController();
  var emailController = TextEditingController();
  var locationController = TextEditingController();

  //declare form key variable
  final GlobalKey<FormState> noteFormKey = GlobalKey();

  //declare services
  final NoteService noteService = NoteService();

  //for updating notes
  Future updateNote() async {
    final newNote = Note(
      id: widget.note!.id,
      name: nameController.text,
      studentid: studentidController.text,
      phone: phoneController.text,
      email: emailController.text,
      location: locationController.text,

    );

    await noteService.updateNote(newNote);

    Get.back();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    nameController.text = widget.note!.name.toString();
    studentidController.text = widget.note!.studentid.toString();
    phoneController.text = widget.note!.phone.toString();
    emailController.text = widget.note!.email.toString();
    locationController.text = widget.note!.location.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.blue,
        title: const Text(
          "Updates Notes",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Form(
        key: noteFormKey,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              TextFormField(
                controller: nameController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: "Name",
                  hintText: "Enter name",
                  prefixIcon: const Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter name";
                  }

                  return null;
                },
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: studentidController,
                maxLines: 1,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: "Student-ID",
                  hintText: "Enter your ID",
                  prefixIcon: const Icon(Icons.card_membership),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter your ID";
                  }

                  return null;
                },
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: phoneController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Number",
                  hintText: "Enter number",
                  prefixIcon: const Icon(Icons.numbers),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter number";
                  }

                  return null;
                },
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "Email",
                  hintText: "Enter email",
                  prefixIcon: const Icon(Icons.email),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter Email";
                  }

                  return null;
                },
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: locationController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: "Location",
                  hintText: "Enter location",
                  prefixIcon: const Icon(Icons.location_city),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter location";
                  }

                  return null;
                },
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width/3,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50),
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: ()  {
                    if (noteFormKey.currentState!.validate()) {
                      noteFormKey.currentState!.save();

                      // add note function call here
                      updateNote();


                    }
                  },
                  child: Text(
                    "Update",
                    style: const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}