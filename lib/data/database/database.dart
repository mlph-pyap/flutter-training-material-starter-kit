import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:sqfentity/sqfentity.dart';
import 'package:sqfentity_gen/sqfentity_gen.dart';

import 'notes.dart';

part 'database.g.dart';

// Define the 'tableNote' constant as SqfEntityTable for the category table.

const seqIdentity = SqfEntitySequence(
  sequenceName: 'identity',
  // maxValue:  10000, /* optional. default is max int (9.223.372.036.854.775.807) */
  // modelName: 'SQEidentity',
  /* optional. SqfEntity will set it to sequenceName automatically when the modelName is null*/
  // cycle : false,   /* optional. default is false; */
  // minValue = 0;    /* optional. default is 0 */
  // incrementBy = 1; /* optional. default is 1 */
  // startWith = 0;   /* optional. default is 0 */
);

///
const String SQLITE_DATABASE_NAME = "training_database";

///
const String SQLITE_DATABASE = "training_database.db";

@SqfEntityBuilder(myDbModel)

///
const myDbModel = SqfEntityModel(
    modelName: SQLITE_DATABASE_NAME,
    // optional
    databaseName: SQLITE_DATABASE,
    password: null,
    // You can set a password if you want to use crypted database
//(For more information: https://github.com/sqlcipher/sqlcipher)

// put defined tables into the tables list.
    databaseTables: [tableNote],
// You can define tables to generate add/edit view forms if you want to use Form Generator property
//formTables: [tableProduct, tableCategory, tableTodo],
// put defined sequences into the sequences list.
    sequences: [seqIdentity],
    bundledDatabasePath:
        null // 'assets/sample.db' // This value is optional. When bundledDatabasePath is empty then EntityBase creats a new database when initializing the database
    );
