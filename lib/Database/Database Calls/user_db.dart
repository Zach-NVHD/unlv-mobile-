import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:unlv_ceao_mobile_sign_in/Database/Scemas/user.dart';

class UserDb {
  void addUser(User user) {
    FirebaseFirestore.instance.collection('Users').doc().set(user.toJson());
  }

  void updateUser(User user) {
    FirebaseFirestore.instance
        .collection('Users')
        .doc(user.docId)
        .update(user.toJson());
  }

  void deleteUser(User user) {
    FirebaseFirestore.instance.collection('Users').doc(user.docId).delete();
  }

  Future<List<User>> getUsers() async {
    List<User> users = [];
    await FirebaseFirestore.instance
        .collection('Users')
        .get()
        .then((documents) {
      for (var doc in documents.docs) {
        Map<String, dynamic> data = doc.data();
        User user = User()
          ..fromJson(data);
        user.docId = doc.id;
        users.add(user);
      }
    });
    return users;
  }
}
