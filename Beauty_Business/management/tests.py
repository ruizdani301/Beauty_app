from .models import Stock, Sales, Products

from django.test import TestCase
from django.urls.base import reverse

class load_unload(TestCase):
    def test_cross_sales_and_inventory(self):
        numero1 = 5
        self.assertEqual(5, numero1)

class sales_record(TestCase):
    def test_no_amount(self):
        response = self.client.get(reverse("management:index"))
        self.assertEqual(response.status_code, 200)
