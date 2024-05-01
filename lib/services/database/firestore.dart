



import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {

  //order collection
  final CollectionReference orders = 
  FirebaseFirestore.instance.collection('orders');


  // save order to db

  Future<void> saveOrderToDatabase(String receipt) async {
    await orders.add({
      'date': DateTime.now(),
      'order': receipt,
     
    }
    );
  }
}