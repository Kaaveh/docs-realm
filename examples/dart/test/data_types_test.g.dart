// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_types_test.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

// ignore_for_file: type=lint
class Car extends _Car with RealmEntity, RealmObjectBase, RealmObject {
  static var _defaultsSet = false;

  Car(
    ObjectId id, {
    String? licensePlate,
    bool isElectric = false,
    double milesDriven = 0,
    Person? owner,
    Iterable<String> attributes = const [],
  }) {
    if (!_defaultsSet) {
      _defaultsSet = RealmObjectBase.setDefaults<Car>({
        'isElectric': false,
        'milesDriven': 0,
      });
    }
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'licensePlate', licensePlate);
    RealmObjectBase.set(this, 'isElectric', isElectric);
    RealmObjectBase.set(this, 'milesDriven', milesDriven);
    RealmObjectBase.set(this, 'owner', owner);
    RealmObjectBase.set<RealmList<String>>(
        this, 'attributes', RealmList<String>(attributes));
  }

  Car._();

  @override
  ObjectId get id => RealmObjectBase.get<ObjectId>(this, 'id') as ObjectId;
  @override
  set id(ObjectId value) => RealmObjectBase.set(this, 'id', value);

  @override
  String? get licensePlate =>
      RealmObjectBase.get<String>(this, 'licensePlate') as String?;
  @override
  set licensePlate(String? value) =>
      RealmObjectBase.set(this, 'licensePlate', value);

  @override
  bool get isElectric => RealmObjectBase.get<bool>(this, 'isElectric') as bool;
  @override
  set isElectric(bool value) => RealmObjectBase.set(this, 'isElectric', value);

  @override
  double get milesDriven =>
      RealmObjectBase.get<double>(this, 'milesDriven') as double;
  @override
  set milesDriven(double value) =>
      RealmObjectBase.set(this, 'milesDriven', value);

  @override
  RealmList<String> get attributes =>
      RealmObjectBase.get<String>(this, 'attributes') as RealmList<String>;
  @override
  set attributes(covariant RealmList<String> value) =>
      throw RealmUnsupportedSetError();

  @override
  Person? get owner => RealmObjectBase.get<Person>(this, 'owner') as Person?;
  @override
  set owner(covariant Person? value) =>
      RealmObjectBase.set(this, 'owner', value);

  @override
  Stream<RealmObjectChanges<Car>> get changes =>
      RealmObjectBase.getChanges<Car>(this);

  @override
  Car freeze() => RealmObjectBase.freezeObject<Car>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(Car._);
    return const SchemaObject(ObjectType.realmObject, Car, 'Car', [
      SchemaProperty('id', RealmPropertyType.objectid, primaryKey: true),
      SchemaProperty('licensePlate', RealmPropertyType.string, optional: true),
      SchemaProperty('isElectric', RealmPropertyType.bool),
      SchemaProperty('milesDriven', RealmPropertyType.double),
      SchemaProperty('attributes', RealmPropertyType.string,
          collectionType: RealmCollectionType.list),
      SchemaProperty('owner', RealmPropertyType.object,
          optional: true, linkTarget: 'Person'),
    ]);
  }
}

class Address extends _Address
    with RealmEntity, RealmObjectBase, EmbeddedObject {
  Address(
    String street,
    String city,
    String state,
    String country,
  ) {
    RealmObjectBase.set(this, 'street', street);
    RealmObjectBase.set(this, 'city', city);
    RealmObjectBase.set(this, 'state', state);
    RealmObjectBase.set(this, 'country', country);
  }

  Address._();

  @override
  String get street => RealmObjectBase.get<String>(this, 'street') as String;
  @override
  set street(String value) => RealmObjectBase.set(this, 'street', value);

  @override
  String get city => RealmObjectBase.get<String>(this, 'city') as String;
  @override
  set city(String value) => RealmObjectBase.set(this, 'city', value);

  @override
  String get state => RealmObjectBase.get<String>(this, 'state') as String;
  @override
  set state(String value) => RealmObjectBase.set(this, 'state', value);

  @override
  String get country => RealmObjectBase.get<String>(this, 'country') as String;
  @override
  set country(String value) => RealmObjectBase.set(this, 'country', value);

  @override
  Stream<RealmObjectChanges<Address>> get changes =>
      RealmObjectBase.getChanges<Address>(this);

  @override
  Address freeze() => RealmObjectBase.freezeObject<Address>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(Address._);
    return const SchemaObject(ObjectType.embeddedObject, Address, 'Address', [
      SchemaProperty('street', RealmPropertyType.string),
      SchemaProperty('city', RealmPropertyType.string),
      SchemaProperty('state', RealmPropertyType.string),
      SchemaProperty('country', RealmPropertyType.string),
    ]);
  }
}

class Person extends _Person with RealmEntity, RealmObjectBase, RealmObject {
  Person(
    ObjectId id,
    String name, {
    Address? address,
  }) {
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'name', name);
    RealmObjectBase.set(this, 'address', address);
  }

  Person._();

  @override
  ObjectId get id => RealmObjectBase.get<ObjectId>(this, 'id') as ObjectId;
  @override
  set id(ObjectId value) => RealmObjectBase.set(this, 'id', value);

  @override
  String get name => RealmObjectBase.get<String>(this, 'name') as String;
  @override
  set name(String value) => RealmObjectBase.set(this, 'name', value);

  @override
  Address? get address =>
      RealmObjectBase.get<Address>(this, 'address') as Address?;
  @override
  set address(covariant Address? value) =>
      RealmObjectBase.set(this, 'address', value);

  @override
  Stream<RealmObjectChanges<Person>> get changes =>
      RealmObjectBase.getChanges<Person>(this);

  @override
  Person freeze() => RealmObjectBase.freezeObject<Person>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(Person._);
    return const SchemaObject(ObjectType.realmObject, Person, 'Person', [
      SchemaProperty('id', RealmPropertyType.objectid, primaryKey: true),
      SchemaProperty('name', RealmPropertyType.string),
      SchemaProperty('address', RealmPropertyType.object,
          optional: true, linkTarget: 'Address'),
    ]);
  }
}

class UuidPrimaryKey extends _UuidPrimaryKey
    with RealmEntity, RealmObjectBase, RealmObject {
  UuidPrimaryKey(
    Uuid id,
  ) {
    RealmObjectBase.set(this, 'id', id);
  }

  UuidPrimaryKey._();

  @override
  Uuid get id => RealmObjectBase.get<Uuid>(this, 'id') as Uuid;
  @override
  set id(Uuid value) => RealmObjectBase.set(this, 'id', value);

  @override
  Stream<RealmObjectChanges<UuidPrimaryKey>> get changes =>
      RealmObjectBase.getChanges<UuidPrimaryKey>(this);

  @override
  UuidPrimaryKey freeze() => RealmObjectBase.freezeObject<UuidPrimaryKey>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(UuidPrimaryKey._);
    return const SchemaObject(
        ObjectType.realmObject, UuidPrimaryKey, 'UuidPrimaryKey', [
      SchemaProperty('id', RealmPropertyType.uuid, primaryKey: true),
    ]);
  }
}

class ObjectIdPrimaryKey extends _ObjectIdPrimaryKey
    with RealmEntity, RealmObjectBase, RealmObject {
  ObjectIdPrimaryKey(
    ObjectId id,
  ) {
    RealmObjectBase.set(this, 'id', id);
  }

  ObjectIdPrimaryKey._();

  @override
  ObjectId get id => RealmObjectBase.get<ObjectId>(this, 'id') as ObjectId;
  @override
  set id(ObjectId value) => RealmObjectBase.set(this, 'id', value);

  @override
  Stream<RealmObjectChanges<ObjectIdPrimaryKey>> get changes =>
      RealmObjectBase.getChanges<ObjectIdPrimaryKey>(this);

  @override
  ObjectIdPrimaryKey freeze() =>
      RealmObjectBase.freezeObject<ObjectIdPrimaryKey>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(ObjectIdPrimaryKey._);
    return const SchemaObject(
        ObjectType.realmObject, ObjectIdPrimaryKey, 'ObjectIdPrimaryKey', [
      SchemaProperty('id', RealmPropertyType.objectid, primaryKey: true),
    ]);
  }
}

class RealmValueExample extends _RealmValueExample
    with RealmEntity, RealmObjectBase, RealmObject {
  RealmValueExample({
    RealmValue singleAnyValue = const RealmValue.nullValue(),
    Iterable<RealmValue> listOfMixedAnyValues = const [],
  }) {
    RealmObjectBase.set(this, 'singleAnyValue', singleAnyValue);
    RealmObjectBase.set<RealmList<RealmValue>>(this, 'listOfMixedAnyValues',
        RealmList<RealmValue>(listOfMixedAnyValues));
  }

  RealmValueExample._();

  @override
  RealmValue get singleAnyValue =>
      RealmObjectBase.get<RealmValue>(this, 'singleAnyValue') as RealmValue;
  @override
  set singleAnyValue(RealmValue value) =>
      RealmObjectBase.set(this, 'singleAnyValue', value);

  @override
  RealmList<RealmValue> get listOfMixedAnyValues =>
      RealmObjectBase.get<RealmValue>(this, 'listOfMixedAnyValues')
          as RealmList<RealmValue>;
  @override
  set listOfMixedAnyValues(covariant RealmList<RealmValue> value) =>
      throw RealmUnsupportedSetError();

  @override
  Stream<RealmObjectChanges<RealmValueExample>> get changes =>
      RealmObjectBase.getChanges<RealmValueExample>(this);

  @override
  RealmValueExample freeze() =>
      RealmObjectBase.freezeObject<RealmValueExample>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(RealmValueExample._);
    return const SchemaObject(
        ObjectType.realmObject, RealmValueExample, 'RealmValueExample', [
      SchemaProperty('singleAnyValue', RealmPropertyType.mixed,
          optional: true, indexType: RealmIndexType.regular),
      SchemaProperty('listOfMixedAnyValues', RealmPropertyType.mixed,
          optional: true, collectionType: RealmCollectionType.list),
    ]);
  }
}

class Vehicle extends _Vehicle with RealmEntity, RealmObjectBase, RealmObject {
  Vehicle(
    ObjectId id,
    String nickname,
    DateTime dateLastServiced,
  ) {
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'nickname', nickname);
    RealmObjectBase.set(this, 'dateLastServiced', dateLastServiced);
  }

  Vehicle._();

  @override
  ObjectId get id => RealmObjectBase.get<ObjectId>(this, 'id') as ObjectId;
  @override
  set id(ObjectId value) => RealmObjectBase.set(this, 'id', value);

  @override
  String get nickname =>
      RealmObjectBase.get<String>(this, 'nickname') as String;
  @override
  set nickname(String value) => RealmObjectBase.set(this, 'nickname', value);

  @override
  DateTime get dateLastServiced =>
      RealmObjectBase.get<DateTime>(this, 'dateLastServiced') as DateTime;
  @override
  set dateLastServiced(DateTime value) =>
      RealmObjectBase.set(this, 'dateLastServiced', value);

  @override
  Stream<RealmObjectChanges<Vehicle>> get changes =>
      RealmObjectBase.getChanges<Vehicle>(this);

  @override
  Vehicle freeze() => RealmObjectBase.freezeObject<Vehicle>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(Vehicle._);
    return const SchemaObject(ObjectType.realmObject, Vehicle, 'Vehicle', [
      SchemaProperty('id', RealmPropertyType.objectid, primaryKey: true),
      SchemaProperty('nickname', RealmPropertyType.string),
      SchemaProperty('dateLastServiced', RealmPropertyType.timestamp),
    ]);
  }
}

class Player extends _Player with RealmEntity, RealmObjectBase, RealmObject {
  Player(
    ObjectId id,
    String username, {
    Iterable<Item> inventory = const [],
    Iterable<String> traits = const [],
  }) {
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'username', username);
    RealmObjectBase.set<RealmList<Item>>(
        this, 'inventory', RealmList<Item>(inventory));
    RealmObjectBase.set<RealmList<String>>(
        this, 'traits', RealmList<String>(traits));
  }

  Player._();

  @override
  ObjectId get id => RealmObjectBase.get<ObjectId>(this, 'id') as ObjectId;
  @override
  set id(ObjectId value) => RealmObjectBase.set(this, 'id', value);

  @override
  String get username =>
      RealmObjectBase.get<String>(this, 'username') as String;
  @override
  set username(String value) => RealmObjectBase.set(this, 'username', value);

  @override
  RealmList<Item> get inventory =>
      RealmObjectBase.get<Item>(this, 'inventory') as RealmList<Item>;
  @override
  set inventory(covariant RealmList<Item> value) =>
      throw RealmUnsupportedSetError();

  @override
  RealmList<String> get traits =>
      RealmObjectBase.get<String>(this, 'traits') as RealmList<String>;
  @override
  set traits(covariant RealmList<String> value) =>
      throw RealmUnsupportedSetError();

  @override
  Stream<RealmObjectChanges<Player>> get changes =>
      RealmObjectBase.getChanges<Player>(this);

  @override
  Player freeze() => RealmObjectBase.freezeObject<Player>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(Player._);
    return const SchemaObject(ObjectType.realmObject, Player, 'Player', [
      SchemaProperty('id', RealmPropertyType.objectid, primaryKey: true),
      SchemaProperty('username', RealmPropertyType.string),
      SchemaProperty('inventory', RealmPropertyType.object,
          linkTarget: 'Item', collectionType: RealmCollectionType.list),
      SchemaProperty('traits', RealmPropertyType.string,
          collectionType: RealmCollectionType.list),
    ]);
  }
}

class Item extends _Item with RealmEntity, RealmObjectBase, RealmObject {
  Item(
    ObjectId id,
    String name,
    String description,
  ) {
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'name', name);
    RealmObjectBase.set(this, 'description', description);
  }

  Item._();

  @override
  ObjectId get id => RealmObjectBase.get<ObjectId>(this, 'id') as ObjectId;
  @override
  set id(ObjectId value) => RealmObjectBase.set(this, 'id', value);

  @override
  String get name => RealmObjectBase.get<String>(this, 'name') as String;
  @override
  set name(String value) => RealmObjectBase.set(this, 'name', value);

  @override
  String get description =>
      RealmObjectBase.get<String>(this, 'description') as String;
  @override
  set description(String value) =>
      RealmObjectBase.set(this, 'description', value);

  @override
  Stream<RealmObjectChanges<Item>> get changes =>
      RealmObjectBase.getChanges<Item>(this);

  @override
  Item freeze() => RealmObjectBase.freezeObject<Item>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(Item._);
    return const SchemaObject(ObjectType.realmObject, Item, 'Item', [
      SchemaProperty('id', RealmPropertyType.objectid, primaryKey: true),
      SchemaProperty('name', RealmPropertyType.string),
      SchemaProperty('description', RealmPropertyType.string),
    ]);
  }
}

class RealmSetExample extends _RealmSetExample
    with RealmEntity, RealmObjectBase, RealmObject {
  RealmSetExample({
    Set<String> primitiveSet = const {},
    Set<int?> nullablePrimitiveSet = const {},
    Set<SomeRealmModel> realmObjectSet = const {},
  }) {
    RealmObjectBase.set<RealmSet<String>>(
        this, 'primitiveSet', RealmSet<String>(primitiveSet));
    RealmObjectBase.set<RealmSet<int?>>(
        this, 'nullablePrimitiveSet', RealmSet<int?>(nullablePrimitiveSet));
    RealmObjectBase.set<RealmSet<SomeRealmModel>>(
        this, 'realmObjectSet', RealmSet<SomeRealmModel>(realmObjectSet));
  }

  RealmSetExample._();

  @override
  RealmSet<String> get primitiveSet =>
      RealmObjectBase.get<String>(this, 'primitiveSet') as RealmSet<String>;
  @override
  set primitiveSet(covariant RealmSet<String> value) =>
      throw RealmUnsupportedSetError();

  @override
  RealmSet<int?> get nullablePrimitiveSet =>
      RealmObjectBase.get<int?>(this, 'nullablePrimitiveSet') as RealmSet<int?>;
  @override
  set nullablePrimitiveSet(covariant RealmSet<int?> value) =>
      throw RealmUnsupportedSetError();

  @override
  RealmSet<SomeRealmModel> get realmObjectSet =>
      RealmObjectBase.get<SomeRealmModel>(this, 'realmObjectSet')
          as RealmSet<SomeRealmModel>;
  @override
  set realmObjectSet(covariant RealmSet<SomeRealmModel> value) =>
      throw RealmUnsupportedSetError();

  @override
  Stream<RealmObjectChanges<RealmSetExample>> get changes =>
      RealmObjectBase.getChanges<RealmSetExample>(this);

  @override
  RealmSetExample freeze() =>
      RealmObjectBase.freezeObject<RealmSetExample>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(RealmSetExample._);
    return const SchemaObject(
        ObjectType.realmObject, RealmSetExample, 'RealmSetExample', [
      SchemaProperty('primitiveSet', RealmPropertyType.string,
          collectionType: RealmCollectionType.set),
      SchemaProperty('nullablePrimitiveSet', RealmPropertyType.int,
          optional: true, collectionType: RealmCollectionType.set),
      SchemaProperty('realmObjectSet', RealmPropertyType.object,
          linkTarget: 'SomeRealmModel',
          collectionType: RealmCollectionType.set),
    ]);
  }
}

class SomeRealmModel extends _SomeRealmModel
    with RealmEntity, RealmObjectBase, RealmObject {
  SomeRealmModel(
    ObjectId id,
  ) {
    RealmObjectBase.set(this, 'id', id);
  }

  SomeRealmModel._();

  @override
  ObjectId get id => RealmObjectBase.get<ObjectId>(this, 'id') as ObjectId;
  @override
  set id(ObjectId value) => RealmObjectBase.set(this, 'id', value);

  @override
  Stream<RealmObjectChanges<SomeRealmModel>> get changes =>
      RealmObjectBase.getChanges<SomeRealmModel>(this);

  @override
  SomeRealmModel freeze() => RealmObjectBase.freezeObject<SomeRealmModel>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(SomeRealmModel._);
    return const SchemaObject(
        ObjectType.realmObject, SomeRealmModel, 'SomeRealmModel', [
      SchemaProperty('id', RealmPropertyType.objectid),
    ]);
  }
}

class BinaryExample extends _BinaryExample
    with RealmEntity, RealmObjectBase, RealmObject {
  BinaryExample(
    String name,
    Uint8List requiredBinaryProperty, {
    Uint8List? defaultValueBinaryProperty,
    Uint8List? nullableBinaryProperty,
  }) {
    RealmObjectBase.set(this, 'name', name);
    RealmObjectBase.set(this, 'requiredBinaryProperty', requiredBinaryProperty);
    RealmObjectBase.set(this, 'defaultValueBinaryProperty',
        defaultValueBinaryProperty ?? Uint8List(8));
    RealmObjectBase.set(this, 'nullableBinaryProperty', nullableBinaryProperty);
  }

  BinaryExample._();

  @override
  String get name => RealmObjectBase.get<String>(this, 'name') as String;
  @override
  set name(String value) => RealmObjectBase.set(this, 'name', value);

  @override
  Uint8List get requiredBinaryProperty =>
      RealmObjectBase.get<Uint8List>(this, 'requiredBinaryProperty')
          as Uint8List;
  @override
  set requiredBinaryProperty(Uint8List value) =>
      RealmObjectBase.set(this, 'requiredBinaryProperty', value);

  @override
  Uint8List get defaultValueBinaryProperty =>
      RealmObjectBase.get<Uint8List>(this, 'defaultValueBinaryProperty')
          as Uint8List;
  @override
  set defaultValueBinaryProperty(Uint8List value) =>
      RealmObjectBase.set(this, 'defaultValueBinaryProperty', value);

  @override
  Uint8List? get nullableBinaryProperty =>
      RealmObjectBase.get<Uint8List>(this, 'nullableBinaryProperty')
          as Uint8List?;
  @override
  set nullableBinaryProperty(Uint8List? value) =>
      RealmObjectBase.set(this, 'nullableBinaryProperty', value);

  @override
  Stream<RealmObjectChanges<BinaryExample>> get changes =>
      RealmObjectBase.getChanges<BinaryExample>(this);

  @override
  BinaryExample freeze() => RealmObjectBase.freezeObject<BinaryExample>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(BinaryExample._);
    return const SchemaObject(
        ObjectType.realmObject, BinaryExample, 'BinaryExample', [
      SchemaProperty('name', RealmPropertyType.string),
      SchemaProperty('requiredBinaryProperty', RealmPropertyType.binary),
      SchemaProperty('defaultValueBinaryProperty', RealmPropertyType.binary),
      SchemaProperty('nullableBinaryProperty', RealmPropertyType.binary,
          optional: true),
    ]);
  }
}

class MapExample extends _MapExample
    with RealmEntity, RealmObjectBase, RealmObject {
  MapExample({
    Map<String, int> map = const {},
    Map<String, int?> nullableMap = const {},
  }) {
    RealmObjectBase.set<RealmMap<int>>(this, 'map', RealmMap<int>(map));
    RealmObjectBase.set<RealmMap<int?>>(
        this, 'nullableMap', RealmMap<int?>(nullableMap));
  }

  MapExample._();

  @override
  RealmMap<int> get map =>
      RealmObjectBase.get<int>(this, 'map') as RealmMap<int>;
  @override
  set map(covariant RealmMap<int> value) => throw RealmUnsupportedSetError();

  @override
  RealmMap<int?> get nullableMap =>
      RealmObjectBase.get<int?>(this, 'nullableMap') as RealmMap<int?>;
  @override
  set nullableMap(covariant RealmMap<int?> value) =>
      throw RealmUnsupportedSetError();

  @override
  Stream<RealmObjectChanges<MapExample>> get changes =>
      RealmObjectBase.getChanges<MapExample>(this);

  @override
  MapExample freeze() => RealmObjectBase.freezeObject<MapExample>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(MapExample._);
    return const SchemaObject(
        ObjectType.realmObject, MapExample, 'MapExample', [
      SchemaProperty('map', RealmPropertyType.int,
          collectionType: RealmCollectionType.map),
      SchemaProperty('nullableMap', RealmPropertyType.int,
          optional: true, collectionType: RealmCollectionType.map),
    ]);
  }
}
