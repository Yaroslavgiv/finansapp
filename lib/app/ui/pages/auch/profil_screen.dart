import 'package:app_kesh_accaunt/app/ui/utils/colors.dart';
import 'package:flutter/material.dart';

class ProfilScreen extends StatefulWidget {
  const ProfilScreen({super.key});

  @override
  State<ProfilScreen> createState() => _ProfilScreenState();
}

class _ProfilScreenState extends State<ProfilScreen>
    with SingleTickerProviderStateMixin {
  bool _status = true;
  final FocusNode myFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: backgrountColorScaffold,
          child: ListView(children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Stack(
                    fit: StackFit.loose,
                    children: [
                      CircleAvatar(
                        radius: height * 0.08,
                        backgroundImage: const AssetImage(
                            'assets/page-1/images/mask-group.png'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 100),
                        child: CircleAvatar(
                          backgroundColor: iconColor,
                          radius: height * 0.03,
                          child: const Icon(Icons.camera_alt),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height * 0.03),
                Container(
                  padding: EdgeInsets.all(height * 0.03),
                  height: height,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: containerColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                      )),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Text(
                            'Parsonal Information',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          _status ? _getEditIcon() : Container(),
                        ],
                      ),
                      SizedBox(height: height * 0.03),
                      Text(
                        'Name',
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }

  @override
  void dispose() {
    myFocusNode.dispose();
    super.dispose();
  }

  Widget _getEditIcon() {
    return GestureDetector(
      child: const CircleAvatar(
        backgroundColor: iconColor,
        radius: 14,
        child: Icon(
          Icons.edit,
          color: Colors.white,
          size: 16,
        ),
      ),
      onTap: () {
        _status = false;
      },
    );
  }
}
