import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(0, 242, 238, 238),
      ),
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: ListView(
            children: [
              const SizedBox(
                height: 30,
              ),
              const Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.orangeAccent,
                    child: Text('M'),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Mudakir Afridi'),
                      Text('mudakkirafridi@gmail.com')
                    ],
                  )
                ],
              ),
              OutlinedButton(
                onPressed: () {},
                child: const Text('Free Plan'),
              )
            ],
          ),
        ),
      ),
      body: Align(
        alignment: Alignment.bottomCenter,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'ChatGPT',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.purple,
                    radius: 12,
                  )
                ],
              ),
              const Padding(padding: EdgeInsets.only(bottom: 250)),
              Row(
                children: [
                  Expanded(
                    flex: 7,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 13),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.mic,
                            color: Colors.white,
                          ),
                          hintText: 'Mudakir Type Here',
                          hintStyle: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w500),
                          filled: true,
                          fillColor: Color.fromARGB(255, 78, 77, 77),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 35,
                      width: 35,
                      decoration: const BoxDecoration(
                          color: Colors.grey, shape: BoxShape.circle),
                      child: const Icon(Icons.arrow_upward),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
