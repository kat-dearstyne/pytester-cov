import sys


def has_test_failure():
    output = sys.argv[1].lower()
    result = output.find("failure")
    if result > 0:
        print("true")
        return True
    print("false")
    return False


if __name__ == '__main__':
    has_test_failure()
