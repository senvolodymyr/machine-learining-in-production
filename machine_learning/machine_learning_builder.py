import requests


def get_dummy_response():
    try:
        result = requests.get("https://example.com/")
        return result.text
    except requests.exceptions.RequestException:
        return None
