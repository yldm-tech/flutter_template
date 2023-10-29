import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:myetc/utils/yldm/toast_util.dart';
import 'package:myetc/widgets/yldm_container.dart';

class ExampleAvatarPage extends StatefulWidget {
  const ExampleAvatarPage({super.key});

  @override
  State<ExampleAvatarPage> createState() => _ExampleAvatarPageState();
}

class _ExampleAvatarPageState extends State<ExampleAvatarPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        container('基本头像'),
        basicAvatar(),
        container('带角标头像'),
        dotAvatar(),
        container('带数字头像'),
        numberAvatar(),
        container("重叠头像"),
        overlapAvatar(),
      ],
    );
  }

  ///
  // https://static.yldm.tech/uPic/avatar/10020.jpg
  // https://static.yldm.tech/uPic/avatar/10008.jpg
  // https://static.yldm.tech/uPic/avatar/10009.jpg
  // https://static.yldm.tech/uPic/avatar/10021.jpg
  // https://static.yldm.tech/uPic/avatar/10023.jpg
  // https://static.yldm.tech/uPic/avatar/10022.jpg
  // https://static.yldm.tech/uPic/avatar/10026.jpg
  // https://static.yldm.tech/uPic/avatar/10027.jpg
  // https://static.yldm.tech/uPic/avatar/10019.jpg
  // https://static.yldm.tech/uPic/avatar/10031.jpg
  // https://static.yldm.tech/uPic/avatar/10025.jpg
  // https://static.yldm.tech/uPic/avatar/10024.jpg
  // https://static.yldm.tech/uPic/avatar/10030.jpg
  // https://static.yldm.tech/uPic/avatar/10018.jpg
  // https://static.yldm.tech/uPic/avatar/10015.jpg
  // https://static.yldm.tech/uPic/avatar/10028.jpg
  // https://static.yldm.tech/uPic/avatar/10014.jpg
  // https://static.yldm.tech/uPic/avatar/10002.jpg
  // https://static.yldm.tech/uPic/avatar/10016.jpg
  // https://static.yldm.tech/uPic/avatar/10017.jpg
  // https://static.yldm.tech/uPic/avatar/10003.jpg
  // https://static.yldm.tech/uPic/avatar/10007.jpg
  // https://static.yldm.tech/uPic/avatar/10013.jpg
  // https://static.yldm.tech/uPic/avatar/10012.jpg
  // https://static.yldm.tech/uPic/avatar/10006.jpg
  // https://static.yldm.tech/uPic/avatar/10010.jpg
  // https://static.yldm.tech/uPic/avatar/10004.jpg
  // https://static.yldm.tech/uPic/avatar/10005.jpg
  // https://static.yldm.tech/uPic/avatar/10011.jpg
  basicAvatar() {
    return const Wrap(
      children: [
        YldmContainer(
          child: GFAvatar(
            backgroundImage:
                NetworkImage('https://static.yldm.tech/uPic/avatar/10020.jpg'),
            shape: GFAvatarShape.circle,
          ),
        ),
        YldmContainer(
          child: GFAvatar(
            backgroundImage:
                NetworkImage('https://static.yldm.tech/uPic/avatar/10021.jpg'),
            shape: GFAvatarShape.circle,
          ),
        ),
        YldmContainer(
          child: GFAvatar(
            backgroundImage:
                NetworkImage('https://static.yldm.tech/uPic/avatar/10022.jpg'),
            shape: GFAvatarShape.circle,
          ),
        ),
        YldmContainer(
          child: GFAvatar(
            backgroundImage:
                NetworkImage('https://static.yldm.tech/uPic/avatar/10023.jpg'),
            shape: GFAvatarShape.circle,
          ),
        ),
        YldmContainer(
          child: GFAvatar(
            backgroundImage:
                NetworkImage('https://static.yldm.tech/uPic/avatar/10024.jpg'),
            shape: GFAvatarShape.circle,
          ),
        ),
        YldmContainer(
          child: GFAvatar(
            backgroundImage:
                NetworkImage('https://static.yldm.tech/uPic/avatar/10025.jpg'),
            shape: GFAvatarShape.circle,
          ),
        ),
        YldmContainer(
          child: GFAvatar(
            backgroundImage:
                NetworkImage('https://static.yldm.tech/uPic/avatar/10020.jpg'),
            shape: GFAvatarShape.standard,
          ),
        ),
        YldmContainer(
          child: GFAvatar(
            backgroundImage:
                NetworkImage('https://static.yldm.tech/uPic/avatar/10021.jpg'),
            shape: GFAvatarShape.standard,
          ),
        ),
        YldmContainer(
          child: GFAvatar(
            backgroundImage:
                NetworkImage('https://static.yldm.tech/uPic/avatar/10022.jpg'),
            shape: GFAvatarShape.standard,
          ),
        ),
        YldmContainer(
          child: GFAvatar(
            backgroundImage:
                NetworkImage('https://static.yldm.tech/uPic/avatar/10023.jpg'),
            shape: GFAvatarShape.standard,
          ),
        ),
        YldmContainer(
          child: GFAvatar(
            backgroundImage:
                NetworkImage('https://static.yldm.tech/uPic/avatar/10024.jpg'),
            shape: GFAvatarShape.standard,
          ),
        ),
        YldmContainer(
          child: GFAvatar(
            backgroundImage:
                NetworkImage('https://static.yldm.tech/uPic/avatar/10025.jpg'),
            shape: GFAvatarShape.standard,
          ),
        ),
        YldmContainer(
          child: GFAvatar(
            backgroundImage:
                NetworkImage('https://static.yldm.tech/uPic/avatar/10020.jpg'),
            shape: GFAvatarShape.square,
          ),
        ),
        YldmContainer(
          child: GFAvatar(
            backgroundImage:
                NetworkImage('https://static.yldm.tech/uPic/avatar/10021.jpg'),
            shape: GFAvatarShape.square,
          ),
        ),
        YldmContainer(
          child: GFAvatar(
            backgroundImage:
                NetworkImage('https://static.yldm.tech/uPic/avatar/10022.jpg'),
            shape: GFAvatarShape.square,
          ),
        ),
        YldmContainer(
          child: GFAvatar(
            backgroundImage:
                NetworkImage('https://static.yldm.tech/uPic/avatar/10023.jpg'),
            shape: GFAvatarShape.square,
          ),
        ),
        YldmContainer(
          child: GFAvatar(
            backgroundImage:
                NetworkImage('https://static.yldm.tech/uPic/avatar/10024.jpg'),
            shape: GFAvatarShape.square,
          ),
        ),
        YldmContainer(
          child: GFAvatar(
            backgroundImage:
                NetworkImage('https://static.yldm.tech/uPic/avatar/10025.jpg'),
            shape: GFAvatarShape.square,
          ),
        ),
      ],
    );
  }

  dotAvatar() {
    return Wrap(
      children: [
        YldmContainer(
            child: GFIconBadge(
          counterChild: dot(Colors.red),
          position: GFBadgePosition.topEnd(top: 5, end: 5),
          child: const GFAvatar(
            backgroundImage:
                NetworkImage('https://static.yldm.tech/uPic/avatar/10020.jpg'),
            shape: GFAvatarShape.circle,
          ),
        )),
        YldmContainer(
            child: GFIconBadge(
          counterChild: dot(Colors.orange),
          position: GFBadgePosition.bottomEnd(bottom: 3, end: 3),
          child: const GFAvatar(
            backgroundImage:
                NetworkImage('https://static.yldm.tech/uPic/avatar/10021.jpg'),
            shape: GFAvatarShape.circle,
          ),
        )),
        YldmContainer(
            child: GFIconBadge(
          counterChild: dot(Colors.green),
          position: GFBadgePosition.topStart(top: 5, start: 5),
          child: const GFAvatar(
            backgroundImage:
                NetworkImage('https://static.yldm.tech/uPic/avatar/10022.jpg'),
            shape: GFAvatarShape.circle,
          ),
        )),
        YldmContainer(
            child: GFIconBadge(
          counterChild: dot(Colors.red),
          position: GFBadgePosition.bottomStart(bottom: 5, start: 5),
          child: const GFAvatar(
            backgroundImage:
                NetworkImage('https://static.yldm.tech/uPic/avatar/10023.jpg'),
            shape: GFAvatarShape.circle,
          ),
        )),
        YldmContainer(
            child: GFIconBadge(
          counterChild: dot(Colors.red),
          position: GFBadgePosition.topEnd(top: -5, end: 20),
          child: const GFAvatar(
            backgroundImage:
                NetworkImage('https://static.yldm.tech/uPic/avatar/10024.jpg'),
            shape: GFAvatarShape.circle,
          ),
        )),
        YldmContainer(
            child: GFIconBadge(
          counterChild: dot(Colors.red),
          position: GFBadgePosition.topEnd(top: -3, end: -3),
          child: const GFAvatar(
            backgroundImage:
                NetworkImage('https://static.yldm.tech/uPic/avatar/10020.jpg'),
            shape: GFAvatarShape.standard,
          ),
        )),
        YldmContainer(
            child: GFIconBadge(
          counterChild: dot(Colors.orange),
          position: GFBadgePosition.bottomEnd(bottom: 1, end: 1),
          child: const GFAvatar(
            backgroundImage:
                NetworkImage('https://static.yldm.tech/uPic/avatar/10021.jpg'),
            shape: GFAvatarShape.standard,
          ),
        )),
        YldmContainer(
            child: GFIconBadge(
          counterChild: dot(Colors.green),
          position: GFBadgePosition.topStart(top: 1, start: 1),
          child: const GFAvatar(
            backgroundImage:
                NetworkImage('https://static.yldm.tech/uPic/avatar/10022.jpg'),
            shape: GFAvatarShape.standard,
          ),
        )),
        YldmContainer(
            child: GFIconBadge(
          counterChild: dot(Colors.red),
          position: GFBadgePosition.bottomStart(bottom: 1, start: 1),
          child: const GFAvatar(
            backgroundImage:
                NetworkImage('https://static.yldm.tech/uPic/avatar/10023.jpg'),
            shape: GFAvatarShape.standard,
          ),
        )),
        YldmContainer(
            child: GFIconBadge(
          counterChild: dot(Colors.red),
          position: GFBadgePosition.topEnd(top: -5, end: 20),
          child: const GFAvatar(
            backgroundImage:
                NetworkImage('https://static.yldm.tech/uPic/avatar/10024.jpg'),
            shape: GFAvatarShape.standard,
          ),
        )),
      ],
    );
  }

  numberAvatar() {
    return Wrap(
      children: [
        YldmContainer(
            child: GFIconBadge(
          counterChild: number(Colors.red),
          position: GFBadgePosition.topEnd(top: 0, end: 0),
          child: const GFAvatar(
            backgroundImage:
                NetworkImage('https://static.yldm.tech/uPic/avatar/10020.jpg'),
            shape: GFAvatarShape.circle,
          ),
        )),
        YldmContainer(
            child: GFIconBadge(
          counterChild: number(Colors.orange),
          position: GFBadgePosition.bottomEnd(bottom: 0, end: 0),
          child: const GFAvatar(
            backgroundImage:
                NetworkImage('https://static.yldm.tech/uPic/avatar/10021.jpg'),
            shape: GFAvatarShape.circle,
          ),
        )),
        YldmContainer(
            child: GFIconBadge(
          counterChild: number(Colors.green),
          position: GFBadgePosition.topStart(top: 0, start: 0),
          child: const GFAvatar(
            backgroundImage:
                NetworkImage('https://static.yldm.tech/uPic/avatar/10022.jpg'),
            shape: GFAvatarShape.circle,
          ),
        )),
        YldmContainer(
            child: GFIconBadge(
          counterChild: number(Colors.red),
          position: GFBadgePosition.bottomStart(bottom: 0, start: 0),
          child: const GFAvatar(
            backgroundImage:
                NetworkImage('https://static.yldm.tech/uPic/avatar/10023.jpg'),
            shape: GFAvatarShape.circle,
          ),
        )),
        YldmContainer(
            child: GFIconBadge(
          counterChild: number(Colors.cyan),
          position: GFBadgePosition.topEnd(top: -5, end: 20),
          child: const GFAvatar(
            backgroundImage:
                NetworkImage('https://static.yldm.tech/uPic/avatar/10024.jpg'),
            shape: GFAvatarShape.circle,
          ),
        )),
        YldmContainer(
            child: GFIconBadge(
          counterChild: number(Colors.red),
          position: GFBadgePosition.topEnd(top: 0, end: 0),
          child: const GFAvatar(
            backgroundImage:
                NetworkImage('https://static.yldm.tech/uPic/avatar/10020.jpg'),
            shape: GFAvatarShape.standard,
          ),
        )),
        YldmContainer(
            child: GFIconBadge(
          counterChild: number(Colors.orange),
          position: GFBadgePosition.bottomEnd(bottom: 0, end: 0),
          child: const GFAvatar(
            backgroundImage:
                NetworkImage('https://static.yldm.tech/uPic/avatar/10021.jpg'),
            shape: GFAvatarShape.standard,
          ),
        )),
        YldmContainer(
            child: GFIconBadge(
          counterChild: number(Colors.green),
          position: GFBadgePosition.topStart(top: 0, start: 0),
          child: const GFAvatar(
            backgroundImage:
                NetworkImage('https://static.yldm.tech/uPic/avatar/10022.jpg'),
            shape: GFAvatarShape.standard,
          ),
        )),
        YldmContainer(
            child: GFIconBadge(
          counterChild: number(Colors.red),
          position: GFBadgePosition.bottomStart(bottom: 0, start: 0),
          child: const GFAvatar(
            backgroundImage:
                NetworkImage('https://static.yldm.tech/uPic/avatar/10023.jpg'),
            shape: GFAvatarShape.standard,
          ),
        )),
        YldmContainer(
            child: GFIconBadge(
          counterChild: number(Colors.cyan),
          position: GFBadgePosition.topEnd(top: -5, end: 20),
          child: const GFAvatar(
            backgroundImage:
                NetworkImage('https://static.yldm.tech/uPic/avatar/10024.jpg'),
            shape: GFAvatarShape.standard,
          ),
        )),
      ],
    );
  }

  overlapAvatar() {
    return SizedBox(
      height: 100,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            left: 0,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: Colors.white, width: 1),
              ),
              child: const GFAvatar(
                backgroundImage: NetworkImage(
                    'https://static.yldm.tech/uPic/avatar/10020.jpg'),
                shape: GFAvatarShape.circle,
              ),
            ),
          ),
          Positioned(
            left: 30,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: Colors.white, width: 1),
              ),
              child: const GFAvatar(
                backgroundImage: NetworkImage(
                    'https://static.yldm.tech/uPic/avatar/10021.jpg'),
                shape: GFAvatarShape.circle,
              ),
            ),
          ),
          Positioned(
            left: 60,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: Colors.white, width: 1),
              ),
              child: const GFAvatar(
                backgroundImage: NetworkImage(
                    'https://static.yldm.tech/uPic/avatar/10022.jpg'),
                shape: GFAvatarShape.circle,
              ),
            ),
          ),
          Positioned(
            left: 90,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: Colors.white, width: 1),
              ),
              child: const GFAvatar(
                backgroundImage: NetworkImage(
                    'https://static.yldm.tech/uPic/avatar/10023.jpg'),
                shape: GFAvatarShape.circle,
              ),
            ),
          ),
          Positioned(
            left: 120,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: Colors.white, width: 1),
              ),
              child: const GFAvatar(
                backgroundImage: NetworkImage(
                    'https://static.yldm.tech/uPic/avatar/10024.jpg'),
                shape: GFAvatarShape.circle,
              ),
            ),
          ),
          Positioned(
            left: 150,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: Colors.white, width: 1),
              ),
              child: const GFAvatar(
                backgroundImage: NetworkImage(
                    'https://static.yldm.tech/uPic/avatar/10025.jpg'),
                shape: GFAvatarShape.circle,
              ),
            ),
          ),
          Positioned(
            left: 180,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: Colors.white, width: 1),
              ),
              child: const GFAvatar(
                backgroundImage: NetworkImage(
                    'https://static.yldm.tech/uPic/avatar/10020.jpg'),
                shape: GFAvatarShape.circle,
              ),
            ),
          ),
          Positioned(
            left: 210,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: Colors.white, width: 1),
              ),
              child: const GFAvatar(
                backgroundImage: NetworkImage(
                    'https://static.yldm.tech/uPic/avatar/10021.jpg'),
                shape: GFAvatarShape.circle,
              ),
            ),
          ),
          Positioned(
            left: 240,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: Colors.white, width: 1),
              ),
              child: const GFAvatar(
                backgroundImage: NetworkImage(
                    'https://static.yldm.tech/uPic/avatar/10022.jpg'),
                shape: GFAvatarShape.circle,
              ),
            ),
          ),
          Positioned(
            left: 300,
            child: Container(
              alignment: Alignment.center,
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.blue[50]!,
                border: Border.all(color: Colors.blue[100]!, width: 1),
              ),
              child: Text("+",
                  style: TextStyle(fontSize: 25, color: Colors.blue[100]!)),
            ),
          ),
        ],
      ),
    );
  }

  dot(Color color, {double size = 10}) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }

  number(Color color, {int size = 10}) {
    return GFBadge(
        color: color,
        textColor: Colors.white,
        size: GFSize.SMALL,
        child: Text(
          '$size',
          style: const TextStyle(fontSize: 10),
        ));
  }

  toast(content) {
    ToastUtil.centerToast(content, context);
  }

  container(String title) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }
}
