import 'package:flutter/material.dart';
import 'package:potobase_web_site/widgets/top_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        const TopNavBar(),
        Expanded(
            child: ListView(
          children: [
            const SizedBox(height: 50.0),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.15,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      SizedBox(height: 50.0),
                      Text(
                        'Simple. Secure.\nReliable.',
                        style: TextStyle(fontSize: 33),
                      ),
                      SizedBox(height: 20.0),
                      Text(
                        'With Potobase, enjoy fast selling, easy buying, and fast, simple, and secure communication that\'s free and available on phones anywhere in the world.',
                        style: TextStyle(
                            fontSize: 18,
                            height: 1.5,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 120.0),
                Image.asset(
                  'assets/home_1.png',
                  width: MediaQuery.of(context).size.width * 0.15,
                )
              ],
            ),
            const SizedBox(height: 100.0),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.1),
              child: IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(width: 30.0),
                    Expanded(
                      child: DecoratedBox(
                        decoration:
                            const BoxDecoration(color: Color(0xffD8E8EA)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 50.0),
                          child: Column(children: [
                            const Text(
                              'Whatsapp Business App',
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 34,
                                height: 4,
                              ),
                            ),
                            const SizedBox(height: 25.0),
                            const Text(
                              'WhatsApp Business is a free to download app that was built with the small business owner in mind. Create a catalog to showcase your products and services. Connect with your customers easily by using tools to automate, sort and quickly respond to messages.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                                height: 1.5,
                              ),
                            ),
                            const SizedBox(height: 25.0),
                            const Text(
                              'WhatsApp can also help medium and large businesses provide customer support and deliver important notifications to customers. Learn more about WhatsApp Business API.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                                height: 1.5,
                              ),
                            ),
                            const SizedBox(height: 50.0),
                            Image.asset(
                              'assets/home_2.png',
                              width: MediaQuery.of(context).size.width * 0.2,
                              height: MediaQuery.of(context).size.width * 0.2,
                            ),
                          ]),
                        ),
                      ),
                    ),
                    const SizedBox(width: 30.0),
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: DecoratedBox(
                          decoration:
                              const BoxDecoration(color: Color(0xffE7F0E4)),
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 50.0),
                            child: Column(children: const [
                              SizedBox(height: 75.0),
                              CircleAvatar(
                                radius: 175,
                                backgroundColor: Color(0xff77d7c8),
                              ),
                              Text(
                                'END-TO-END ENCRYPTION',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                  color: Colors.grey,
                                  height: 5,
                                ),
                              ),
                              Text(
                                'Security by Default',
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 34,
                                ),
                              ),
                              SizedBox(height: 25.0),
                              Text(
                                'Some of your most personal moments are shared on WhatsApp, which is why we built end-to-end encryption into the latest versions of our app. When end-to-end encrypted, your messages and calls are secured so only you and the person you\'re communicating with can read or listen to them, and nobody in between, not even WhatsApp.',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                  height: 1.5,
                                ),
                              ),
                            ]),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 30.0),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 50.0),
          ],
        ))
      ]),
    );
  }
}
