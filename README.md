# envoy segfault when opening and using redis pipeline

demo of envoy segfaulting when proxying a redis cluster and asked to handle a pipeline.

making the pipelines non-transactional (`pipeline(transaction=False)`) works.

1. `make redis-cluster`
2. `make envoy`
3. `make kill`
