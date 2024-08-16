# Spotify 

## Working tree 
``` bash
├── common
│   ├── helpers
│   │   └── is_dark_mode.dart
│   └── widgets
│       ├── appbar
│       │   └── app_bar.dart
│       └── button
│           └── basic_app_button.dart
├── core
│   ├── configs
│   │   ├── assets
│   │   │   ├── app_images.dart
│   │   │   └── app_vectors.dart
│   │   └── theme
│   │       ├── app_colors.dart
│   │       └── app_theme.dart
│   ├── constants
│   │   └── app_urls.dart
│   └── usecase
│       └── usecase.dart
├── data
│   ├── models
│   │   ├── auth
│   │   │   ├── create_user_req.dart
│   │   │   └── signin_user_req.dart
│   │   └── song
│   │       └── song.dart
│   ├── repository
│   │   ├── auth
│   │   │   └── auth_repository_impl.dart
│   │   └── song
│   │       └── song_repository_impl.dart
│   └── sources
│       ├── auth
│       │   └── auth_firebase_service.dart
│       └── song
│           └── song_firebase_auth.dart
├── domain
│   ├── entities
│   │   ├── auth
│   │   │   └── user.dart
│   │   └── song
│   │       └── song.dart
│   ├── repository
│   │   ├── auth
│   │   │   └── auth.dart
│   │   └── song
│   │       └── song.dart
│   └── usecases
│       ├── auth
│       │   ├── signin.dart
│       │   └── signup.dart
│       └── song
│           └── get_news_songs.dart
├── firebase_options.dart
├── main.dart
├── presentation
│   ├── auth
│   │   └── pages
│   │       ├── signin.dart
│   │       ├── signup.dart
│   │       └── signup_or_signin.dart
│   ├── choose_mode
│   │   ├── bloc
│   │   │   └── theme_cubit.dart
│   │   └── pages
│   │       └── choose_mode.dart
│   ├── home
│   │   ├── bloc
│   │   │   ├── news_songs_cubit.dart
│   │   │   └── news_songs_state.dart
│   │   ├── pages
│   │   │   └── home.dart
│   │   └── widgets
│   │       └── news_songs.dart
│   ├── intro
│   │   └── pages
│   │       └── get_started.dart
│   └── splash
│       ├── bloc
│       ├── pages
│       │   └── splash.dart
│       └── widgets
└── service_locator.dart
```
