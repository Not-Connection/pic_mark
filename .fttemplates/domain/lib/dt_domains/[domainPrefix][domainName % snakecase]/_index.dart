import 'dart:math';

import 'package:states_rebuilder/states_rebuilder.dart';

import '../../app/_index.dart';
import '../../xtras/_index.dart';

part 'a.[domainName % snakecase].prov.dart';
part 'b.[domainName % snakecase].serv.dart';
part 'c.[domainName % snakecase].repo.dart';
part 'd.[domainName % snakecase].repo.mock.dart';

[domainName % pascalcase]Prov get _pv => Prov.[domainName % camelcase].st;
[domainName % pascalcase]Serv get _sv => Serv.[domainName % camelcase];
[domainName % pascalcase]Repo get _rp => Repo.[domainName % camelcase].st;
