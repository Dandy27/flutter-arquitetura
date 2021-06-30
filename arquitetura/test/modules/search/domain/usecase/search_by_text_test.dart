import 'package:dartz/dartz.dart';
import 'package:flutter_arquitura/modules/search/domain/entities/result_search.dart';
import 'package:flutter_arquitura/modules/search/domain/repositores/search_repository.dart';
import 'package:flutter_arquitura/modules/search/domain/usecases/search_by_text.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class SearchRepositoryMock extends Mock implements SearchRepository {}

void main() {
  final repository = SearchRepositoryMock();

  final usecase = SearchByTextImpl(repository);
  test('deve retornar uma lista de ResultSearch', () async {
    String dandy;
    when(repository.search(dandy)).thenAnswer((_) async => Right(<ResultSearch>[]));

    final result = await usecase('Dandy');
    expect(result, isA<List<ResultSearch>>());
  });
}
