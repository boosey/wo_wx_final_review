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

  Future<CloudantDoc> job({required String docId}) async {
    final url = Uri(
      scheme: 'https',
      host: 'application-a7.17dj2halxyuf.us-south.codeengine.appdomain.cloud',
      // port: 80,
      path: 'get_job/$docId',
    ).toString();
    final response = await client.get(url);
    return CloudantDoc.fromJson(response.data);
  }

  Future<CloudantDoc> submitFinalVersion(
      {required String id,
      required String submitter,
      required DocumentVersion finalVersion}) async {
    final url = Uri(
      scheme: 'http',
      host: 'localhost',
      port: 3000,
      path: '/submit_final_version/${finalVersion.id}',
    ).toString();
    final response = await client.post(url, data: {
      "id": id,
      "submitter": submitter,
      "version": finalVersion,
    });
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
