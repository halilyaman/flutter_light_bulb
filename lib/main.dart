import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:lamp_app/color_info.dart';
import 'package:lamp_app/lamp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ColorInfoWrapper(
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Lamp(
      child: Scaffold(
        backgroundColor: Colors.black,
        floatingActionButton: FloatingActionButton(
          child: const Text('Color'),
          onPressed: () {
            final colorInfo = ColorInfo.of(context);
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  titlePadding: const EdgeInsets.all(0),
                  contentPadding: const EdgeInsets.all(0),
                  content: SingleChildScrollView(
                    child: ColorPicker(
                      pickerColor: colorInfo.color,
                      onColorChanged: colorInfo.onColorChanged,
                      portraitOnly: false,
                    ),
                  ),
                );
              },
            );
          },
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20.0,
            horizontal: 10.0,
          ),
          child: SingleChildScrollView(
            child: Text(
              loremIpsum,
              style: TextStyle(
                color: Colors.white.withOpacity(0.1),
                fontSize: 20.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

const loremIpsum =
    """Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ultrices eros in cursus turpis massa tincidunt dui. Arcu non odio euismod lacinia. Tellus molestie nunc non blandit massa. Id consectetur purus ut faucibus pulvinar elementum integer. Risus pretium quam vulputate dignissim suspendisse in est ante. Elit pellentesque habitant morbi tristique senectus et. Suspendisse ultrices gravida dictum fusce ut placerat. Eget arcu dictum varius duis at consectetur lorem donec massa. Enim ut tellus elementum sagittis vitae. Ac odio tempor orci dapibus ultrices in iaculis nunc sed. Adipiscing commodo elit at imperdiet dui accumsan sit amet.

Cras semper auctor neque vitae tempus quam pellentesque nec. Et ligula ullamcorper malesuada proin libero. Diam vel quam elementum pulvinar etiam non quam lacus suspendisse. Hendrerit gravida rutrum quisque non tellus orci ac auctor augue. Sed ullamcorper morbi tincidunt ornare. Mus mauris vitae ultricies leo integer malesuada. Nullam non nisi est sit. Nibh tellus molestie nunc non blandit massa. Risus commodo viverra maecenas accumsan lacus vel facilisis volutpat. Ultricies integer quis auctor elit sed vulputate mi sit amet. Non tellus orci ac auctor augue mauris augue neque. Vitae elementum curabitur vitae nunc sed velit. Sem integer vitae justo eget magna fermentum. In dictum non consectetur a erat nam at.

Imperdiet proin fermentum leo vel orci porta non. In tellus integer feugiat scelerisque varius. Amet nisl suscipit adipiscing bibendum. Leo urna molestie at elementum eu facilisis sed odio. Euismod elementum nisi quis eleifend quam adipiscing vitae proin sagittis. Risus nec feugiat in fermentum posuere urna nec tincidunt. Urna nunc id cursus metus aliquam eleifend mi in. Nunc eget lorem dolor sed. Varius quam quisque id diam vel quam. Eu sem integer vitae justo. Dictum fusce ut placerat orci nulla pellentesque dignissim enim. Magna sit amet purus gravida quis blandit. Cras tincidunt lobortis feugiat vivamus. Amet consectetur adipiscing elit pellentesque habitant morbi. Duis ut diam quam nulla. Lectus quam id leo in vitae. Nunc mi ipsum faucibus vitae aliquet nec ullamcorper sit amet. Nisi est sit amet facilisis magna etiam tempor orci. Odio tempor orci dapibus ultrices in iaculis nunc sed augue.

Nibh cras pulvinar mattis nunc sed. Amet justo donec enim diam. Elementum nibh tellus molestie nunc non blandit massa enim. Mauris vitae ultricies leo integer malesuada nunc vel risus commodo. Nulla aliquet porttitor lacus luctus. Id consectetur purus ut faucibus pulvinar elementum integer enim. Feugiat nisl pretium fusce id velit ut tortor. Hendrerit gravida rutrum quisque non tellus orci ac auctor augue. Nunc aliquet bibendum enim facilisis gravida neque convallis a cras. Pharetra vel turpis nunc eget lorem dolor. Pellentesque id nibh tortor id aliquet lectus proin nibh nisl. Nunc mattis enim ut tellus elementum sagittis vitae et. Donec ac odio tempor orci dapibus ultrices in iaculis nunc. Tempus imperdiet nulla malesuada pellentesque. Nibh tellus molestie nunc non blandit massa enim nec. Quam elementum pulvinar etiam non. Augue mauris augue neque gravida in fermentum et sollicitudin ac. Consequat nisl vel pretium lectus quam id leo.

Sed lectus vestibulum mattis ullamcorper velit sed ullamcorper. Magna ac placerat vestibulum lectus mauris. Ultricies integer quis auctor elit sed vulputate mi. Tristique magna sit amet purus gravida quis blandit turpis cursus. Fames ac turpis egestas integer eget aliquet nibh. Egestas erat imperdiet sed euismod nisi porta lorem. Pellentesque habitant morbi tristique senectus et netus et malesuada. Ultrices vitae auctor eu augue ut lectus arcu bibendum. Facilisi etiam dignissim diam quis. Id porta nibh venenatis cras sed. Tempus iaculis urna id volutpat lacus. Tempor id eu nisl nunc mi ipsum faucibus vitae. Posuere urna nec tincidunt praesent. Sed viverra ipsum nunc aliquet. Diam vel quam elementum pulvinar.

Amet mattis vulputate enim nulla aliquet porttitor lacus. Turpis massa tincidunt dui ut ornare lectus sit amet. Nunc aliquet bibendum enim facilisis gravida neque convallis a cras. Faucibus et molestie ac feugiat sed lectus. Malesuada fames ac turpis egestas integer eget. Odio morbi quis commodo odio aenean sed adipiscing diam donec. Et tortor at risus viverra adipiscing at in. Vivamus arcu felis bibendum ut tristique et. Ullamcorper a lacus vestibulum sed arcu non odio euismod lacinia. Sodales ut etiam sit amet nisl purus. Tortor posuere ac ut consequat. Nisi lacus sed viverra tellus in hac habitasse. Vitae sapien pellentesque habitant morbi. Risus commodo viverra maecenas accumsan lacus. Bibendum est ultricies integer quis. Maecenas pharetra convallis posuere morbi leo urna molestie at. Nunc sed id semper risus in. Mi eget mauris pharetra et ultrices neque ornare aenean euismod. Sed augue lacus viverra vitae congue eu consequat ac.

Mattis molestie a iaculis at erat pellentesque adipiscing. At tempor commodo ullamcorper a lacus vestibulum sed arcu. Pellentesque elit eget gravida cum. Vulputate enim nulla aliquet porttitor lacus luctus. Quis varius quam quisque id diam. Mattis ullamcorper velit sed ullamcorper morbi. Cras adipiscing enim eu turpis egestas pretium aenean pharetra. In arcu cursus euismod quis viverra nibh cras pulvinar mattis. Ipsum dolor sit amet consectetur adipiscing elit duis tristique sollicitudin. Eleifend quam adipiscing vitae proin sagittis.

Non curabitur gravida arcu ac tortor dignissim convallis aenean. Ipsum dolor sit amet consectetur adipiscing elit. Habitasse platea dictumst quisque sagittis purus sit amet volutpat consequat. Nunc mattis enim ut tellus elementum sagittis vitae et leo. Fringilla phasellus faucibus scelerisque eleifend. Bibendum ut tristique et egestas quis ipsum suspendisse. Feugiat vivamus at augue eget arcu dictum varius duis. Sit amet nisl purus in mollis nunc sed id. Gravida in fermentum et sollicitudin ac orci. Sociis natoque penatibus et magnis. Viverra ipsum nunc aliquet bibendum enim facilisis gravida neque convallis. Quis auctor elit sed vulputate mi sit. Ut consequat semper viverra nam libero justo laoreet sit. Quam quisque id diam vel. Etiam dignissim diam quis enim lobortis scelerisque fermentum. Enim diam vulputate ut pharetra. Tellus pellentesque eu tincidunt tortor aliquam nulla. Malesuada proin libero nunc consequat.

Sed euismod nisi porta lorem mollis aliquam. In hac habitasse platea dictumst quisque. Vitae tempus quam pellentesque nec nam aliquam. At lectus urna duis convallis convallis tellus. Non nisi est sit amet facilisis magna etiam. Pellentesque habitant morbi tristique senectus. Arcu risus quis varius quam. Eget gravida cum sociis natoque penatibus et magnis. Sagittis nisl rhoncus mattis rhoncus urna neque viverra justo. Pulvinar etiam non quam lacus suspendisse. Turpis egestas pretium aenean pharetra magna. Imperdiet dui accumsan sit amet nulla facilisi. Et molestie ac feugiat sed lectus vestibulum mattis. Semper risus in hendrerit gravida rutrum quisque non tellus.

A diam maecenas sed enim ut sem viverra aliquet eget. Lorem donec massa sapien faucibus et molestie ac feugiat sed. Orci ac auctor augue mauris augue neque. Tempus imperdiet nulla malesuada pellentesque. Vel pretium lectus quam id leo in vitae turpis massa. Ut aliquam purus sit amet. Dapibus ultrices in iaculis nunc sed augue lacus viverra. Accumsan in nisl nisi scelerisque eu ultrices vitae auctor eu. Sit amet nulla facilisi morbi tempus iaculis urna id volutpat. Lacus vestibulum sed arcu non. Feugiat in ante metus dictum at tempor commodo ullamcorper. Quam viverra orci sagittis eu volutpat odio facilisis. Mollis aliquam ut porttitor leo a diam sollicitudin. Sit amet risus nullam eget felis eget. Sollicitudin tempor id eu nisl nunc mi ipsum.

Mattis enim ut tellus elementum sagittis vitae. Interdum varius sit amet mattis vulputate enim nulla. A arcu cursus vitae congue. Quam quisque id diam vel quam elementum pulvinar. Mauris pharetra et ultrices neque ornare aenean euismod. Magnis dis parturient montes nascetur ridiculus mus mauris vitae ultricies. In hac habitasse platea dictumst quisque sagittis purus sit. Sem fringilla ut morbi tincidunt augue. Est ullamcorper eget nulla facilisi etiam dignissim diam quis enim. Massa vitae tortor condimentum lacinia quis vel eros. Posuere urna nec tincidunt praesent semper feugiat nibh sed. Cursus in hac habitasse platea. Vitae congue mauris rhoncus aenean vel elit scelerisque mauris.""";
