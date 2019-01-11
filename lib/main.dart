import 'package:flutter/material.dart';
import 'package:tuple/tuple.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeWidget(),
    );
  }
}

///Contains all business logic, content
abstract class HomeLogic extends StatelessWidget {
  //Shaale information with appropriate image
  final info1 = Tuple2(
      'Uninterrupted Live webcast / streaming with unlimited viewers on ANY device in ANY location',
      'assets/img1.png');
  final info2 = Tuple2(
      'Create public or private, free or paid events', 'assets/img2.png');
  final info3 = Tuple2('Customized event page & posts with live chat & support',
      'assets/img3.png');
  final info4 =
      Tuple2('Full HD/4K recording & online archiving', 'assets/img4.png');
  final info5 = Tuple2(
      'Multiple video teams fully acquainted with the nuances & subtleties of Indian performing arts who are specially trained in documentation',
      'assets/img5.jpg');
  final info6 = Tuple2(
      'Average Viewership stats per Event(from a set of 100 events) \n\n10,145 viewers in 876 cities from 110 countries on 210 devices \n\nGain Deep insight into your viewers',
      null);

  //Testimonials
  final List<Tuple2<String, String>> testimonials = [
    Tuple2('SUMA KRISHNAMURTHY, Lalithasree',
        'I am very happy with the services given by shaale which is highly useful to the artists and public.'),
    Tuple2('SAJINI, Shivapriya',
        'We are so grateful to have associated with ur team, dint realise its been three years for now... We have had excellent work from ur end for all our show with very co operative staffs... May this association carry on for many more years.'),
    Tuple2('REKHA DINESH, Benaka Natya Mandir',
        'Shaale did a great job with videographing all our dance recitals and Bharatanatyam arangetrams.They pay attention to detail of aperforming art. It worked within our budget, and gave us a wonderful professional video to cherish for many years to come. Their excellent live streaming helped us to connect with more audience all over the globe. Thank you Shaale.'),
    Tuple2('ANANTHARAM, President BTM Cultural Academy',
        'It is our pleasure to have been associated with SHAALE for the last over three years in covering the Music programmes of BTM Cultural Academy. We invite you to cover our Prime concerts not only for live telecast and even for Video recordings of some of our Special dance programmes. All these were responded to by you very efficiently and the results are very well recieved and appreciated by us and the viewing art lovers. Congratulations and best wishes for your future.'),
    Tuple2('RAVINDRA KATOTI',
        'It has been very delightful experience ever since our events were streamed live on Shaale. It is not only reaching out a wider audience, but also enhancing the value of the event for the artiste, organisers and viewers as well. Shaale has increased our enthusiasm and energy many folds.'),
    Tuple2(
        'SMT. CHITRA VINODH - Artistic Director Chitra Centre for Performing Arts',
        'We are an upcoming Bharatanatyam Dance institution based in Bangalore and regularly conduct events like arangetrams and other festivals, We having been using the services of Shaale.com forthe past 3 years. We find the team at Shaale are very caliber and extremely professional. They are committed to their work and deliver some fantastic results in a timely manner. It has been a pleasure to work them and will continue to do so for all our events in future.'),
    Tuple2('SANTHOSH NARAYANAN Trustee(RFA), Member(Kalasampoorna)',
        'I have had the privilege of interacting with Shaale for the past 5 years, in my capacity as RFA trustee as well as member of Kalasampurna. The recordings and webcast facility offered by Shale is really top class. What is most pleasing is the excellent attitude of Shaale staff, their ability to accomodate to any situation & help with editing post the event. Always look forward to a contiued association with Shaale.'),
    Tuple2('MANASI PRASAD, Karnatik vocalist',
        'Team Shaale is professional and committed. Be it a live event, a concert shoot or a web stream, one can rest assured that they will get the job done! The team genuinely cares about art and artistes, and their passion reflects in their work. I would not hesitate in recommending Shaale to any artiste or organizer.'),
    Tuple2(
        'PRINCE RAMA VARMA (Renowned Indian Classical Vocalist, Musicologist & organizer of the Swathi Sangeethotsavam)',
        'Have watched the live webcast of many many carnatic concerts, but your camera team was easily one of the best I have ever seen!'),
    Tuple2(
        'T M KRISHNA (Eminent Indian Classical vocalist & organizer of Svanubhava)',
        'I must thank Shaale for their webcast of our Svanubhava festival in Chennai, 2014. It was a true pleasure to work with them. Their understanding of indian arts its visual and aural requirements helps in giving the viewer a real experience of being part of the performances. They were extremely professional and accomodative of our requests. I thank them and I am sure we will work together many more times. I applaud their commitment to the Indian arts and their efforts to disseminate it. among the larger community.'),
    Tuple2('KIRAN SETH, Founder - SPICMACAY',
        'Thank you very much for all the support. It was very nice of the group at Shaale Live to help us and do it so well'),
    Tuple2('SHANKAR MAHADEVAN (Award winning music composer & singer)',
        'Shaale is run by a fantastic group of people who can take your dreams to millions around the world through their flawless streaming services, I am highly impressed by their professional & timely service. The quality of webcasts & video documentation Shaale provides can hardly be matched'),
    Tuple2('PRAVEEN KUMAR, Renowned Bharatanatyam Dancer',
        'SHAALE stands for its \"name\" Generally a \"Shaale\" is connected with discipline, punctuality, learning place. Here also the team of Shaale adheres to all these qualities. The people connected with this organisation are very professional, deliver to our needs no Compromise in quality of work & yet they are also \"learning place\" for many who gain the knowledge of our art by watching their uninterrupted web cast which is watched worldwide. Wishing them the best in carrying forward our art to one & all via technology.'),
  ];
}

///Contains only UI Part of the Homepage
class HomeWidget extends HomeLogic {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          // Informative cards
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  _infoImgCard(info1.item1, info1.item2),
                  _infoImgCard(info2.item1, info2.item2, isHighlighted: true),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        SizedBox(
                          width: 320,
                          height: 240,
                          child: _infoImgCard(info3.item1, info3.item2),
                        ),
                        SizedBox(
                          width: 320,
                          height: 240,
                          child: _infoImgCard(info4.item1, info4.item2),
                        ),
                        SizedBox(
                            width: 320,
                            height: 240,
                            child: _infoCardWithBg(info5.item1, info5.item2)),
                      ],
                    ),
                  ),
                  _infoImgCard(info6.item1, info6.item2),
                  Padding(
                      padding: EdgeInsets.only(top: 24, bottom: 8),
                      child: Text('TESTIMONIALS',
                          style: Theme.of(context).textTheme.title)),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(testimonials.length, (i) {
                        return _testimonialCard(
                            testimonials[i].item1, testimonials[i].item2);
                      }),
                    ),
                  )
                ],
              ),
            ),
          ),

          //Botttom  bar
          Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(height: 28),
                  Container(
                    height: 52,
                    color: Colors.primaries[0],
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        //Live button
                        FlatButton.icon(
                          textColor: Colors.white,
                          onPressed: () {},
                          icon: Icon(Icons.arrow_drop_up),
                          label: Text(
                            'liVe',
                            style: TextStyle(
                                fontFamily: 'FaceCover', fontSize: 24),
                          ),
                        ),
                        //Bookings button
                        IconButton(
                          color: Colors.white,
                          icon: Icon(Icons.list),
                          onPressed: () {},
                        )
                      ],
                    ),
                  )
                ],
              ),
              Center(
                child: ButtonTheme(
                  height: 46,
                  minWidth: 102,
                  //Book button
                  child: RaisedButton.icon(
                    color: Colors.white,
                    elevation: 6,
                    textColor: Colors.primaries[0],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(18))),
                    icon: Icon(Icons.date_range),
                    label: Text('Book'),
                    onPressed: () {},
                  ),
                ),
              )
            ],
          )
        ]),
      ),
    );
  }

  /// Card with title and body
  Widget _testimonialCard(String title, String body) {
    return SizedBox(
      width: 320,
      height: 320,
      child: Card(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(6, 12, 6, 8),
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.8),
              ),
            ),
            Expanded(
              child: Scrollbar(
                child: SingleChildScrollView(
                  padding: EdgeInsets.all(6),
                  child: Text(
                    body,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                        letterSpacing: 0.8),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  ///Card that displays
  /// * Text [text]
  /// * Background Image with asset name [imgLoc]
  Widget _infoCardWithBg(String text, String imgLoc) {
    return Card(
      child: Container(
        alignment: AlignmentDirectional.center,
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w400,
              letterSpacing: 0.8),
        ),
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(imgLoc),
                colorFilter:
                    ColorFilter.mode(Colors.black38, BlendMode.luminosity))),
      ),
    );
  }

  ///Card that displays
  /// * Text [text] as first child
  /// * Image with asset name [imgLoc] as second child. if null => displays nothing.
  ///
  /// set [isHighlighted] true to make card color primary and text color white
  Widget _infoImgCard(String text, String imgLoc,
      {bool isHighlighted = false}) {
    return Theme(
      data: ThemeData(
          cardColor: isHighlighted ? Colors.primaries[0] : null,
          textTheme: isHighlighted
              ? TextTheme(body1: TextStyle(color: Colors.white))
              : null),
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(6, 12, 6, 8),
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                    letterSpacing: 0.8),
              ),
            ),
            imgLoc != null ? Image.asset(imgLoc, fit: BoxFit.cover) : Icon(null)
          ],
        ),
      ),
    );
  }
}
