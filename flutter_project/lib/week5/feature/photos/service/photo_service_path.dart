enum PhotoServicePath { PHOTOS }

extension PhotoServicePathExtension on PhotoServicePath {
  String get rawValue {
    switch (this) {
      case PhotoServicePath.PHOTOS:
        return 'photos';
    }
  }
}
