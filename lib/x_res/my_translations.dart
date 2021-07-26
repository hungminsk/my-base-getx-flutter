import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'my_config.dart';

class MyTranslations extends Translations {
  // Default locale
  static final locale = Locale('vi');

  // fallbackLocale saves the day when the locale gets in trouble
  static final fallbackLocale = Locale('en');

  static void init() {
    final box = GetStorage();
    String? locale = box.read(MyConfig.LANGUAGE);
    if (locale == null) {
      Get.updateLocale(Locale('vi'));
      box.write(MyConfig.LANGUAGE, 'vi');
    } else {
      Get.updateLocale(Locale(locale));
    }
  }

  static void updateLocale({required String langCode}) {
    final box = GetStorage();
    Get.updateLocale(Locale(langCode));
    box.write(MyConfig.LANGUAGE, langCode);
  }

  @override
  Map<String, Map<String, String>> get keys => {
        'vi': {
          // INDONESIAN
          'title_app': 'Judul Aplikasimu',
          'saya': 'Sayaa',
          'peringatan': 'Peringatan',
          'tutup': 'Tutup',
          'reload': 'Ulangi',
          'error_message': 'Terjadi kesalahan, coba beberapa saat lagi...',
          'beranda': 'Beranda',
          'change_lang': 'Ubah Bahasa',
          'increment': 'Penambahan',
          'goto_test': 'Menuju Halaman Test',
          'test_screen': 'Halaman Test',
          'my_flutter': 'Flutter Saya',
          'change_theme': 'Ubah Tema',
          'portfolio_title': 'Portfolio',
          'portfolio_name': 'Name',
          'create_button': 'Create',
        },
        'en': {
          // ENGLISH
          'title_app': 'Your App Title',
          'saya': 'I\'am',
          'peringatan': 'Anouncement',
          'tutup': 'Close',
          'reload': 'Reload',
          'error_message': 'Something went wrong, try again later...',
          'beranda': 'Home',
          'change_lang': 'Change Language',
          'increment': 'Increment',
          'goto_test': 'Go to Test Screen',
          'test_screen': 'Test Screen',
          'my_flutter': 'My Flutter',
          'change_theme': 'Change Theme',
          'portfolio_title': 'Portfolio',
          'portfolio_name': 'Name',
          'create_button': 'Create',
        }
      };
}
