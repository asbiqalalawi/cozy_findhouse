import 'package:cozy_findhouse/theme.dart';
import 'package:cozy_findhouse/widgets/facility_item.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void _launchUrl(String url) async {
      // if (!await launchUrl(Uri.parse(url))) throw 'Could not launch $url';
      if (await canLaunchUrl(Uri.parse(url))) {
        launchUrl(Uri.parse(url));
      } else {
        throw (url);
      }
    }

    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Image.asset(
              'assets/city3.png',
              width: double.infinity,
              height: 350,
              fit: BoxFit.cover,
            ),
            ListView(
              children: [
                const SizedBox(
                  height: 328,
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      // Title
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: edge),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Kuretakeso Hott',
                                  style: blackTextStyle.copyWith(fontSize: 22),
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                                Text.rich(
                                  TextSpan(
                                    text: '\$52',
                                    style:
                                        purpleTextStyle.copyWith(fontSize: 16),
                                    children: [
                                      TextSpan(
                                          text: '/ month',
                                          style: greykTextStyle.copyWith(
                                              fontSize: 16)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/icon_star.png',
                                  width: 20,
                                ),
                                const SizedBox(
                                  width: 2,
                                ),
                                Image.asset(
                                  'assets/icon_star.png',
                                  width: 20,
                                ),
                                const SizedBox(
                                  width: 2,
                                ),
                                Image.asset(
                                  'assets/icon_star.png',
                                  width: 20,
                                ),
                                const SizedBox(
                                  width: 2,
                                ),
                                Image.asset(
                                  'assets/icon_star.png',
                                  width: 20,
                                ),
                                const SizedBox(
                                  width: 2,
                                ),
                                Image.asset(
                                  'assets/icon_star.png',
                                  width: 20,
                                  color: const Color(0xff989BA1),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      // Main Facilities
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: edge),
                        child: Text(
                          'Main Facilities',
                          style: regularTextStyle,
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: edge),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            FacilityItem(
                                imageUrl: 'assets/icon_kitchen.png',
                                name: 'kitchen',
                                total: 2),
                            FacilityItem(
                                imageUrl: 'assets/icon_bedroom.png',
                                name: 'bedroom',
                                total: 3),
                            FacilityItem(
                                imageUrl: 'assets/icon_lemari.png',
                                name: 'Big Lemari',
                                total: 3),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      // Photos
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: edge),
                        child: Text(
                          'Photos',
                          style: regularTextStyle,
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      SizedBox(
                        height: 88,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            SizedBox(
                              width: edge,
                            ),
                            Image.asset(
                              'assets/photo1.png',
                              width: 110,
                              height: 88,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(
                              width: 18,
                            ),
                            Image.asset(
                              'assets/photo2.png',
                              width: 110,
                              height: 88,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(
                              width: 18,
                            ),
                            Image.asset(
                              'assets/photo3.png',
                              width: 110,
                              height: 88,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                              width: edge,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      // Location
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: edge),
                        child: Text(
                          'Location',
                          style: regularTextStyle,
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: edge),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Jln. Kappan Sukses No. 20,\nPalembang',
                              style: greykTextStyle,
                            ),
                            InkWell(
                              onTap: () {
                                _launchUrl(
                                    'https://www.google.com/maps/place/National+Monument/@-6.1753924,106.8249641,17z/data=!3m1!4b1!4m5!3m4!1s0x2e69f5d2e764b12d:0x3d2ad6e1e0e9bcc8!8m2!3d-6.1753924!4d106.8271528');
                              },
                              child: Image.asset(
                                'assets/btn_map.png',
                                width: 40,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      InkWell(
                        onTap: (() => _launchUrl('tel:+6282280539493')),
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: edge),
                          height: 50,
                          width: MediaQuery.of(context).size.width - (2 * edge),
                          decoration: BoxDecoration(
                              color: purpleColor,
                              borderRadius: BorderRadius.circular(17)),
                          child: Center(
                              child: Text(
                            'Book Now',
                            style: whiteTextStyle.copyWith(fontSize: 18),
                          )),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: edge, vertical: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      'assets/btn_back.png',
                      width: 40,
                    ),
                  ),
                  Image.asset(
                    'assets/btn_wishlist.png',
                    width: 40,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
