part of di;

int _uniqHash = 0;
Map<String, int> _hashCache = {};

class Key {
  final Type type;
  final Type annotation;

  const Key(this.type, [this.annotation]);

  bool operator ==(other) =>
      other is Key && other.type == type && other.annotation == annotation;

  int get hashCode => _hashCache.putIfAbsent("${type.hashCode} ${annotation.hashCode}", () => _uniqHash++);

  String toString() {
    String asString = type.toString();
    if (annotation != null) {
      asString += ' annotated with: ${annotation.toString()}';
    }
    return asString;
  }
}
