pip install locustio
locust -f locustfile.py WebsiteUserPostgres WebsiteUserRedis  --host=http://api.vedur.is --slave  --master-host=104.198.152.67
