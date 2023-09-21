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
  final Uri baseUri = Uri(
    scheme: 'https',
    host: 'application-a7.17dj2halxyuf.us-south.codeengine.appdomain.cloud',
    // scheme: 'http',
    // host: 'localhost',
    // port: 3000,);
  );

  Future<CloudantDoc> job({required String docId}) async {
    final url = Uri(
      scheme: 'https',
      host: 'application-a7.17dj2halxyuf.us-south.codeengine.appdomain.cloud',
      // scheme: 'http',
      // host: 'localhost',
      // port: 3000,
      path: 'get_job/$docId',
    ).toString();
    final response = await client.get(url);
    return CloudantDoc.fromJson(response.data);
  }

  Future<int> submitFinalVersion(
      {required String id,
      required String submitter,
      required DocumentVersion finalVersion}) async {
    final url = Uri(
      scheme: 'https',
      host: 'application-a7.17dj2halxyuf.us-south.codeengine.appdomain.cloud',
      // scheme: 'http',
      // host: 'localhost',
      // port: 3000,
      path: '/submit_final_version/${finalVersion.id}',
    ).toString();
    final response = await client.post(url, data: {
      "id": id,
      "submitter": submitter,
      "version": finalVersion,
    });
    return response.statusCode!;
  }

  Future<CloudantDoc> submitRating(
      {required String id, required int rating}) async {
    final url = Uri(
      scheme: 'https',
      host: 'application-a7.17dj2halxyuf.us-south.codeengine.appdomain.cloud',
      // scheme: 'http',
      // host: 'localhost',
      // port: 3000,
      path: '/submit_final_version/$id',
    ).toString();
    final response = await client.post(url, data: {"id": id, "rating": rating});
    return CloudantDoc.fromJson(response.data);
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
