import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify/core/configs/theme/app_colors.dart';
import 'package:spotify/domain/entities/song/song.dart';
import 'package:spotify/presentation/home/bloc/news_songs_cubit.dart';
import 'package:spotify/presentation/home/bloc/news_songs_state.dart';

class NewsSongs extends StatelessWidget {
  const NewsSongs({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => NewsSongsCubit(),
      child: SizedBox(
        height: 200,
        child: BlocBuilder<NewsSongsCubit,NewsSongsState>(
          builder: (context, state){
            if(state is NewsSongsLoading){
              return const CircularProgressIndicator(color: AppColors.primary,); 
            }
            if(state is NewsSongsLoaded){
              return _songs(
                state.songs,
              ); 
            }
            return Container(); 
          }
        ),
        
      ),
    );
  }
  Widget _songs(List<SongEntity> songs){
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index){
        return const Column();
      },
      separatorBuilder: (context, index) => const SizedBox(width: 14,),
      itemCount: songs.length, 
    );
  }
}