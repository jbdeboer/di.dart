part of di;

class Key {
  final Type type;
  final Type annotation;
  int hashCode;

  Key(this.type, [this.annotation]) {
    hashCode = type.hashCode + annotation.hashCode;
  }

  bool operator ==(other) =>
      other is Key && other.type == type && other.annotation == annotation;


  String toString() {
    String asString = type.toString();
    if (annotation != null) {
      asString += ' annotated with: ${annotation.toString()}';
    }
    return asString;
  }
}
