import 'package:cloud_firestore/cloud_firestore.dart';
import '../../domain/core/errors.dart';

import '../../domain/auth/i_auth_facade.dart';
import '../../injection.dart';

extension FirebaseFirestoreX on FirebaseFirestore {
  Future<DocumentReference> userDocument() async {
    final userOption = await sl<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(
      () => throw UnauthenticatedError(),
    );
    return FirebaseFirestore.instance.collection('patients').doc(
          user.id.getOrCrash(),
        );
  }
}

extension DocumentReferenceX on DocumentReference {
  //this is basically so that we would not call .collection('notes') all the time
  //and just replace it with more concise .noteCollection
  CollectionReference get pillsCollection => collection('pills');
}