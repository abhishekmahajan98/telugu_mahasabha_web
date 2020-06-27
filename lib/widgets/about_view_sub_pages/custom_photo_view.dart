import 'package:flutter/material.dart';
import 'package:telugu_mahasabha_web/constants/navbar_constants.dart';

class CustomPhotoView extends StatelessWidget {
  final bool isMobile;
  final List<String> photosUrl;
  final String title;
  final Function onDownloadButtonPress;
  final int selectedPic;
  final Function onTapForwardButton;
  final onTapBackwardButton;
  final Function onTapListImage;
  CustomPhotoView({
    Key key,
    @required this.isMobile,
    @required this.photosUrl,
    @required this.title,
    @required this.onDownloadButtonPress,
    @required this.selectedPic,
    @required this.onTapForwardButton,
    @required this.onTapBackwardButton,
    this.onTapListImage,
  }) : super(key: key);

  Widget forwardPage() {
    return IconButton(
      icon: Icon(
        Icons.arrow_forward_ios,
      ),
      onPressed: onTapForwardButton,
    );
  }

  Widget backPage() {
    return IconButton(
      icon: Icon(
        Icons.arrow_back_ios,
      ),
      onPressed: onTapBackwardButton,
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            isMobile == false
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      title,
                      style: navbarTitle,
                    ),
                  )
                : Container(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: RaisedButton(
                onPressed: onDownloadButtonPress,
                color: Color.fromARGB(255, 203, 36, 46),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
                child: Row(
                  children: [
                    Text(
                      'Download File',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Icon(
                      Icons.file_download,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: screenHeight / 30,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            isMobile == false ? backPage() : Container(),
            Container(
              height: screenHeight * 0.6,
              width: isMobile == false ? screenWidth / 4 : screenWidth * 0.8,
              child: Image.asset(photosUrl[selectedPic]),
            ),
            isMobile == false ? forwardPage() : Container(),
          ],
        ),
        isMobile
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  backPage(),
                  SizedBox(
                    width: screenWidth / 20,
                  ),
                  forwardPage(),
                ],
              )
            : Container(),
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(
            top: screenHeight / 70,
          ),
          height: screenHeight / 8,
          width: isMobile == false ? screenWidth / 3 : screenWidth * 0.8,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: photosUrl.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: screenWidth / 70,
                ),
                child: GestureDetector(
                  onTap: () {
                    //TODO ontap image in listview
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: selectedPic == index
                          ? Border.all(
                              color: Colors.red,
                              width: 2,
                            )
                          : null,
                    ),
                    child: Image.asset(photosUrl[index]),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
