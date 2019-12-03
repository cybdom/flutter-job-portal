import 'package:flutter/material.dart';
import 'package:flutter_job_portal/global.dart';
import 'package:flutter_job_portal/models/bottomsheet.dart';
import 'package:flutter_job_portal/ui/screens/screens.dart';
import 'package:flutter_job_portal/ui/widgets/widgets.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xfff0f0f6),
        body: Stack(
          children: <Widget>[
            Positioned(
              top: 0,
              right: 0,
              left: 0,
              bottom: 60,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 7.0,
                    ),
                    Row(
                      children: <Widget>[
                        MyDropDownButton(),
                        Spacer(),
                        IconButton(
                          icon: Icon(
                            Icons.search,
                            color: Colors.black87,
                          ),
                          onPressed: () {},
                        ),
                        CircleAvatar(
                          backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2017/06/09/07/37/notebook-2386034_960_720.jpg"),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 51,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.search),
                                hintText: "Search",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                    borderSide: BorderSide.none),
                                fillColor: Color(0xffe6e6ec),
                                filled: true,
                              ),
                            ),
                          ),
                          SizedBox(width: 15),
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xffe6e6ec),
                              borderRadius: BorderRadius.circular(9.0),
                            ),
                            child: IconButton(
                              icon: Icon(Icons.tune),
                              onPressed: () {
                                Provider.of<MyBottomSheetModel>(context)
                                    .changeState();
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 11,
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: jobList.length,
                        itemBuilder: (ctx, i) {
                          return JobContainer(
                            description: jobList[i].description,
                            iconUrl: jobList[i].iconUrl,
                            location: jobList[i].location,
                            salary: jobList[i].salary,
                            title: jobList[i].title,
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (ctx) => DetailsScreen(id: i),
                              ),
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              height: 60,
              child: MyBottomNavBar(),
            ),
            Provider.of<MyBottomSheetModel>(context).visible 
                ? Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    // height: MediaQuery.of(context).size.height / 1.3,
                    child: MyBottomSheet(),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
