

import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mastak/consts/consts.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AuthController extends GetxController{
 //login metod
  Future<UserCredential?> loginMethod({email,password,context})async{
    UserCredential? userCredential;

    try{
      await auth.signInWithEmailAndPassword(email: email, password: password);
    }
    on FirebaseAuthException catch(e){
      VxToast.show(context, msg: e.toString());
    }
    return userCredential;
  }
  //signup metod

  Future<UserCredential?> signupMethod({email,password,context})async{
    UserCredential? userCredential;

    try{
      await auth.createUserWithEmailAndPassword(email: email, password: password);
    }
    on FirebaseAuthException catch(e){
      VxToast.show(context, msg: e.toString());
    }
    return userCredential;
  }

  storeUserData({name,email,password}) async{
    DocumentReference store = await firestore.collection(usersCollection).doc(currentUser!.uid);
    store.set({
      'name':name,
      'password': password,
      'email':email,
      'imageUrl': ''

    });

    // signout method
    signupMethod({context}) async{
      try{
        await auth.signOut();
      }
          catch(e){
        VxToast.show(context, msg: e.toString());
          }
    }
  }

}