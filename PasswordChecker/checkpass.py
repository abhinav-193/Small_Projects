# Invokation: python3 checkpass.py <password1> <password2> <password3> ...

import requests
import sys
import hashlib


def request_api_data(query_char):
    url = 'https://api.pwnedpasswords.com/range/' + query_char
    res = requests.get(url)
    if(res.status_code != 200):
        raise RuntimeError(
            f'Error fetching: {res.status_code}, check the api and try again!')
    return res


def get_password_leaks_count(hashes, hash_to_check):
    hashes = (line.split(":") for line in hashes.text.splitlines())
    for h, count in hashes:
        if(hash_to_check == h):
            return count
    return 0


def pwned_api_check(password):
    '''
    Check password if it exists in API response
    '''
    sha1password = hashlib.sha1(password.encode(
        'utf-8')).hexdigest().upper()                   # SHA1 is the Hashing algorithm
    first5_char, tail = sha1password[:5], sha1password[5:]
    response = request_api_data(first5_char)
    return get_password_leaks_count(response, tail)


def main(args):
    for password in args:
        count = pwned_api_check(password)
        if(count):
            print(
                f'{password} was found {count} times... You shoud probably change your password!!')
        else:
            print(f'{password} was not found... All good!!')
    return 'Done!'


if __name__ == '__main__':
    inputs = sys.argv[1:]
    sys.exit(main(inputs))  # Prints Done!
