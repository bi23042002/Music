import 'package:flutter/material.dart';
import 'package:music/views/album_view.dart';

class AlbumCard extends StatelessWidget {
  final ImageProvider? image;
  final String? label;
  final Function? onTap;
  final double? size;
  final Key? key;
  const AlbumCard({
    this.key,
    this.image,
    this.label,
    this.onTap,
    this.size = 120,
  });

  @override
  Widget build(BuildContext context) {
    AssetImage image = AssetImage('assets');
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AlbumView(
              image: image,
            ),
          ),
        );
      },
      child: Column(

        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
            image: image,
            width: size,
            height: size,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 10),
          Text(label!),
        ],
      ),
    );
  }
}
