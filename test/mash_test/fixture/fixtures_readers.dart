import 'dart:io';

String fixture(String name) =>
    File('test/mash_test/fixture/$name').readAsStringSync();
