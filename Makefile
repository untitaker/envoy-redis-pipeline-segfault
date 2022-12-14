redis-cluster:
	docker run -p 6000-6005:7000-7005 grokzen/redis-cluster:latest
.PHONY: redis-cluster

envoy:
	docker run -v $$(pwd)/envoy.yaml:/etc/envoy/envoy.yaml -p 1936:1936 -p 6379:6379 envoyproxy/envoy:v1.24.0
.PHONY: envoy

kill:
	(cat commands; sleep 2) | nc localhost 6379
.PHONY: kill
