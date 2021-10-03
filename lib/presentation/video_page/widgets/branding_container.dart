import 'package:flutter/material.dart';

class BrandingContainer extends StatelessWidget {
  final String message;

  const BrandingContainer({
    Key? key,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 190,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            width: 50,
          ),
          Image.asset(
            'assets/images/Logo_left.jpg',
            height: 100,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Association of Medical Biochemists of India\nAssociation of Medical Biochemists Karnataka Chapter',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.caption?.copyWith(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Divider(
                  endIndent: 120,
                  indent: 120,
                  thickness: 2,
                  color: Colors.yellow[600],
                ),
                FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 100,
                      right: 100,
                    ),
                    child: Text(
                      'AMBKCCON - 2021',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headline3?.copyWith(color: Colors.black),
                    ),
                  ),
                ),
                /*Divider(
                  endIndent: MediaQuery.of(context).size.width * 0.35,
                  indent: MediaQuery.of(context).size.width * 0.35,
                  thickness: 2,
                  color: Colors.yellow,
                ),*/
                Visibility(
                  visible: false,
                  child: (message.isEmpty)
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            CircularProgressIndicator(),
                          ],
                        )
                      : Text(
                          message,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.yellow,
                          ),
                        ),
                ),
              ],
            ),
          ),
          Image.asset(
            'assets/images/Logo_right.jpg',
            height: 100,
          ),
          const SizedBox(
            width: 50,
          ),
          Container(
            height: 195,
            width: 2,
            color: Colors.yellow,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset(
                  'assets/images/banners/branding.jpg',
                  fit: BoxFit.contain,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
