import 'dart:async';

import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../providers/dio_provider.dart';
import 'job.dart';

part 'jobs_repository.g.dart';

class JobsRepository {
  JobsRepository({
    required this.client,
  });
  final Dio client;

  String buildUri({required String path}) {
    return Uri(
      scheme: 'https',
      host: 'wo-midtier.19bc2sw6ap15.us-south.codeengine.appdomain.cloud',
      // scheme: 'http',
      // host: 'localhost',
      // port: 3000,
      path: path,
    ).toString();
  }

  Future<CloudantDoc> job({
    required String docId,
  }) async {
    final response = await client.get(buildUri(path: 'get_job/$docId'));
    return CloudantDoc.fromJson(response.data);
  }

  Future<int> submitFinalVersion(
      {required String id,
      required String submitter,
      required DocumentVersion finalVersion}) async {
    final response = await client.post(
        buildUri(
          path: '/submit_final_version/${finalVersion.id}',
        ),
        data: {
          "id": id,
          "submitter": submitter,
          "version": finalVersion,
        });
    return response.statusCode!;
  }

  Future<int> submitRating({
    required String id,
    required int rating,
  }) async {
    final response = await client.post(
        buildUri(
          path: '/submit_rating/$id',
        ),
        data: {"id": id, "rating": rating});
    return Future.value(response.statusCode);
  }
}

@riverpod
JobsRepository jobsRepository(JobsRepositoryRef ref) => JobsRepository(
      client: ref.watch(dioProvider),
    );

@riverpod
Future<CloudantDoc> job(
  JobRef ref, {
  required String docId,
}) {
  return ref.watch(jobsRepositoryProvider).job(docId: docId);
}
