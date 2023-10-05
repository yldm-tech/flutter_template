import 'package:bilibili/utils/state/yldm_state.dart';
import 'package:bilibili/widgets/yldm_cached_network_image.dart';
import 'package:bilibili/widgets/yldm_loading_container.dart';
import 'package:bilibili/widgets/yldm_player.dart';
import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends YldmState<MyPage> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YldmLoadingContainer(
          isLoading: isLoading,
          child: const Column(
            children: [
              Center(
                child: YldmCachedNetworkImage(
                    url: "https://static.yldm.tech/uPic/bilibili/banner3.png"),
              ),
              YldmVideoPlayer(
                  "https://upos-hz-mirrorakam.akamaized.net/upgcxcode/29/71/838077129/838077129-1-208.mp4?e=ig8euxZM2rNcNbRVhwdVhwdlhWdVhwdVhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1696525429&gen=playurlv2&os=akam&oi=1788347231&trid=d1861397567b4233b14bda929d18aafdu&mid=6721344&platform=pc&upsig=4e1c441570814d74b2904143d7ca5a15&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,mid,platform&hdnts=exp=1696525429~hmac=498df0d9d578f3201eb866c4f126e7c074846bf10078169da4cc397ce1ee733b&bvc=vod&nettype=0&orderid=0,1&buvid=70F4AF1D-E29B-CB5A-A625-33AB1395572111141infoc&build=0&f=u_0_0&agrr=0&bw=45283&logo=80000000",
                  cover:
                      "https://i.ytimg.com/vi/cYzyY-u5lFU/maxresdefault.jpg"),
            ],
          )),
    );
  }
}
