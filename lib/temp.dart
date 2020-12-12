// // A widget that displays the picture taken by the user.
// class DisplayPictureScreen extends StatefulWidget {
//   String imagePath;
//   List outputs;
//   File image;
//   bool loading = false;
//
//   DisplayPictureScreen({Key key, this.imagePath, this.image, this.loading, this.outputs}) : super(key: key);
//
//   List _outputs;
//   File _image;
//   bool _loading = false;
//
//   @override
//   void initState() {
//     super.initState();
//     _loading = true;
//
//     loadModel().then((value) {
//       setState(() {
//         _loading = false;
//       });
//     });
//   }
//
//   loadModel() async {
//     await Tflite.loadModel(
//       model: "assets/model_unquant.tflite",
//       labels: "assets/labels.txt",
//       numThreads: 1,
//     );
//   }
//   classifyImage(File image) async {
//     var output = await Tflite.runModelOnImage(
//         path: image.path,
//         imageMean: 0.0,
//         imageStd: 255.0,
//         numResults: 2,
//         threshold: 0.2,
//         asynch: true
//     );
//     setState(() {
//       _loading = false;
//       _outputs = output;
//     });
//   }
//   @override
//   void dispose() {
//     Tflite.close();
//     super.dispose();
//   }
//   pickImage() async {
//     var image = await ImagePicker.pickImage(source: ImageSource.gallery);
//     if (image == null) return null;
//     setState(() {
//       _loading = true;
//       _image = image;
//     });
//     classifyImage(_image);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Display the Picture')),
//       // The image is stored as a file on the device. Use the `Image.file`
//       // constructor with the given path to display the image.
//       body: Container(
//         child: Column(
//           children: <Widget>[
//             Container(
//               margin: EdgeInsets.all(20),
//               width: MediaQuery.of(context).size.width,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   image == null ? Container() : Image.file(image),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   image == null ? Container() : outputs != null ?
//                   Text(outputs[0]["label"],style: TextStyle(color: Colors.black,fontSize: 20),
//                   ) : Container(child: Text(""))
//                 ],
//               ),
//             ),
//             Image.file(File(imagePath)),
//             SizedBox(
//               height: MediaQuery.of(context).size.height * 0.01,
//             ),
//
//           ],
//         ),
//       ),//Image.file(File(imagePath)),
//
//     );
//   }
// }
