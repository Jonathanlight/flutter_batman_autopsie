import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String name;
  final String description;
  final String description_long;

  DetailPage(
      {Key? key,
      required this.name,
      required this.description,
      required this.description_long});

  @override
  Widget build(BuildContext context) {
    Size containerSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.transparent,
        actions: const [
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Icon(Icons.favorite),
          ),
        ],
      ),
      extendBodyBehindAppBar: true,
      body: Column(
        children: [
          SizedBox(
            height: containerSize.height / 2,
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    image: const DecorationImage(
                        image: AssetImage('assets/images/batman_cover.webp'),
                        fit: BoxFit.cover),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 0.0,
                    ),
                    child: Container(
                      width: containerSize.width,
                      height: containerSize.height / 6 - 40,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 73, 46, 37)
                            .withOpacity(0.72),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Text(
                                  name,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.star,
                                    color: Colors.orange,
                                  ),
                                  const SizedBox(width: 10),
                                  Text(
                                    description,
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(width: 7),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.only(left: 50.0, right: 50),
            child: Divider(
              color: Colors.white,
              thickness: 2,
              height: 50,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.fast_rewind,
                size: 50,
                color: Color.fromARGB(255, 184, 184, 186),
              ),
              SizedBox(width: 10),
              Icon(
                Icons.play_circle,
                size: 25,
                color: Color.fromARGB(255, 3, 163, 11),
              ),
              SizedBox(width: 10),
              Icon(
                Icons.pause,
                size: 30,
                color: Colors.white,
              ),
              SizedBox(width: 10),
              Icon(
                Icons.stop,
                size: 30,
                color: Color.fromARGB(255, 112, 9, 2),
              ),
              SizedBox(width: 10),
              Icon(
                Icons.fast_forward,
                size: 50,
                color: Color.fromARGB(255, 184, 184, 186),
              ),
              SizedBox(width: 10),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(
                  top: 25.0,
                  left: 20,
                  right: 20,
                ),
                child: Text(
                  "Description",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 18.0,
                  left: 20,
                  right: 20,
                ),
                child: Text(
                  description_long,
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
