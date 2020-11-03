import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class MineRequest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('权限'),
        ),
        body: Column(
          children: [
            RaisedButton(
              child: Text("项目中使用"),
              onPressed: () async {
                print('单个权限申请');
                var needPermission = Permission.location;
                if (!await needPermission.request().isGranted) {
                  // Either the permission was already granted before or the user just granted it.
                  return true;
                }

                if (await Permission.speech.isPermanentlyDenied) {
                  // The user opted to never again see the permission request dialog for this
                  // app. The only way to change the permission's status now is to let the
                  // user manually enable it in the system settings.
                  openAppSettings();
                }
              },
            ),
            RaisedButton(
              child: Text("单个权限申请"),
              onPressed: () async {
                print('单个权限申请');

                var permission = Permission.location;
                checkServiceStatus(context, permission);
                requestPermission(permission);

                // bool isShown = await Permission.location.shouldShowRequestRationale;
                // print('isShown $isShown');
              },
            ),
            RaisedButton(
              child: Text("多个权限申请"),
              onPressed: () async {
                print('多个权限申请');

                var isPermissionGrant =
                    await Permission.location.request().isGranted;
                print("isPermissionGrant $isPermissionGrant.");
                // You can request multiple permissions at once.
                Map<Permission, PermissionStatus> statuses = await [
                  Permission.location,
                  Permission.storage,
                ].request();

                print('Permission.location  ${statuses[Permission.location]}');
                print('Permission.storage  ${statuses[Permission.storage]}');

                // if (await Permission.location.isPermanentlyDenied) {
                //   // The user opted to never again see the permission request dialog for this
                //   // app. The only way to change the permission's status now is to let the
                //   // user manually enable it in the system settings.
                //   openAppSettings();
                // }
              },
            ),
          ],
        ));
  }

  void checkServiceStatus(BuildContext context, Permission permission) async {
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text((await permission.status).toString()),
    ));
  }

  Future<void> requestPermission(Permission permission) async {
    final status = await permission.request();
    print(status);
  }

// Future<bool> permissionIsGrant() async {
//  return await Permission.location.request().isGranted;
// }
}
