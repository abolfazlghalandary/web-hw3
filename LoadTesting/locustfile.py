from locust import HttpUser, task

class FrontTest(HttpUser):
    @task
    def test(self):
        self.client.get("")


class AuthTest(HttpUser):
    @task
    def test(self):
        self.client.get("/auth")
        self.client.get("/auth/signin?email=ssasdefsddd@sfd.dsdf&password=fslkjfd")
        self.client.get("/auth/signout")


class TicketTest(HttpUser):
    @task
    def test(self):
        self.client.get("/ticket")
        self.client.get("/ticket/filter_flights")
        self.client.get("/ticket/validate_buy")
