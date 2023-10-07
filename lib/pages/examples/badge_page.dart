import 'package:bilibili/utils/yldm/toast_util.dart';
import 'package:bilibili/widgets/yldm_container.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class ExampleBadgePage extends StatefulWidget {
  const ExampleBadgePage({super.key});

  @override
  State<ExampleBadgePage> createState() => _ExampleBadgePageState();
}

class _ExampleBadgePageState extends State<ExampleBadgePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        container('徽标数字按钮'),
        badgeButton(),
        container('方形徽标按钮'),
        squareBadge(),
        container('圆点徽标按钮'),
        dotBadge(),
        container('图标徽标按钮'),
        iconDotBadge(),
      ],
    );
  }

  badgeButton() {
    return Wrap(
      children: [
        YldmContainer(
          child: GFButtonBadge(
            onPressed: () => toast("primary 12"),
            text: "primary",
            icon: const GFBadge(
              color: Colors.white,
              child: Text(
                "12",
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ),
            shape: GFButtonShape.pills,
          ),
        ),
        YldmContainer(
          child: GFButtonBadge(
            color: GFColors.SECONDARY,
            onPressed: () => toast("secondary 12"),
            text: "secondary",
            icon: const GFBadge(
              color: Colors.white,
              child: Text(
                "12",
                style: TextStyle(
                  color: Colors.purple,
                ),
              ),
            ),
            shape: GFButtonShape.pills,
          ),
        ),
        YldmContainer(
          child: GFButtonBadge(
            color: GFColors.INFO,
            onPressed: () => toast("info 12"),
            text: "info",
            icon: const GFBadge(
              color: Colors.white,
              child: Text(
                "12",
                style: TextStyle(
                  color: Colors.cyan,
                ),
              ),
            ),
            shape: GFButtonShape.pills,
          ),
        ),
        YldmContainer(
          child: GFButtonBadge(
            color: GFColors.WARNING,
            onPressed: () => toast("warning 12"),
            text: "warning",
            icon: const GFBadge(
              color: Colors.white,
              child: Text(
                "12",
                style: TextStyle(
                  color: Colors.yellow,
                ),
              ),
            ),
            shape: GFButtonShape.pills,
          ),
        ),
        YldmContainer(
          child: GFButtonBadge(
            onPressed: () => toast("success 12"),
            color: GFColors.SUCCESS,
            text: "primary",
            icon: const GFBadge(
              color: Colors.white,
              child: Text(
                "12",
                style: TextStyle(
                  color: Colors.green,
                ),
              ),
            ),
            shape: GFButtonShape.pills,
          ),
        ),
        YldmContainer(
          child: GFButtonBadge(
            onPressed: () => toast("dark 12"),
            color: GFColors.DARK,
            text: "dark",
            icon: const GFBadge(
              color: Colors.white,
              child: Text(
                "12",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            shape: GFButtonShape.pills,
          ),
        ),
        YldmContainer(
          child: GFButtonBadge(
            onPressed: () => toast("primary 12"),
            text: "primary",
            textColor: Colors.blue,
            color: GFColors.TRANSPARENT,
            icon: const GFBadge(
              color: Colors.blue,
              child: Text(
                "12",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            shape: GFButtonShape.pills,
          ),
        ),
        YldmContainer(
          child: GFButtonBadge(
            onPressed: () => toast("success 12"),
            text: "success",
            textColor: Colors.green,
            color: GFColors.TRANSPARENT,
            icon: const GFBadge(
              color: Colors.green,
              child: Text(
                "12",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            shape: GFButtonShape.pills,
          ),
        ),
        YldmContainer(
          child: GFButtonBadge(
            onPressed: () => toast("secondary 12"),
            text: "secondary",
            textColor: Colors.deepPurple,
            color: GFColors.TRANSPARENT,
            icon: const GFBadge(
              color: Colors.deepPurple,
              child: Text(
                "12",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            shape: GFButtonShape.pills,
          ),
        ),
      ],
    );
  }

  squareBadge() {
    return Wrap(
      children: [
        YldmContainer(
          child: GFIconBadge(
            counterChild: const GFBadge(
              color: Colors.white,
              child: Text("12", style: TextStyle(color: Colors.blue)),
            ),
            child: GFIconButton(
              color: GFColors.PRIMARY,
              onPressed: () => toast("icon button"),
              icon: const Icon(Icons.ac_unit),
            ),
          ),
        ),
        YldmContainer(
          child: GFIconBadge(
            counterChild: const GFBadge(
              color: Colors.white,
              child: Text("12", style: TextStyle(color: Colors.green)),
            ),
            child: GFIconButton(
              color: GFColors.SUCCESS,
              onPressed: () => toast("icon button"),
              icon: const Icon(Icons.ac_unit),
            ),
          ),
        ),
        YldmContainer(
          child: GFIconBadge(
            counterChild: const GFBadge(
              color: Colors.white,
              child: Text("12", style: TextStyle(color: Colors.redAccent)),
            ),
            child: GFIconButton(
              color: GFColors.DANGER,
              onPressed: () => toast("icon button"),
              icon: const Icon(Icons.ac_unit),
            ),
          ),
        ),
        YldmContainer(
          child: GFIconBadge(
            counterChild: const GFBadge(
              color: Colors.white,
              child: Text("12", style: TextStyle(color: Colors.cyan)),
            ),
            child: GFIconButton(
              color: Colors.cyan,
              onPressed: () => toast("icon button"),
              icon: const Icon(Icons.ac_unit),
            ),
          ),
        ),
        YldmContainer(
          child: GFIconBadge(
            counterChild: const GFBadge(
              color: Colors.white,
              child: Text("12", style: TextStyle(color: Colors.purple)),
            ),
            child: GFIconButton(
              color: GFColors.SECONDARY,
              onPressed: () => toast("icon button"),
              icon: const Icon(Icons.ac_unit),
            ),
          ),
        )
      ],
    );
  }

  dotBadge() {
    return Wrap(
      children: [
        YldmContainer(
          child: GFIconBadge(
              position: GFBadgePosition.topEnd(top: 5, end: 0),
              counterChild: dot(Colors.green),
              child: GFButton(
                  child: const Text("success"),
                  onPressed: () => toast("success button"))),
        ),
        YldmContainer(
          child: GFIconBadge(
              position: GFBadgePosition.topEnd(top: 5, end: 0),
              counterChild: dot(Colors.red),
              child: GFButton(
                  child: const Text("danger"),
                  onPressed: () => toast("danger button"))),
        ),
        YldmContainer(
          child: GFIconBadge(
              position: GFBadgePosition.topEnd(top: 5, end: 0),
              counterChild: dot(Colors.orange),
              child: GFButton(
                  child: const Text("warning"),
                  onPressed: () => toast("warning button"))),
        ),
        YldmContainer(
          child: GFIconBadge(
              position: GFBadgePosition.topEnd(top: 10, end: 10),
              counterChild: dot(Colors.green),
              child: GFButton(
                  color: GFColors.TRANSPARENT,
                  child: const Text("success",
                      style: TextStyle(color: Colors.blue)),
                  onPressed: () => toast("success"))),
        ),
        YldmContainer(
          child: GFIconBadge(
              position: GFBadgePosition.topEnd(top: 10, end: 10),
              counterChild: dot(Colors.red),
              child: GFButton(
                  color: GFColors.TRANSPARENT,
                  child: const Text("danger",
                      style: TextStyle(color: Colors.blue)),
                  onPressed: () => toast("danger"))),
        ),
        YldmContainer(
          child: GFIconBadge(
              position: GFBadgePosition.topEnd(top: 10, end: 10),
              counterChild: dot(Colors.orange),
              child: GFButton(
                  color: GFColors.TRANSPARENT,
                  child: const Text("warning",
                      style: TextStyle(color: Colors.blue)),
                  onPressed: () => toast("warning"))),
        ),
      ],
    );
  }

  iconDotBadge() {
    return Wrap(
      children: [
        YldmContainer(
          child: GFIconBadge(
            position: GFBadgePosition.topEnd(top: 6, end: 6),
            counterChild: dot(Colors.green),
            child: GFIconButton(
              color: GFColors.TRANSPARENT,
              onPressed: () => toast("icon button"),
              icon: const Icon(Icons.ac_unit),
            ),
          ),
        ),
        YldmContainer(
          child: GFIconBadge(
            position: GFBadgePosition.topEnd(top: 6, end: 6),
            counterChild: dot(Colors.red),
            child: GFIconButton(
              color: GFColors.TRANSPARENT,
              onPressed: () => toast("icon button"),
              icon: const Icon(Icons.adb),
            ),
          ),
        ),
        YldmContainer(
          child: GFIconBadge(
            position: GFBadgePosition.topEnd(top: 6, end: 6),
            counterChild: dot(Colors.orange),
            child: GFIconButton(
              color: GFColors.TRANSPARENT,
              onPressed: () => toast("icon button"),
              icon: const Icon(Icons.safety_check_rounded),
            ),
          ),
        ),
        YldmContainer(
          child: GFIconBadge(
            position: GFBadgePosition.topEnd(top: 6, end: 6),
            counterChild: dot(Colors.grey),
            child: GFIconButton(
              color: GFColors.TRANSPARENT,
              onPressed: () => toast("icon button"),
              icon: const Icon(Icons.deblur_rounded),
            ),
          ),
        ),
        YldmContainer(
          child: GFIconBadge(
            position: GFBadgePosition.topEnd(top: 6, end: 6),
            counterChild: dot(Colors.deepPurple),
            child: GFIconButton(
              color: GFColors.TRANSPARENT,
              onPressed: () => toast("icon button"),
              icon: const Icon(Icons.back_hand),
            ),
          ),
        ),
        YldmContainer(
          child: GFIconBadge(
            position: GFBadgePosition.topEnd(top: 0, end: 0),
            counterChild: const GFBadge(
              color: Colors.green,
              child: Text(
                "12",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            child: GFIconButton(
              color: GFColors.TRANSPARENT,
              onPressed: () => toast("icon button"),
              icon: const Icon(Icons.assistant_direction),
            ),
          ),
        ),
        YldmContainer(
          child: GFIconBadge(
            position: GFBadgePosition.topEnd(top: 0, end: 0),
            counterChild: const GFBadge(
              color: Colors.red,
              child: Text(
                "12",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            child: GFIconButton(
              color: GFColors.TRANSPARENT,
              onPressed: () => toast("icon button"),
              icon: const Icon(Icons.two_wheeler),
            ),
          ),
        ),
        YldmContainer(
          child: GFIconBadge(
            position: GFBadgePosition.topEnd(top: 0, end: 0),
            counterChild: const GFBadge(
              color: Colors.orange,
              child: Text(
                "12",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            child: GFIconButton(
              color: GFColors.TRANSPARENT,
              onPressed: () => toast("icon button"),
              icon: const Icon(
                Icons.facebook,
                color: Colors.blue,
              ),
            ),
          ),
        ),
        YldmContainer(
          child: GFIconBadge(
            position: GFBadgePosition.topEnd(top: 0, end: 0),
            counterChild: const GFBadge(
              color: Colors.grey,
              child: Text(
                "12",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            child: GFIconButton(
              color: GFColors.TRANSPARENT,
              onPressed: () => toast("icon button"),
              icon: const Icon(Icons.ad_units_sharp),
            ),
          ),
        ),
        YldmContainer(
          child: GFIconBadge(
            position: GFBadgePosition.topEnd(top: 0, end: 0),
            counterChild: const GFBadge(
              color: Colors.deepPurple,
              child: Text(
                "12",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            child: GFIconButton(
              color: GFColors.TRANSPARENT,
              onPressed: () => toast("icon button"),
              icon: const Icon(Icons.access_alarms_rounded),
            ),
          ),
        ),
      ],
    );
  }

  dot(Color color) {
    return Container(
      width: 8,
      height: 8,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
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
