import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        leading: Icon(
          Icons.menu,
        ),
        title: Text(
          'Mo5tar',
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.notification_important_outlined,
              ),
                onPressed:()
                {
                print ('notification clicked') ;
                },
                 ),


          IconButton(
            icon: Icon(
              Icons.search,
            ),
            onPressed:()
            {
              print ('hello') ;
            },
          ),
        ],
        centerTitle: true,
        elevation: 20.0,
      ),
      body: Column(
        children:
        [

          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Container(

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular((20.0))
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Stack(
                  alignment: Alignment.bottomCenter,
                  children:[
                    Image(
                    image: NetworkImage(
                      'https://cdn.shopify.com/s/files/1/0035/2754/0782/articles/International_Flower_Day_1200x1200.jpeg?v=1579365491',

                    ),

                  ),
                    Container(
                      width: double.infinity,
                      color: Colors.black.withOpacity(0.33),
                      padding: EdgeInsets.symmetric(
                        vertical: 5.0,
                      ),
                      child: Text(
                          'Flower',
                      textAlign: TextAlign.center,
                      style:TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                      ),
                    ),
                  ],
                ),
            ),
          ),



         ],
      ),


    );
  }

}