import 'package:dartz/dartz.dart';
import 'package:spotify/data/sources/song/song_firebase_auth.dart';
import 'package:spotify/domain/repository/song/song.dart';

import '../../../service_locator.dart';



class SongRepositoryImpl extends SongsRepository{
  @override
  Future<Either> getsNewsSongs() async{
    return await sl<SongFirebaseService>().getsNewsSongs(); 
  }

}