import 'package:flutter/material.dart';
import 'package:ntu_flutter/sqflite/provider_data.dart';
import 'package:ntu_flutter/sqflite/sqflite_data.dart';
import 'package:provider/provider.dart';

class PageUserSQLiteDetail extends StatefulWidget {
  bool? xem;
  User? user;
  PageUserSQLiteDetail({Key? key, this.xem, this.user}) : super(key: key);

  @override
  _PageUserSQLiteDetailState createState() => _PageUserSQLiteDetailState();
}

class _PageUserSQLiteDetailState extends State<PageUserSQLiteDetail> {
  bool? xem;
  User? user;
  String title = "Thông tin User";
  String buttonTitle = "Đóng";
  TextEditingController txtTen = TextEditingController();
  TextEditingController txtPhone = TextEditingController();
  TextEditingController txtEmail = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title!),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: txtTen,
              decoration: const InputDecoration(
                label: Text("Tên:"),
              ),
            ),
            const SizedBox(height: 10,),
            TextField(
              controller: txtPhone,
                decoration: const InputDecoration(
                  label: Text("phone"),
                ),
              keyboardType: TextInputType.phone,
            ),
            const SizedBox(height: 10,),
            TextField(
              controller: txtEmail,
              decoration: const InputDecoration(
                label: Text("Email:"),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(onPressed: () =>  _capNhat(context),
                    child: Text(buttonTitle!),
                ),
                const SizedBox(width: 10,),
                xem == true? const SizedBox(width: 1,):
                    ElevatedButton(onPressed: () => Navigator.of(context)
                        , child: const Text("Đóng"),
                    )
              ],
            )
          ],
        ),
      ),
    );
  }
  @override
  void initState() {
    super.initState();
    xem = widget.xem;
    user = widget.user;

    if (user != null) {
      if (xem != true) Padding;
      {
        buttonTitle = "Cập nhật";
        title = "Chỉnh sửa thông tin";
      }
      txtTen.text = user!.name!;
      txtPhone.text = user!.phone!;
      txtEmail.text = user!.email!;
    } else {
      buttonTitle = "Thêm";
      title = "thêm User";
    }
  }

    @override
    void dispose(){
      super.dispose();
      txtTen.dispose();
      txtEmail.dispose();
      txtPhone.dispose();
    }
    _capNhat(BuildContext context) async{
      if(xem ==true){
        Navigator.of(context).pop();
      }else{
        DatabaseProvider provider = context.read<DatabaseProvider>();
        User nUser = User(
            name: txtTen.text,
            phone: txtPhone.text,
            email: txtEmail.text
        );
        if(user == null) {
          int id = -1;
          id = await provider.insertUser(nUser);
          if (id > 0) {
            showSnackBar(context, "Đã thêm ${nUser.name}", 3);
          } else {
            showSnackBar(context, "thêm ${nUser.name} không thành công ", 3);
          }
        } else{
            int count =0;
            count = await provider.updateUser(nUser, user!.id!);
            if(count>0){
              showSnackBar(context, "Đã cập nhật ${user!.name!}",3);
            }else{
              showSnackBar(context,"Cập nhật ${user!.name!} không thành công",3);
            }
        }
      }
  }

  void showSnackBar(BuildContext context, String message, int second) {
    ScaffoldMessenger.of(context).removeCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message),duration: Duration(seconds: second),)
    );
  }
}




