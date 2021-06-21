from django.test import TestCase

# Create your tests here.

class ApiTest(TestCase):

    def test_login(self):
        # header = {'Content-Type': 'application/json; charset=UTF-8'}
        data = {"username":"cena","password":"123qweasd"}
        response  = self.client.post("/auth/" ,data=data)
        print(response.content)
        self.assertEqual(200 ,response.status_code)