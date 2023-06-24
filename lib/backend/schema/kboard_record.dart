import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class KboardRecord extends FirestoreRecord {
  KboardRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Kboard" field.
  String? _kboard;
  String get kboard => _kboard ?? '';
  bool hasKboard() => _kboard != null;

  void _initializeFields() {
    _kboard = snapshotData['Kboard'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Kboard');

  static Stream<KboardRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => KboardRecord.fromSnapshot(s));

  static Future<KboardRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => KboardRecord.fromSnapshot(s));

  static KboardRecord fromSnapshot(DocumentSnapshot snapshot) => KboardRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static KboardRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      KboardRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'KboardRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is KboardRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createKboardRecordData({
  String? kboard,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Kboard': kboard,
    }.withoutNulls,
  );

  return firestoreData;
}
