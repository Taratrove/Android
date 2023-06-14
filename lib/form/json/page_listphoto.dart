import 'package:flutter/material.dart';
import 'package:ntu_flutter/form/json/jsondata.dart';

class pageListphoto62 extends StatelessWidget {
  const pageListphoto62({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Json list photo"),
      ),
      body: FutureBuilder<List<Photo>?>(
        future: getHTTpContent(),
        builder: (context, snapshot){
          if(snapshot.hasError){
            return Center(child: Text("lỗi không tải được"));
          }else
            if(snapshot.hasData == false){
              return Center(child: CircularProgressIndicator());
            }else{
              List<Photo> list = snapshot.data!;
              return GridView.extent(
                  maxCrossAxisExtent:200,
                padding: EdgeInsets.all((5)),
                mainAxisSpacing: 5,crossAxisSpacing: 5,
                children: List.generate(list.length,
                        (index) => Container(
                          decoration: BoxDecoration(
                            border: Border.all(color:Colors.blue )
                          ),
                          child: Image.network(list[index].thumbnailUrl!),
                        )),
              );
          };
        },
      ),
    );

  }
}
