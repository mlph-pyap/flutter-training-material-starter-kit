import 'package:sqfentity_gen/sqfentity_gen.dart';

const tableNote = SqfEntityTable(
    tableName: 'note',
    primaryKeyName: 'id',
    primaryKeyType: PrimaryKeyType.integer_auto_incremental,
    useSoftDeleting: true,
    modelName: null,
    fields: [
      SqfEntityField('subject', DbType.text),
      SqfEntityField('notes', DbType.text),
      SqfEntityField('isActive', DbType.bool, defaultValue: true),
    ]);
