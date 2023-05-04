import 'package:flutter/material.dart';
import 'package:instagram/utillites/utilities.dart';
import 'package:popup_menu/popup_menu.dart';
import 'package:responsive_builder/responsive_builder.dart';

class TopFeedSection extends StatefulWidget {
  final bool isMessage;
  final double width;
  final Function uploadPost;

  const TopFeedSection({this.isMessage, this.width, this.uploadPost});

  @override
  State<TopFeedSection> createState() => _TopFeedSectionState();
}

class _TopFeedSectionState extends State<TopFeedSection> {
  PopupMenu menu;
  GlobalKey btnKey = GlobalKey();
  GlobalKey btnKey2 = GlobalKey();
  GlobalKey btnKey3 = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: widget.width * 0.3,
              height: 50,
              child: TextField(
                cursorColor: mainColor,
                autofocus: false,
                decoration: InputDecoration(
                  hoverColor: mainColor,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: mainBgColor),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: mainBgColor),
                  ),
                  filled: true,
                  prefixIcon: Icon(
                    Icons.search_outlined,
                    color: mainGreyColor,
                  ),
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  fillColor: mainBgColor,
                  hintText: 'Search',
                  hintStyle: TextStyle(color: mainGreyColor),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(),
                Row(
                  children: [
                    Stack(
                      alignment: AlignmentDirectional.topEnd,
                      children: [
                        widget.isMessage
                            ? Container(
                                height: 6,
                                width: 6,
                                decoration: BoxDecoration(
                                  color: mainColor,
                                  borderRadius: BorderRadius.circular(3),
                                ),
                              )
                            : Container(),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Icon(
                            Icons.near_me_outlined,
                            color: mainBlackColor,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Stack(
                      alignment: AlignmentDirectional.topEnd,
                      children: [
                        Container(
                          height: 6,
                          width: 6,
                          decoration: BoxDecoration(
                            color: mainColor,
                            borderRadius: BorderRadius.circular(3),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Icon(
                            Icons.notifications,
                            color: mainBlackColor,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    InkWell(
                      onTap: () {
                        widget.uploadPost();
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            mainColor,
                            mainYellowColor,
                          ],
                        )),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(children: [
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                color: mainWhiteColor.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Icon(
                                Icons.add,
                                color: mainWhiteColor,
                                size: 18,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                'Add Post',
                                style: TextStyle(
                                    color: mainWhiteColor,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ]),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      tablet: (context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: widget.width * 0.3,
            height: 50,
            child: TextField(
              cursorColor: mainColor,
              autofocus: false,
              decoration: InputDecoration(
                hoverColor: mainColor,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: mainBgColor),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: mainBgColor),
                ),
                filled: true,
                prefixIcon: Icon(
                  Icons.search_outlined,
                  color: mainGreyColor,
                ),
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                fillColor: mainBgColor,
                hintText: 'Search',
                hintStyle: TextStyle(color: mainGreyColor),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(),
              Row(
                children: [
                  Stack(
                    alignment: AlignmentDirectional.topEnd,
                    children: [
                      widget.isMessage
                          ? Container(
                              height: 6,
                              width: 6,
                              decoration: BoxDecoration(
                                color: mainColor,
                                borderRadius: BorderRadius.circular(3),
                              ),
                            )
                          : Container(),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Icon(
                          Icons.near_me_outlined,
                          color: mainBlackColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Stack(
                    alignment: AlignmentDirectional.topEnd,
                    children: [
                      Container(
                        height: 6,
                        width: 6,
                        decoration: BoxDecoration(
                          color: mainColor,
                          borderRadius: BorderRadius.circular(3),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Icon(
                          Icons.notifications,
                          color: mainBlackColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    onTap: () {
                      widget.uploadPost();
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          mainColor,
                          mainYellowColor,
                        ],
                      )),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(children: [
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              color: mainWhiteColor.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Icon(
                              Icons.add,
                              color: mainWhiteColor,
                              size: 18,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              'Add Post',
                              style: TextStyle(
                                  color: mainWhiteColor,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ]),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      desktop: (context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: widget.width * 0.3,
            height: 50,
            child: TextField(
              cursorColor: mainColor,
              autofocus: false,
              decoration: InputDecoration(
                hoverColor: mainColor,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: mainBgColor),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: mainBgColor),
                ),
                filled: true,
                prefixIcon: Icon(
                  Icons.search_outlined,
                  color: mainGreyColor,
                ),
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                fillColor: mainBgColor,
                hintText: 'Search',
                hintStyle: TextStyle(color: mainGreyColor),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(),
              Row(
                children: [
                  Stack(
                    alignment: AlignmentDirectional.topEnd,
                    children: [
                      widget.isMessage
                          ? Container(
                              height: 6,
                              width: 6,
                              decoration: BoxDecoration(
                                color: mainColor,
                                borderRadius: BorderRadius.circular(3),
                              ),
                            )
                          : Container(),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Icon(
                          Icons.near_me_outlined,
                          color: mainBlackColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Stack(
                    alignment: AlignmentDirectional.topEnd,
                    children: [
                      Container(
                        height: 6,
                        width: 6,
                        decoration: BoxDecoration(
                          color: mainColor,
                          borderRadius: BorderRadius.circular(3),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Icon(
                          Icons.notifications,
                          color: mainBlackColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    onTap: () {
                      widget.uploadPost();
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          mainColor,
                          mainYellowColor,
                        ],
                      )),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(children: [
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              color: mainWhiteColor.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Icon(
                              Icons.add,
                              color: mainWhiteColor,
                              size: 18,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              'Add Post',
                              style: TextStyle(
                                  color: mainWhiteColor,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ]),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      watch: (context) => Container(
        color: Colors.purple,
      ),
    );
  }

  void stateChanged(bool isShow) {
    print('menu is ${isShow ? 'showing' : 'closed'}');
  }

  void onClickMenu(MenuItemProvider item) {
    print('Click me -> ${item.menuTitle}');
  }

  void onDismiss() {
    print('Menu is dismiss');
  }

//   void popMenuNotification(){
//     PopupMenu menu=PopupMenu(
//   backgroundColor: mainColor,
//   lineColor: mainWhiteColor,
//   maxColumn: 1,
//   items: List.generate(10, (index) => MenuItem(
//     title:'NOTIFICATIONS',
//     image:Scaffold(
//       backgroundColor: Colors.transparent,
//       body: null,
//     ),

//   )),
// );
//   }
}
