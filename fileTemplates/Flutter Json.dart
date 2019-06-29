#set( $nameparts = $NAME.split("_"))
#set( $namepart = '')
#set( $classname = '')
#foreach( $namepart in $nameparts )
    #set( $classname = $classname + $namepart.substring(0, 1).toUpperCase() + $namepart.substring(1))
#end

import 'package:json_annotation/json_annotation.dart';

part #[[']]#$NAME#[[.g.dart']]#;

@JsonSerializable()
class $classname extends Object with _#[[$]]#${classname}SerializerMixin {

    // TODO: add class properties and constructor parameters
    $classname();

    factory $classname#[[.fromJson(Map<String, dynamic> json) => _$]]#${classname}FromJson(json);

}