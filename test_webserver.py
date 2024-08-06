# test_webserver.py

import unittest
import requests

class TestWebServer(unittest.TestCase):
    def test_index_page_contains_image(self):
        # Replace 'http://localhost:80' with the actual URL of your running container if different
        response = requests.get('http://localhost:80')
        
        # Check if the response status code is 200 (OK)
        self.assertEqual(response.status_code, 200)

        # Check if the index page contains the image specified
        self.assertIn('v1.jpg', response.text)

if __name__ == '__main__':
    unittest.main()
