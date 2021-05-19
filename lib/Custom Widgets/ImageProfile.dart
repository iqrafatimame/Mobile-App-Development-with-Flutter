import 'dart:io' as io;
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageProfile extends StatefulWidget {
  @override
  _ImageProfileState createState() => _ImageProfileState();
}

class _ImageProfileState extends State<ImageProfile> {
  // variables
  static final String uploadEndPoint = 'https://pcc.edu.pk/ws/file_upload.php';
  PickedFile _imageFile ; 
  String base64Image;
  String status = '';
  String errMessage = 'Error Uploading Image';
  final ImagePicker _picker = ImagePicker();

  // status of message
  setStatus(String message) {
    setState(() {
      status = message;
    });
  }

  // image uploading on API
  startUpload() async {

    // converting PickedFile to File
    io.File _storedImage = io.File(_imageFile.path);
    base64Image = base64Encode(_storedImage.readAsBytesSync());

    setStatus('Uploading Image');
    if (_storedImage == null) {
      setStatus(errMessage);
      print(errMessage);
    }

    String fileName = _storedImage.path.split('/').last;
    upload(fileName);
  }

  upload(String fileName) async  {
    
    var response = await http.post(Uri.parse(uploadEndPoint), body: jsonEncode({
      "image": base64Image,
      "name": fileName,
    }));

    var message = jsonDecode(response.body);
    if (response.statusCode == 200) {
    print(message);
    } else {
     print("not added");
    }

  // Dialog box to show the message
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Response Message'),
            content: Text(message['message']),
            actions: <Widget>[
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: new Text("OK")),
            ],
          );
        });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: <Widget>[
            CircleAvatar(
              radius: 80.0,
              backgroundImage: _imageFile == null
                  ? NetworkImage(
                      'https://avatars.githubusercontent.com/u/46266421?v=4')
                  : FileImage(io.File(_imageFile.path)),
            ),
            Positioned(
              bottom: 20.0,
              right: 25.0,
              child: InkWell(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: ((builder) => bottomSheet(context)),
                  );
                },
                child: Icon(Icons.camera_alt, color: Colors.white, size: 28.0),
              ),
            )
          ],
        ),
        SizedBox(
          height: 40,
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.brown, // background
              onPrimary: Colors.white, // foreground
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
              child: Text('Upload Image'),
            ),
            onPressed: () {
              startUpload();
            }),
      ],
    );
  }

  // bottom sheet widget
  Widget bottomSheet(context) {
    return Container(
      height: 100.0,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
      child: Center(
        child: Column(
          children: <Widget>[
            Text(
              "choose profile image",
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton.icon(
                  onPressed: () {
                    takePhoto(ImageSource.camera);
                  },
                  icon: Icon(Icons.camera_alt),
                  label: Text('Camera'),
                ),
                FlatButton.icon(
                  onPressed: () {
                    takePhoto(ImageSource.gallery);
                  },
                  icon: Icon(Icons.image),
                  label: Text('Gallary'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // take photo function
  void takePhoto(ImageSource _source) async {
    final pickedFile = await _picker.getImage(
      source: _source,
    );
    setState(() {
      _imageFile = pickedFile;
    });
  }
}
