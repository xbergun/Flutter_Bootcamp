import 'package:flutter/material.dart';
import '../core/component/card/user_card.dart';
import '../core/component/opacity/image_opacity.dart';
import '../core/enum/duration_enum.dart';
import '../core/image_manager.dart';
import '../stateless/home_detail_stateless.dart';

import 'model/user.dart';

class HomeView extends StatefulWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late final ImageManager imageManager;
  bool _isLoading = true;
  late final User user;

  // program ilk çalıştığında bunun içine girer.sayfa yüklendikten sonra bişeyler tanımlayabiliriz ve istek atabiliriz
  @override
  void initState() {
    super.initState();
    waitForLoading();
    imageManager = ImageManager();
    user = User.fakeItem();
  }

  //widget öldüğü zaman tetiklenir
  @override
  void dispose() {
    super.dispose();
  }

  Future<void> waitForLoading() async {
    await Future.delayed(DurationEnums.NORMAL.time);
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          _isLoading ? CircularProgressIndicator() : FlutterLogo(),
          ImageOpacity(url: imageManager.randomImage),
          UserCard(
            user: user,
            onPressed: () {
              _navigateDetail();
            },
          ),
        ],
      ),
    );
  }

  void _navigateDetail() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => HomeDetail(model: user),
      ),
    );
  }
}
