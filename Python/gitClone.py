#! /usr/bin/env python3

from git import Repo
import os
import shutil

local_path = "locust-dir"

git_remote = f"https://github.com/bramha574/MyScripts.git"
Repo.clone_from(git_remote, local_path)

shutil.make_archive("locust", 'zip', local_path)
