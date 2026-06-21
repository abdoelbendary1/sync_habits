import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'injection.config.dart'; // الملف ده هيتم توليده تلقائياً، تجاهل الخطأ مؤقتاً

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init', // اسم الدالة اللي هتعمل تهيئة للـ Dependencies
  preferRelativeImports: true, // يفضل استخدام الـ relative paths
  asExtension: true, // هيخليها تتندى كـ Extension على GetIt
)
Future<void> configureDependencies() => getIt.init();
