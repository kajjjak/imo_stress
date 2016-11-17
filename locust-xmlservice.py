from locust import HttpLocust, TaskSet, task
import resource

resource.setrlimit(resource.RLIMIT_NOFILE, (999999, 999999))

class WebsiteTasks(TaskSet):

    @task
    def getObservationXML(self):
        """Active messages"""
        # headers http://docs.python-requests.org/en/master/user/advanced/?highlight=header
        self.client.get("/met/v1/service/observations/station/6420/xml/", headers={'X-IMO-APIKEY': '8998afbd79201045552f8ac9cbb7df857017d45a867e06cad8978c07'})

    @task
    def getObservationJSON(self):
        """Active messages"""
        self.client.get("/met/v1/service/observations/station/6420/json/", headers={'X-IMO-APIKEY': '8998afbd79201045552f8ac9cbb7df857017d45a867e06cad8978c07'})


class WebsiteUserTasks(HttpLocust):
    task_set = WebsiteTasks
    min_wait = 5000
    max_wait = 15000
