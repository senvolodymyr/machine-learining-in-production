from mlip import get_project_name


def test_get_project_name():
    assert get_project_name() == "Machine Learning in Production"
