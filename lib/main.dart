
import 'package:flutter/material.dart';

void main() {
  runApp(const MediaStudioApp());
}

class MediaStudioApp extends StatelessWidget {
  const MediaStudioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Media Studio',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF101B19),
        fontFamily: 'Roboto',
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const Color emerald = Color(0xFF65D6AD);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF101B19),
        title: const Text(
          'MEDIA STUDIO',
          style: TextStyle(
            color: emerald,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings_outlined,
                color: emerald),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 25),
            const Text(
              'استوديو الوسائط',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'كل وسائطك في مكان واحد',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF9EAAA5),
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 40),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 1.05,
                children: const [
                  MediaCard(
                    title: 'الصور',
                    subtitle: 'معرض الصور',
                    icon: Icons.photo_library_rounded,
                  ),
                  MediaCard(
                    title: 'الفيديوهات',
                    subtitle: 'مشغل الفيديو',
                    icon: Icons.video_library_rounded,
                  ),
                  MediaCard(
                    title: 'الأغاني',
                    subtitle: 'مشغل الموسيقى',
                    icon: Icons.music_note_rounded,
                  ),
                  MediaCard(
                    title: 'الخزنة',
                    subtitle: 'ملفاتك الخاصة',
                    icon: Icons.lock_rounded,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            const Text(
              'EMERALD • BLACK • SILVER',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: emerald,
                fontSize: 11,
                letterSpacing: 2,
              ),
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}

class MediaCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;

  const MediaCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF1B302A),
        borderRadius: BorderRadius.circular(22),
        border: Border.all(
          color: const Color(0xFF315C4C),
          width: 1,
        ),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(22),
        onTap: () {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 48,
              color: const Color(0xFF65D6AD),
            ),
            const SizedBox(height: 15),
            Text(
              title,
              style: const TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 6),
            Text(
              subtitle,
              style: const TextStyle(
                fontSize: 12,
                color: Color(0xFFB7C9C1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}