import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class PokemonCard extends StatelessWidget {
  final String? title;
  final String? image;
  final Function()? onTap;
  const PokemonCard({
    Key? key,
    this.title,
    this.image,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 300,
        width: 250,
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CachedNetworkImage(
              imageUrl: image!,
              imageBuilder: (c, imageProvider) {
                return Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: imageProvider,
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
              placeholder: (c, _) {
                return const CircularProgressIndicator();
              },
              errorWidget: (c, _, err) {
                return const Icon(
                  Icons.error_outline,
                  color: Colors.red,
                );
              },
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              title!,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
