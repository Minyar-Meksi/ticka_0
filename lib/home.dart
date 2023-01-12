import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:transparent_image/transparent_image.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
   double padding = 0.0;

  final List pictures = [
    "https://ih1.redbubble.net/image.4558006657.7384/flat,500x,075,f.u5.jpg",
    "https://ih0.redbubble.net/image.4516790544.6693/flat,500x,075,f.u11.jpg",
    "https://ih0.redbubble.net/image.4509318977.6415/flat,500x,075,f.u9.jpg",
    "https://ih1.redbubble.net/image.4509138915.1791/flat,500x,075,f.u7.jpg",
    "https://ih1.redbubble.net/image.4467507812.6191/flat,500x,075,f.u6.jpg",
    "https://ih1.redbubble.net/image.4606118875.0076/flat,500x,075,f.u1.jpg",
    "https://ih0.redbubble.net/image.4414941230.1683/flat,500x,075,f.u3.jpg",
    "https://ih1.redbubble.net/image.4401795004.0252/flat,500x,075,f.u5.jpg",
    "https://ih0.redbubble.net/image.4379529768.5622/flat,500x,075,f.jpg",
    "https://ih1.redbubble.net/image.4347868055.2499/flat,500x,075,f.jpg",
    "https://ih1.redbubble.net/image.4341301018.2310/flat,500x,075,f.u5.jpg",
    "https://ih0.redbubble.net/image.4259002804.2671/flat,500x,075,f.u5.jpg",
    "https://ih0.redbubble.net/image.4258035230.8946/flat,500x,075,f.u11.jpg",
    "https://ih1.redbubble.net/image.4255097972.9354/flat,500x,075,f.u8.jpg",
    "https://ih0.redbubble.net/image.4253990963.1151/flat,500x,075,f.jpg",
    "https://ih1.redbubble.net/image.4251206059.2861/flat,500x,075,f.u3.jpg",
    "https://ih0.redbubble.net/image.4247018551.0874/flat,500x,075,f.u4.jpg",
    "https://ih0.redbubble.net/image.4233351127.2127/flat,500x,075,f.u3.jpg",
    "https://ih1.redbubble.net/image.4216114091.5660/flat,500x,075,f.u13.jpg",
    "https://ih0.redbubble.net/image.4192667979.2880/flat,500x,075,f.u4.jpg",
    "https://ih0.redbubble.net/image.4105813650.5891/flat,500x,075,f.u6.jpg",
    "https://ih1.redbubble.net/image.4077236777.2835/flatb,500x,075,f,FFFFFF:97ab1c12de.u1.jpg",
    "https://ih0.redbubble.net/image.3998505218.2461/flat,500x,075,f.u10.jpg",
    "https://ih1.redbubble.net/image.3992237840.1544/flat,500x,075,f.u1.jpg",
    "https://ih0.redbubble.net/image.4471219946.1143/flat,500x,075,f.u1.jpg",
    "https://ih0.redbubble.net/image.3891248840.3468/flat,500x,075,f.u5.jpg",
    "https://ih1.redbubble.net/image.3891139944.0855/flat,500x,075,f.u5.jpg",
    "https://ih0.redbubble.net/image.3885263136.0874/flat,500x,075,f.u3.jpg",
    "https://ih1.redbubble.net/image.3875778881.2911/flat,500x,075,f.u1.jpg",
    "https://ih0.redbubble.net/image.3835695341.0862/flat,500x,075,f.u2.jpg",
    "https://ih0.redbubble.net/image.3803476070.8114/flat,500x,075,f.jpg",
    "https://ih0.redbubble.net/image.3803352750.5227/flat,500x,075,f.u17.jpg",
    "https://ih1.redbubble.net/image.3801149605.5708/flat,500x,075,f.u2.jpg",
    "https://ih1.redbubble.net/image.3785083643.3011/flat,500x,075,f.u1.jpg",
    "https://ih1.redbubble.net/image.3765906064.1447/flat,500x,075,f.u3.jpg",
    "https://ih0.redbubble.net/image.3709854773.3202/flat,500x,075,f.u7.jpg",
    "https://ih0.redbubble.net/image.3703195946.9739/flat,500x,075,f.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(children: [
        GestureDetector(
          onScaleUpdate: (details) {
          setState(() {
            padding = padding+details.scale;
          }); 
          },
          child: Padding(
            padding:  EdgeInsets.all(padding),
            child: MasonryGridView.count(
              crossAxisCount: 3,
              crossAxisSpacing: padding,
              mainAxisSpacing: padding,
              itemCount: pictures.length,
              itemBuilder: (context, index) {
                return ClipRRect(
                    borderRadius: BorderRadius.circular(padding),
                    child: FadeInImage.memoryNetwork(
                        placeholder: kTransparentImage, image: pictures[index]));
              },
            ),
          ),
        ),
        
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            color: Colors.black.withOpacity(0.7),
            height: 75,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Icon(Icons.home_filled,
                          color: Colors.white, size: 25),
                      Text("Home",
                          style: GoogleFonts.urbanist(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ))
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Icon(Icons.search,
                          color: Colors.white, size: 25),
                      Text("Search",
                          style: GoogleFonts.urbanist(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ))
                    ],
                  ),
                  const SizedBox(
                    width: 64,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Icon(Icons.shopping_bag_rounded,
                          color: Colors.white, size: 25),
                      Text("Cart",
                          style: GoogleFonts.urbanist(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ))
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 25,
                      ),
                      Text("Profile",
                          style: GoogleFonts.urbanist(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ))
                    ],
                  )
                ]),
          ),
        ),
      ]),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom : 8.0),
        child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white,
                    ),
                    height: 64,
                    width: 64,
                    child: const Icon(
                      Icons.add_circle_outline,
                      size: 40,
                      color: Colors.black,
                    ),
                  ),
      ),
                floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
                
    );
  }
}
