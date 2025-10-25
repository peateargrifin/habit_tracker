// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetsettingCollection on Isar {
  IsarCollection<setting> get settings => this.collection();
}

const SettingSchema = CollectionSchema(
  name: r'setting',
  id: -823090073715780110,
  properties: {
    r'firstlaunch': PropertySchema(
      id: 0,
      name: r'firstlaunch',
      type: IsarType.dateTime,
    )
  },
  estimateSize: _settingEstimateSize,
  serialize: _settingSerialize,
  deserialize: _settingDeserialize,
  deserializeProp: _settingDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _settingGetId,
  getLinks: _settingGetLinks,
  attach: _settingAttach,
  version: '3.1.0+1',
);

int _settingEstimateSize(
  setting object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _settingSerialize(
  setting object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.firstlaunch);
}

setting _settingDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = setting();
  object.firstlaunch = reader.readDateTimeOrNull(offsets[0]);
  object.id = id;
  return object;
}

P _settingDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTimeOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _settingGetId(setting object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _settingGetLinks(setting object) {
  return [];
}

void _settingAttach(IsarCollection<dynamic> col, Id id, setting object) {
  object.id = id;
}

extension settingQueryWhereSort on QueryBuilder<setting, setting, QWhere> {
  QueryBuilder<setting, setting, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension settingQueryWhere on QueryBuilder<setting, setting, QWhereClause> {
  QueryBuilder<setting, setting, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<setting, setting, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<setting, setting, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<setting, setting, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<setting, setting, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension settingQueryFilter
    on QueryBuilder<setting, setting, QFilterCondition> {
  QueryBuilder<setting, setting, QAfterFilterCondition> firstlaunchIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'firstlaunch',
      ));
    });
  }

  QueryBuilder<setting, setting, QAfterFilterCondition> firstlaunchIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'firstlaunch',
      ));
    });
  }

  QueryBuilder<setting, setting, QAfterFilterCondition> firstlaunchEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'firstlaunch',
        value: value,
      ));
    });
  }

  QueryBuilder<setting, setting, QAfterFilterCondition> firstlaunchGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'firstlaunch',
        value: value,
      ));
    });
  }

  QueryBuilder<setting, setting, QAfterFilterCondition> firstlaunchLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'firstlaunch',
        value: value,
      ));
    });
  }

  QueryBuilder<setting, setting, QAfterFilterCondition> firstlaunchBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'firstlaunch',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<setting, setting, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<setting, setting, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<setting, setting, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<setting, setting, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension settingQueryObject
    on QueryBuilder<setting, setting, QFilterCondition> {}

extension settingQueryLinks
    on QueryBuilder<setting, setting, QFilterCondition> {}

extension settingQuerySortBy on QueryBuilder<setting, setting, QSortBy> {
  QueryBuilder<setting, setting, QAfterSortBy> sortByFirstlaunch() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firstlaunch', Sort.asc);
    });
  }

  QueryBuilder<setting, setting, QAfterSortBy> sortByFirstlaunchDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firstlaunch', Sort.desc);
    });
  }
}

extension settingQuerySortThenBy
    on QueryBuilder<setting, setting, QSortThenBy> {
  QueryBuilder<setting, setting, QAfterSortBy> thenByFirstlaunch() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firstlaunch', Sort.asc);
    });
  }

  QueryBuilder<setting, setting, QAfterSortBy> thenByFirstlaunchDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firstlaunch', Sort.desc);
    });
  }

  QueryBuilder<setting, setting, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<setting, setting, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }
}

extension settingQueryWhereDistinct
    on QueryBuilder<setting, setting, QDistinct> {
  QueryBuilder<setting, setting, QDistinct> distinctByFirstlaunch() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'firstlaunch');
    });
  }
}

extension settingQueryProperty
    on QueryBuilder<setting, setting, QQueryProperty> {
  QueryBuilder<setting, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<setting, DateTime?, QQueryOperations> firstlaunchProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'firstlaunch');
    });
  }
}
