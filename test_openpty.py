import os

def test_open_pty():
    master, slave = os.openpty()
    print(master)
    print(slave)


if __name__ == "__main__":
    import sys
    import pytest
    sys.exit(pytest.main(["-s", __file__]))