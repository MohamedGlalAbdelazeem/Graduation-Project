
import 'package:firebase_auth/firebase_auth.dart';

class FierbaseAuthService {

  FirebaseAuth _auth = FirebaseAuth.instance;
  Future<User?> signUpWithEmailAndPassword(String email , String password, String phone , String username , String conpassword) async{
    try{
      UserCredential credential = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      return credential.user ;
    }
    catch (e){
      print("Can't Found this Email");
    }
    return null;
  }
  Future<User?> signInWithEmailAndPassword(String email , String password) async{
    try{
      UserCredential credential = await _auth.signInWithEmailAndPassword(email: email, password: password);
      return credential.user ;
    }
    catch (e){
      print("Can't Found this Email");
    }
    return null;
  }
}