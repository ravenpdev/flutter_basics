import 'package:flutter/material.dart';

class Person extends StatelessWidget {
  final String imageUrl;
  final String name;
  final int age;
  final String country;
  final String job;

  const Person({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.age,
    required this.job,
    required this.country,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        // borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      imageUrl,
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                decoration: const BoxDecoration(
                  color: Colors.white38,
                ),
                width: double.infinity,
                child: Text(
                  name,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                _createPersonInfoRow(
                  context: context,
                  key: 'Age',
                  value: age.toString(),
                ),
                const SizedBox(
                  height: 5,
                ),
                _createPersonInfoRow(
                  context: context,
                  key: 'Job',
                  value: job,
                ),
                const SizedBox(
                  height: 5,
                ),
                _createPersonInfoRow(
                  context: context,
                  key: 'Country',
                  value: country,
                ),
                const SizedBox(
                  height: 5,
                ),
                _createPersonInfoRow(
                  context: context,
                  key: 'ImageUrl',
                  value: imageUrl,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Row _createPersonInfoRow({
    required BuildContext context,
    required String key,
    String? value,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(
            key,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        const Spacer(),
        Flexible(
          child: Text(
            value ?? '',
            style: Theme.of(context).textTheme.titleSmall,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
