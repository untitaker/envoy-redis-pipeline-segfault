import redis

r = redis.Redis()

p = r.pipeline()

p.get("1")

p.execute()
