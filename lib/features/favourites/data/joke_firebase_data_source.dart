import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_joke_app_mmi/features/favourites/domain/entities/joke_list/favourites_list_entity.dart';
import '../../joke/domain/entities/joke/joke_entity.dart';

class JokeFirebaseDataSource {
  removeJokeFromFirebase(int id) async {
    try {
      final FavouritesListEntity favouritesListEntity = await getJokesFromFirebase();

      var listOfJokes = favouritesListEntity.jokeList.toList();

      for (var element in listOfJokes) {
        if (element.id == id) {
          listOfJokes.remove(element);
          break;
        }
      }
      final jsonToAdd = FavouritesListEntity(jokeList: listOfJokes).toJson();
      final db = FirebaseFirestore.instance;
      final doc = FirebaseAuth.instance.currentUser!.email;
      await db.collection('Jokes').doc(doc).set(jsonToAdd);
    } catch (e) {
      rethrow;
    }
  }

  Future<FavouritesListEntity> getJokesFromFirebase() async {
    final db = FirebaseFirestore.instance;
    final doc = FirebaseAuth.instance.currentUser!.email;
    final docRef = db.collection("Jokes").doc(doc);
    var value = await docRef.get();

    List<JokeEntity> jokeList = [];

    try {
      for (var joke in value['jokeList']) {
        jokeList.add(JokeEntity.fromJson(joke));
      }
    } catch (e) {
      rethrow;
    }
    return FavouritesListEntity(jokeList: jokeList);
  }

  Future<void> addJokesToFirebase(JokeEntity jokeToAdd) async {
    try {
      final db = FirebaseFirestore.instance;

      final FavouritesListEntity favouritesListEntity = await getJokesFromFirebase();
      final modifiedFavouritesListEntity = favouritesListEntity.copyWith(jokeList: [...favouritesListEntity.jokeList, jokeToAdd]);

      final jsonToAdd = modifiedFavouritesListEntity.toJson();
      final doc = FirebaseAuth.instance.currentUser!.email;

      await db.collection('Jokes').doc(doc).set(jsonToAdd);
    } catch (e) {
      rethrow;
    }
  }
}
