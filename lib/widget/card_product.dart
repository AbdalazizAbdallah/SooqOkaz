import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CardProduct extends StatelessWidget {
  const CardProduct({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(27),
      ),
      child: Flex(
        direction: Axis.vertical,
        children: [
          Flexible(
              flex: 3,
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: CachedNetworkImageProvider(
                            'https://media.vogue.co.uk/photos/5d544859e566280008412b79/master/pass/original'),
                        fit: BoxFit.cover)),
                child: Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, top: 30),
                    child: CircleAvatar(
                      backgroundColor: Color(0xFFFD6969),
                      radius: 18,
                      child: Center(
                          child: IconButton(
                            padding: EdgeInsets.zero,
                            onPressed: () {},
                            icon: const Icon(
                              Icons.favorite,
                              color: Colors.white,
                            ),
                          )),
                    ),
                  ),
                ),
              )),
          Flexible(
              flex: 1,
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Flex(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    direction: Axis.vertical,
                    children: [
                      const Text(
                        'بدلة سموك',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontFamily: 'loew',
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(height: 10,),
                      Flex(
                        direction: Axis.horizontal,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Text('4.5'),
                          Icon(Icons.star,
                            color: Color(0xFFFFBE00),
                          ),
                          SizedBox(width: 20,),
                          Text('\$86.00'),
                          Align(
                            child: Icon(Icons.local_offer,
                              color: Color(0xFFFD6969),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
