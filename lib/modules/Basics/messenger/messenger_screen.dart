

import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.black26,
        elevation: 0.0,
        titleSpacing: 20.0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage('https://scontent.fcai10-1.fna.fbcdn.net/v/t39.30808-1/p160x160/258197085_2245390428946861_1886958278609071815_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=7206a8&_nc_eui2=AeEZD-_R9fsdC-xmcTxBhTAmvLtSEqrz6X28u1ISqvPpfdr6A5G86ggUgaQjJ5R2paizaqZTWapjZu2nwSVCzhqr&_nc_ohc=hWWfkhYRVFgAX8xzyJB&tn=cEGzAbYVe6kg0iee&_nc_ht=scontent.fcai10-1.fna&oh=00_AT_sbzeHXzROxXkuKEOr_G9E9tuXWxb-uemTNBrykyx5Og&oe=61DC2F3C')
            ),
            SizedBox(
              width: 15.0,
            ),
            Text(
              'Chats',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: CircleAvatar(
              radius: 15.0,
              backgroundColor: Colors.blue,
              child: Icon(
           Icons.camera_alt,
                size: 16.0,
                color: Colors.white,

          ),
            ),
            onPressed: (){},
          ),
          IconButton(
            icon: CircleAvatar(
              radius: 15.0,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.edit,
                size: 16.0,
                color: Colors.white,

              ),
            ),
            onPressed: (){},
          ),
        ],

      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(

        child :Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [

                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular
                      (
                        5.0
                    ),
                    color: Colors.grey[300],
                  ),
                  padding: EdgeInsets.all(5.0),
                  child: Row(
                    children:[
                    Icon(
                      Icons.search
                    ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Text(
                          'Search',
                      ),
        ],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                child : Row(
                  children: [
                    Container(
                      width: 60.0,
                      child: Column(
                        children:[

                                    Stack(
                                      alignment: AlignmentDirectional.bottomEnd,
                                      children: [
                                        CircleAvatar(
                                            radius: 25.0,
                                            backgroundImage: NetworkImage('https://scontent.fcai10-1.fna.fbcdn.net/v/t39.30808-6/248496168_1982416961938771_4260423739566357460_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeHUtG5rg_PcB9eoeK7AnlUN8zR0GxPbJvbzNHQbE9sm9jSbvFUazs50lZJfrD4eMriulaECT1-iylSJ4kQTyOvE&_nc_ohc=mrSsayepKqkAX_DCunQ&_nc_ht=scontent.fcai10-1.fna&oh=00_AT823S4_5mTTbtdfllA6yxGj_HgJEiUda0WhSn-sYTaZ_A&oe=61DB759D' )
                                        ),
                                        CircleAvatar(
                                          radius: 7.5,
                                          backgroundColor: Colors.lightGreen,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                            height: 6.0,
                          ),
                                    Text(
                                      'Basel Ahmed',
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                    ),
                    SizedBox(
                      width: 3.0,
                    ),
                    Container(
                      width: 60.0,
                      child: Column(
                        children:[

                          Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: [
                              CircleAvatar(
                                  radius: 25.0,
                                  backgroundImage: NetworkImage('https://scontent.fcai10-1.fna.fbcdn.net/v/t39.30808-6/257434890_2321283764675296_5345152971607132577_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeEIA9fXM5r9VrPF0tCk8FnD54pWxH3K3qTnilbEfcrepB_auwnruE_IuOrQmE0lUUD7LaWV3bxKHOdPmax3TUgs&_nc_ohc=VPujm5rbICAAX-nOn4y&_nc_ht=scontent.fcai10-1.fna&oh=00_AT-IsC8fNO190fIUiQnyxra5Qrw0pKG26YoWV9600xJOTw&oe=61DC6C13')
                              ),
                              CircleAvatar(
                                radius: 7.5,
                                backgroundColor: Colors.lightGreen,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 6.0,
                          ),
                          Text(
                            'Farah Mohamed',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                          ),

                        ],
                      ),
                    ),
                    SizedBox(
                      width: 3.0,
                    ),
                    Container(
                      width: 60.0,
                      child: Column(
                        children:[

                          Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: [
                              CircleAvatar(
                                  radius: 25.0,
                                  backgroundImage: NetworkImage('https://scontent.fcai10-1.fna.fbcdn.net/v/t1.6435-9/121028104_364566704901151_3248349256268248498_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=174925&_nc_eui2=AeFQ87tTxriHTOhq3uputNou2A6Wv9zvDsTYDpa_3O8OxOOPPY2LbCjU4y9hci5bzNDYCoBPgCfLPSvF9C7QnYRr&_nc_ohc=lK8aGfq1GeQAX_z6Bia&_nc_ht=scontent.fcai10-1.fna&oh=00_AT9jGwoQkzPxgI6dbZUq38LVSAiQdlJId2Lmn5WZEYWl1w&oe=61FC1AA7')
                              ),
                              CircleAvatar(
                                radius: 7.5,
                                backgroundColor: Colors.lightGreen,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 6.0,
                          ),
                          Text(
                            'Mazen Emad',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                          ),

                        ],
                      ),
                    ),
                    SizedBox(
                      width: 3.0,
                    ),
                    Container(
                      width: 60.0,
                      child: Column(
                        children:[

                          Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: [
                              CircleAvatar(
                                  radius: 25.0,
                                  backgroundImage: NetworkImage('https://scontent.fcai10-1.fna.fbcdn.net/v/t1.6435-9/89266455_10213014914206694_6582885332218281984_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeEwNlLhzocHjL_rBn8G73zXxNIrvitgXrDE0iu-K2BesKCmof5QE5g4aHpV86NkYp0dtWyGKOUW3YP30jEQeAty&_nc_ohc=1XUtGBAaN-EAX_TJyvu&_nc_ht=scontent.fcai10-1.fna&oh=00_AT9Arx-LltHmjJA6YdJOoukTgddFw2iw5WreciBRbhLiGA&oe=61FD33A4')
                              ),
                              CircleAvatar(
                                radius: 7.5,
                                backgroundColor: Colors.lightGreen,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 6.0,
                          ),
                          Text(
                            'Samir Yasser ElKaissarly',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                          ),

                        ],
                      ),
                    ),
                    SizedBox(
                      width: 3.0,
                    ),
                    Container(
                      width: 60.0,
                      child: Column(
                        children:[

                          Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: [
                              CircleAvatar(
                                  radius: 25.0,
                                  backgroundImage: NetworkImage('https://scontent.fcai10-1.fna.fbcdn.net/v/t39.30808-6/271186272_1764195740451530_5590883954853192402_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeHRedy7m2a4-FgP1rKIFGN0y2Fnq2GC5W_LYWerYYLlb_hEAi6-GCUw1FWHTnZ2lxpmMZqh6vNCQzcAWE_RKyGH&_nc_ohc=G65cQk2UW3sAX83cVo-&_nc_ht=scontent.fcai10-1.fna&oh=00_AT-QXGFPZIft5TGIgr06i4FICUXnrh21PC9_7AnFjx2C2w&oe=61DB5C81')
                              ),
                              CircleAvatar(
                                radius: 7.5,
                                backgroundColor: Colors.lightGreen,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 6.0,
                          ),
                          Text(
                            'Mohammed Abd El Menem',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                          ),

                        ],
                      ),
                    ),
                    SizedBox(
                      width: 3.0,
                    ),
                    Container(
                      width: 60.0,
                      child: Column(
                        children:[

                          Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: [
                              CircleAvatar(
                                  radius: 25.0,
                                  backgroundImage: NetworkImage('https://scontent.fcai10-1.fna.fbcdn.net/v/t1.6435-9/c0.23.206.206a/p206x206/156330652_2114981288638879_7787479643297941493_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=da31f3&_nc_eui2=AeGZQrabe551NWNIQZAJv9d49spVctr-dZL2ylVy2v51kuoyWQCk75c0OgiBHXuzcbD6sRZ-QP7grZj2oresYfIh&_nc_ohc=282P3EFtbxwAX8DqhmF&_nc_ht=scontent.fcai10-1.fna&oh=00_AT8Q4996G3UHG4QXwrrKfwcgrEi9s1MceDwOTpNpwPW6YQ&oe=61FA956B')
                              ),
                              CircleAvatar(
                                radius: 7.5,
                                backgroundColor: Colors.lightGreen,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 6.0,
                          ),
                          Text(
                            'Fatma Khaled',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                          ),

                        ],
                      ),
                    ),
                    SizedBox(
                      width: 3.0,
                    ),
                    Container(
                      width: 60.0,
                      child: Column(
                        children:[

                          Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: [
                              CircleAvatar(
                                  radius: 25.0,
                                  backgroundImage: NetworkImage('https://scontent.fcai10-1.fna.fbcdn.net/v/t1.6435-9/48393634_1969222859828499_780449317788844032_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=174925&_nc_eui2=AeF9X99bRP4j2i95K87b29eGHhK3rS0_RnQeEretLT9GdFxP5EMPjlCnzoAFdFvil8F91ugmjPdV1IoU7TF2ujKA&_nc_ohc=rEmdkOro-cEAX-g3st9&tn=cEGzAbYVe6kg0iee&_nc_ht=scontent.fcai10-1.fna&oh=00_AT-MOApvgwpB3KR8u6GrgyTM2xLKxLZsKo7UBiUuPpHJBA&oe=61FB61AC')
                              ),
                              CircleAvatar(
                                radius: 7.5,
                                backgroundColor: Colors.lightGreen,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 6.0,
                          ),
                          Text(
                            'Tarek ElShawaf',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                          ),

                        ],
                      ),
                    ),
                    SizedBox(
                      width: 3.0,
                    ),
                    Container(
                      width: 60.0,
                      child: Column(
                        children:[

                          Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: [
                              CircleAvatar(
                                  radius: 25.0,
                                  backgroundImage: NetworkImage('https://scontent.ffar2-1.fna.fbcdn.net/v/t39.30808-6/215840607_4064590876953396_8261316314831448189_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeE8Jf39tXAHG3fh16LF-H-m7c6NFzpqOHztzo0XOmo4fMZLHpaf0xuLSA8ljn5upzCZZHTQthv_gX1fJfxpu78c&_nc_ohc=JFXESMl4RxkAX9PEIMt&_nc_ht=scontent.ffar2-1.fna&oh=00_AT_O-cDxSiDnmy-Z3gqz36OFtpbVbyJejFXEArOkAIeg5Q&oe=61DB9858')
                              ),
                              CircleAvatar(
                                radius: 7.5,
                                backgroundColor: Colors.lightGreen,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 6.0,
                          ),
                          Text(
                            'Ahmed Amr',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                          ),

                        ],
                      ),
                    ),
                  ],
                ),

                ),
                SizedBox(
                  height: 25.0,
                ),
                 Column(
                              children: [
                                Row(
                                  children: [
                                    Stack(
                                      alignment: AlignmentDirectional.bottomEnd,
                                      children: [
                                        CircleAvatar(
                                            radius: 25.0,
                                            backgroundImage: NetworkImage('https://scontent.fcai10-1.fna.fbcdn.net/v/t39.30808-6/248496168_1982416961938771_4260423739566357460_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeHUtG5rg_PcB9eoeK7AnlUN8zR0GxPbJvbzNHQbE9sm9jSbvFUazs50lZJfrD4eMriulaECT1-iylSJ4kQTyOvE&_nc_ohc=mrSsayepKqkAX_DCunQ&_nc_ht=scontent.fcai10-1.fna&oh=00_AT823S4_5mTTbtdfllA6yxGj_HgJEiUda0WhSn-sYTaZ_A&oe=61DB759D' )
                                        ),
                                        CircleAvatar(
                                          radius: 7.5,
                                          backgroundColor: Colors.lightGreen,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 20.0,
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                              "Basel Ahmed"
                                          ),
                                          SizedBox(
                                            height: 5.0,
                                          ),
                                          Row(
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  "Mashy ",
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                  maxLines: 2,
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.symmetric(
                                                  horizontal: 10.0,
                                                ),
                                                child: Container(
                                                  width: 7.0,
                                                  height: 7.0,
                                                  decoration: BoxDecoration(
                                                    color:Colors.blue,
                                                    shape:BoxShape.circle,

                                                  ),
                                                ),

                                              ),
                                              Text(
                                                  "23:00 PM "
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),

                                  ],
                                ),
                                SizedBox(
              height: 30.0,
            ),
                                Row(
                                  children: [
                                    Stack(
                                      alignment: AlignmentDirectional.bottomEnd,
                                      children: [
                                        CircleAvatar(
                                            radius: 25.0,
                                            backgroundImage: NetworkImage('https://scontent.fcai10-1.fna.fbcdn.net/v/t1.6435-9/121028104_364566704901151_3248349256268248498_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=174925&_nc_eui2=AeFQ87tTxriHTOhq3uputNou2A6Wv9zvDsTYDpa_3O8OxOOPPY2LbCjU4y9hci5bzNDYCoBPgCfLPSvF9C7QnYRr&_nc_ohc=lK8aGfq1GeQAX_z6Bia&_nc_ht=scontent.fcai10-1.fna&oh=00_AT9jGwoQkzPxgI6dbZUq38LVSAiQdlJId2Lmn5WZEYWl1w&oe=61FC1AA7')
                                        ),
                                        CircleAvatar(
                                          radius: 7.5,
                                          backgroundColor: Colors.lightGreen,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 20.0,
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                              "Mazen Emad"
                                          ),
                                          SizedBox(
                                            height: 5.0,
                                          ),
                                          Row(
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  "Nnzl nzaker algo brgola ",
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                  maxLines: 2,
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.symmetric(
                                                  horizontal: 10.0,
                                                ),
                                                child: Container(
                                                  width: 7.0,
                                                  height: 7.0,
                                                  decoration: BoxDecoration(
                                                    color:Colors.blue,
                                                    shape:BoxShape.circle,

                                                  ),
                                                ),

                                              ),
                                              Text(
                                                  "21:30 PM "
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),

                                  ],
                                ),
                                SizedBox(
              height: 30.0,
            ),
                                Row(
                                  children: [
                                    Stack(
                                      alignment: AlignmentDirectional.bottomEnd,
                                      children: [
                                        CircleAvatar(
                                            radius: 25.0,
                                            backgroundImage: NetworkImage('https://scontent.fcai10-1.fna.fbcdn.net/v/t1.6435-9/89266455_10213014914206694_6582885332218281984_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeEwNlLhzocHjL_rBn8G73zXxNIrvitgXrDE0iu-K2BesKCmof5QE5g4aHpV86NkYp0dtWyGKOUW3YP30jEQeAty&_nc_ohc=1XUtGBAaN-EAX_TJyvu&_nc_ht=scontent.fcai10-1.fna&oh=00_AT9Arx-LltHmjJA6YdJOoukTgddFw2iw5WreciBRbhLiGA&oe=61FD33A4')
                                        ),
                                        CircleAvatar(
                                          radius: 7.5,
                                          backgroundColor: Colors.lightGreen,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 20.0,
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                              "Samir Yasser ElKaissarly",
                                          ),
                                          SizedBox(
                                            height: 5.0,
                                          ),
                                          Row(
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  "Ok bs mt25ar 3ala 9 keda ",
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                  maxLines: 2,
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.symmetric(
                                                  horizontal: 10.0,
                                                ),
                                                child: Container(
                                                  width: 7.0,
                                                  height: 7.0,
                                                  decoration: BoxDecoration(
                                                    color:Colors.blue,
                                                    shape:BoxShape.circle,

                                                  ),
                                                ),

                                              ),
                                              Text(
                                                  "19:20 PM "
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),

                                  ],
                                ),
                                SizedBox(
              height: 30.0,
            ),
                                Row(
                                  children: [
                                    Stack(
                                      alignment: AlignmentDirectional.bottomEnd,
                                      children: [
                                        CircleAvatar(
                                            radius: 25.0,
                                            backgroundImage: NetworkImage('https://scontent.fcai10-1.fna.fbcdn.net/v/t39.30808-6/271186272_1764195740451530_5590883954853192402_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeHRedy7m2a4-FgP1rKIFGN0y2Fnq2GC5W_LYWerYYLlb_hEAi6-GCUw1FWHTnZ2lxpmMZqh6vNCQzcAWE_RKyGH&_nc_ohc=G65cQk2UW3sAX83cVo-&_nc_ht=scontent.fcai10-1.fna&oh=00_AT-QXGFPZIft5TGIgr06i4FICUXnrh21PC9_7AnFjx2C2w&oe=61DB5C81')
                                        ),
                                        CircleAvatar(
                                          radius: 7.5,
                                          backgroundColor: Colors.lightGreen,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 20.0,
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                              'Mohammed Abd El Menem',
                                          ),
                                          SizedBox(
                                            height: 5.0,
                                          ),
                                          Row(
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  "Kosom Samir ",
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                  maxLines: 2,
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.symmetric(
                                                  horizontal: 10.0,
                                                ),
                                                child: Container(
                                                  width: 7.0,
                                                  height: 7.0,
                                                  decoration: BoxDecoration(
                                                    color:Colors.blue,
                                                    shape:BoxShape.circle,

                                                  ),
                                                ),

                                              ),
                                              Text(
                                                  "17:00 AM "
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),

                                  ],
                                ),
                                SizedBox(
              height: 30.0,
            ),
                                Row(
              children: [
                    Stack(
                      alignment: AlignmentDirectional.bottomEnd,
                      children: [
                        CircleAvatar(
                                radius: 25.0,
                                backgroundImage: NetworkImage('https://scontent.fcai10-1.fna.fbcdn.net/v/t1.6435-9/c0.23.206.206a/p206x206/156330652_2114981288638879_7787479643297941493_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=da31f3&_nc_eui2=AeGZQrabe551NWNIQZAJv9d49spVctr-dZL2ylVy2v51kuoyWQCk75c0OgiBHXuzcbD6sRZ-QP7grZj2oresYfIh&_nc_ohc=282P3EFtbxwAX8DqhmF&_nc_ht=scontent.fcai10-1.fna&oh=00_AT8Q4996G3UHG4QXwrrKfwcgrEi9s1MceDwOTpNpwPW6YQ&oe=61FA956B')
                        ),
                        CircleAvatar(
                          radius: 7.5,
                          backgroundColor: Colors.lightGreen,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                                'Fatma Khaled',
                          ),
                          SizedBox(
                                height: 5.0,
                          ),
                          Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      "Msh 3ayza aswahak",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      maxLines: 2,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0,
                                    ),
                                    child: Container(
                                      width: 7.0,
                                      height: 7.0,
                                      decoration: BoxDecoration(
                                        color:Colors.blue,
                                        shape:BoxShape.circle,

                                      ),
                                    ),

                                  ),
                                  Text(
                                      "17:00 AM "
                                  ),
                                ],
                          ),
                        ],
                      ),
                    ),

              ],
            ),
                                SizedBox(
                                  height: 30.0,
                                ),
                                Row(
                                  children: [
                                    Stack(
                                      alignment: AlignmentDirectional.bottomEnd,
                                      children: [
                                        CircleAvatar(
                                            radius: 25.0,
                                            backgroundImage: NetworkImage('https://scontent.ffar2-1.fna.fbcdn.net/v/t39.30808-6/215840607_4064590876953396_8261316314831448189_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeE8Jf39tXAHG3fh16LF-H-m7c6NFzpqOHztzo0XOmo4fMZLHpaf0xuLSA8ljn5upzCZZHTQthv_gX1fJfxpu78c&_nc_ohc=JFXESMl4RxkAX9PEIMt&_nc_ht=scontent.ffar2-1.fna&oh=00_AT_O-cDxSiDnmy-Z3gqz36OFtpbVbyJejFXEArOkAIeg5Q&oe=61DB9858')
                                        ),
                                        CircleAvatar(
                                          radius: 7.5,
                                          backgroundColor: Colors.lightGreen,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 20.0,
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Ahmed Amr',
                                          ),
                                          SizedBox(
                                            height: 5.0,
                                          ),
                                          Row(
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  "Moussaa gamed awyyy",
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                  maxLines: 2,
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.symmetric(
                                                  horizontal: 10.0,
                                                ),
                                                child: Container(
                                                  width: 7.0,
                                                  height: 7.0,
                                                  decoration: BoxDecoration(
                                                    color:Colors.blue,
                                                    shape:BoxShape.circle,

                                                  ),
                                                ),

                                              ),
                                              Text(
                                                  "17:00 AM "
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),

                                  ],
                                ),
                                SizedBox(
              height: 30.0,
            ),
                                Row(
              children: [
                    Stack(
                      alignment: AlignmentDirectional.bottomEnd,
                      children: [
                        CircleAvatar(
                                radius: 25.0,
                                backgroundImage: NetworkImage('https://scontent.fcai10-1.fna.fbcdn.net/v/t1.6435-9/48393634_1969222859828499_780449317788844032_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=174925&_nc_eui2=AeF9X99bRP4j2i95K87b29eGHhK3rS0_RnQeEretLT9GdFxP5EMPjlCnzoAFdFvil8F91ugmjPdV1IoU7TF2ujKA&_nc_ohc=rEmdkOro-cEAX-g3st9&tn=cEGzAbYVe6kg0iee&_nc_ht=scontent.fcai10-1.fna&oh=00_AT-MOApvgwpB3KR8u6GrgyTM2xLKxLZsKo7UBiUuPpHJBA&oe=61FB61AC')
                        ),
                        CircleAvatar(
                          radius: 7.5,
                          backgroundColor: Colors.lightGreen,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                                'Tarek Elshawaf',
                          ),
                          SizedBox(
                                height: 5.0,
                          ),
                          Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      "Ezzz Mal3obba",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      maxLines: 2,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0,
                                    ),
                                    child: Container(
                                      width: 7.0,
                                      height: 7.0,
                                      decoration: BoxDecoration(
                                        color:Colors.blue,
                                        shape:BoxShape.circle,

                                      ),
                                    ),

                                  ),
                                  Text(
                                      "17:00 AM "
                                  ),
                                ],
                          ),
                        ],
                      ),
                    ),

              ],
            ),
                                SizedBox(
                                  height: 30.0,
                                ),
                                Row(
                                  children: [
                                    Stack(
                                      alignment: AlignmentDirectional.bottomEnd,
                                      children: [
                                        CircleAvatar(
                                            radius: 25.0,
                                            backgroundImage: NetworkImage('https://scontent.fcai10-1.fna.fbcdn.net/v/t39.30808-6/257434890_2321283764675296_5345152971607132577_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeEIA9fXM5r9VrPF0tCk8FnD54pWxH3K3qTnilbEfcrepB_auwnruE_IuOrQmE0lUUD7LaWV3bxKHOdPmax3TUgs&_nc_ohc=VPujm5rbICAAX-nOn4y&_nc_ht=scontent.fcai10-1.fna&oh=00_AT-IsC8fNO190fIUiQnyxra5Qrw0pKG26YoWV9600xJOTw&oe=61DC6C13')
                                        ),
                                        CircleAvatar(
                                          radius: 7.5,
                                          backgroundColor: Colors.lightGreen,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 20.0,
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                              "Farah Mohamed"
                                          ),
                                          SizedBox(
                                            height: 5.0,
                                          ),
                                          Row(
                                            children: [
                                              Expanded(
                                                child: Text(
                                                    "Hi ",
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                  maxLines: 2,
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.symmetric(
                                                  horizontal: 10.0,
                                                ),
                                                child: Container(
                                                  width: 7.0,
                                                  height: 7.0,
                                                  decoration: BoxDecoration(
                                                    color:Colors.blue,
                                                    shape:BoxShape.circle,

                                                  ),
                                                ),

                                              ),
                                              Text(
                                                  "00:00 AM "
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),

                                  ],
                                ),

                              ],
                            ),

                      ],

                  )

                )





        ),





    );
  }
}
