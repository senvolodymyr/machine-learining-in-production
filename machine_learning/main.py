from machine_learning_builder import get_project_name


def main() -> None:
    greeting = f"Hello, {get_project_name()}!"
    print(greeting)


if __name__ == "__main__":
    main()
