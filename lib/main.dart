import 'package:flutter/material.dart';
import 'package:nusantrip/views/1.intro/onboarding_screen.dart';
import 'package:nusantrip/views/1.intro/splash_screen.dart';
import 'package:nusantrip/views/2.auth/change_password_screen.dart';
import 'package:nusantrip/views/2.auth/login_screen.dart';
import 'package:nusantrip/views/2.auth/register_screen.dart';
import 'package:nusantrip/views/3.app/1_eksplor/explor_screen.dart';
import 'package:nusantrip/views/3.app/1_eksplor/trip_search_screen.dart';
import 'package:nusantrip/views/3.app/2_halamantiket/tiket_screen.dart';
import 'package:nusantrip/views/3.app/3_favorite/favorite_screen.dart';
import 'package:nusantrip/views/3.app/4_notifikasi/notiication_screen.dart';
import 'package:nusantrip/views/3.app/5_profil/edit_profile_screen.dart';
import 'package:nusantrip/views/3.app/5_profil/profile_screen.dart';
import 'package:nusantrip/views/3.app/bottomnav_widget.dart';
import 'package:nusantrip/views/3.app/nusanpay/nusanpay_list_screen.dart';
import 'package:nusantrip/views/3.app/nusanpay/nusanpay_status_screen.dart';
import 'package:nusantrip/views/3.app/widget/payment_webview.dart';
import 'package:nusantrip/views/3.app/widget/payment_status_screen.dart';
import 'package:nusantrip/views/3.app/widget/ticket_confirmation_screen.dart';
import 'package:nusantrip/views/3.app/widget/ticket_detail_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: SplashScreen.routeName,
      debugShowCheckedModeBanner: false,
      routes: {
        SplashScreen.routeName: (context) => const SplashScreen(),
        OnboardingScreen.routeName: (context) => const OnboardingScreen(),
        ChangePasswordScreen.routeName: (context) =>
            const ChangePasswordScreen(),
        LoginScreen.routeName: (context) => const LoginScreen(),
        RegisterScreen.routeName: (context) => const RegisterScreen(),
        BottomNavWidget.routeName: (context) => const BottomNavWidget(),
        ExplorScreen.routeName: (context) => const ExplorScreen(),
        TripSearchScreen.routeName: (context) => const TripSearchScreen(),
        TiketScreen.routeName: (context) => const TiketScreen(),
        FavoriteScreen.routeName: (context) => const FavoriteScreen(),
        NotificationScreen.routeName: (context) => const NotificationScreen(),
        EditProfileScreen.routeName: (context) => const EditProfileScreen(),
        ProfileScreen.routeName: (context) => const ProfileScreen(),
        NusanpayListScreen.routeName: (context) => const NusanpayListScreen(),
        NusanpayStatusScreen.routeName: (context) =>
            const NusanpayStatusScreen(),
        PaymentWebView.routeName: (context) => const PaymentWebView(),
        PaymentStatusScreen.routeName: (context) => const PaymentStatusScreen(),
        TicketConfirmationScreen.routeName: (context) =>
            const TicketConfirmationScreen(),
        TicketDetailScreen.routeName: (context) => const TicketDetailScreen()
      },
    );
  }
}
