import 'package:flutter/material.dart';
import 'package:music/views/album_view.dart';

class SongCard extends StatelessWidget {
  final AssetImage? image;

  const SongCard({
    Key? key,
    this.image,
  }) : super(key: key);
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
      child: Container(
        width: 140,
        child: Column(
          children: [
            Image(
              image: image,
              width: 140,
              height: 140,
            ),
            Text(
              "Bad Bunny, Drake, Justin Bieber, Taylor Swift, Ed Sheeran",
              style: Theme.of(context).textTheme.caption,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          ],
        ),
      ),
    );
  }
}
