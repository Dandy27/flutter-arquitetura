import 'package:dartz/dartz.dart';
import 'package:flutter_arquitura/modules/search/domain/entities/result_search.dart';
import 'package:flutter_arquitura/modules/search/domain/errors/errors.dart';
import 'package:flutter_arquitura/modules/search/domain/repositores/search_repository.dart';

abstract class SearchByText {
  Future<Either<FailureSearch, List<ResultSearch>>> call(String searchText);
}

class SearchByTextImpl implements SearchByText {
  final SearchRepository repository;

  SearchByTextImpl(this.repository);
  @override
  Future<Either<FailureSearch, List<ResultSearch>>> call(
      String searchText) async {
    return repository.search(searchText);
  }
}
