import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> updateStreak(int streak) async {
    await _firestore
        .collection('streaks')
        .doc('user123')
        .set({'streak': streak});
  }

  Stream<int> getStreak() {
    return _firestore
        .collection('streaks')
        .doc('user123')
        .snapshots()
        .map((doc) {
      return doc.data()?['streak'] ?? 0;
    });
  }
}
