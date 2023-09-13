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

  Future<Job> job({required String jobId}) async {
    final url = Uri(
      scheme: 'http',
      host: 'localhost',
      port: 3000,
      path: 'get_document/$jobId',
    ).toString();
    final response = await client.get(url);
    return Job.fromJson(response.data);
  }
}

@riverpod
JobsRepository jobsRepository(JobsRepositoryRef ref) => JobsRepository(
      client: ref.watch(dioProvider),
    );

@riverpod
Future<Job> job(
  JobRef ref, {
  required String jobId,
}) {
  return ref.watch(jobsRepositoryProvider).job(jobId: jobId);
}
