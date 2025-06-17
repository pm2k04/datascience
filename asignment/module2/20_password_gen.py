import random
import string
class user:
          def __init__(self, username, password):
                    self.username = username
                    self.password = password
          
          def __str__(self):
                    return f"User(username={self.username}, password={self.password})"
def generate_random_password(length=12):
    characters = string.ascii_letters + string.digits + string.punctuation
    return ''.join(random.choice(characters) for _ in range(length))
def create_user(username):
          password = generate_random_password()
          new_user = user(username, password)
          return new_user
def main():
          username = input("Enter a username: ")
          new_user = create_user(username)
          print(f"User created: {new_user}")
          print("Password is correct.")
          print(f"Generated password: {new_user.password}")
if __name__ == "__main__":
          main()

          

          


          