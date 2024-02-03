import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_joke_app_mmi/domain/entities/joke_list/joke_list.dart';
import '../../domain/entities/joke/joke.dart';

class JokeFirebaseDataSource {
  // Future<Either<List, List<Joke>>>

  removeJokeFromFirebase(int id) async {
    try {
      final List<Joke> listOfJokes = await getJokesFromFirebase();

      for (var element in listOfJokes) {
        if (element.id == id) {
          listOfJokes.remove(element);
          break;
        }
      }
      final jsonToAdd = JokeList(jokeList: listOfJokes).toJson();
      final db = FirebaseFirestore.instance;
      final doc = FirebaseAuth.instance.currentUser!.email;
      await db.collection('Jokes').doc(doc).set(jsonToAdd);
      // ignore: empty_catches
    } catch (e) {}
  }

  Future<List<Joke>> getJokesFromFirebase() async {
    final db = FirebaseFirestore.instance;
    final doc = FirebaseAuth.instance.currentUser!.email;
    final docRef = db.collection("Jokes").doc(doc);
    var value = await docRef.get();
    // print('pobierane z serwera');
    // print(value.data());

    List<Joke> jokeList = [];

    try {
      for (var joke in value['jokeList']) {
        jokeList.add(Joke.fromJson(joke));
      }
      // ignore: empty_catches
    } catch (e) {}
    return jokeList;
  }

  Future<void> addJokesToFirebase(Joke jokeToAdd) async {
    final db = FirebaseFirestore.instance;

    final List<Joke> listOfJokes = await getJokesFromFirebase();
    listOfJokes.add(jokeToAdd);

    listOfJokes.toSet().toList();

    final jokeListToAdd = JokeList(jokeList: listOfJokes);

    final jsonToAdd = jokeListToAdd.toJson();
    final doc = FirebaseAuth.instance.currentUser!.email;
    try {
      await db.collection('Jokes').doc(doc).set(jsonToAdd);
      // ignore: empty_catches
    } catch (e) {}
  }
}
