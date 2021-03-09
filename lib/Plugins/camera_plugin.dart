import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:flutter_cookbook_all/plugins/display_image.dart';

class CameraPluginDemo extends StatefulWidget {
  @override
  _CameraPluginDemoState createState() => _CameraPluginDemoState();
}

class _CameraPluginDemoState extends State<CameraPluginDemo> {
  CameraDescription cameraDescription;
  CameraController cameraController;
  Future<void> initializeController;

  void getAvailableCameras() async {
    WidgetsFlutterBinding.ensureInitialized();
    final cameras = await availableCameras();
    setState(() {
      cameraDescription = cameras.first;
      cameraController =
          CameraController(cameraDescription, ResolutionPreset.high);
      initializeController = cameraController.initialize();
    });
  }

  @override
  void initState() {
    super.initState();
    getAvailableCameras();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.camera_alt),
        onPressed: () async {
          await initializeController;
          try {
            final image = await cameraController.takePicture();
            print(image.path);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DisplayImage(imagePath: image.path),
              ),
            );
          } catch (e) {
            print(e.toString());
          }
        },
      ),
      body: FutureBuilder(
        future: initializeController,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return CameraPreview(cameraController);
          } else {
            return CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
