import sys
import os
import git
from github import Github

#https://github.com/settings/tokens
token = "token"

def create():
    folder_name = str(sys.argv[1])
    g = Github(token)
    user = g.get_user()
    repo = user.create_repo(folder_name)
    return repo.clone_url

if __name__ == "__main__":
    print(create())