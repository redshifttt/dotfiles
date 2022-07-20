from collections import namedtuple
import sys
import json
import os
import requests
from typing import Union
from dataclasses import dataclass
from argparse import ArgumentParser

@dataclass
class Thread:
    no: int
    now: str
    name: str
    com: str
    time: int
    resto: int
    filename: str
    ext: str
    w: int
    h: int
    tn_w: int
    tn_h: int
    tim: int
    md5: str
    fsize: int
    country: str = ""
    country_name: str = ""

@dataclass
class Args:
    thread: str
    dir: Union[str, None]

@dataclass
class CliArg:
    so: str
    lo: str
    metavar: str
    help: str
    required: bool = False

class DataClient(ArgumentParser):
    arguments: list[CliArg] = [
        CliArg(
            so="-t",
            lo="--thread",
            metavar="URL",
            help="The URL to the thread",
            required=True
        ),
        CliArg(
            so="-d",
            lo="--dir",
            metavar="PATH",
            help="PATH to directory (default: working directory)"
        )
    ]

    API_LINK = "https://a.4cdn.org/{0}/thread/{1}.json"

    def __init__(self):
        super().__init__(
            description="The 4chan image downloader",
            prog="4dl"
        )

        for arg in self.arguments:
            cli_arg: CliArg = arg

            super().add_argument(cli_arg.so, cli_arg.lo,
                metavar=cli_arg.metavar,
                help=cli_arg.help,
                required=cli_arg.required)

    # We use this to load our JSON data
    # into a workable object. Since objects
    # are far easier to predict and control/mutate
    # than dictionaries.
    @staticmethod
    def _thread_hook(dict: dict):
        return namedtuple("Thread", dict.keys())(*dict.values())

    # Our main entry point for 4dl.py
    def parse_thread(self):
        opts: Args = super().parse_args(sys.argv[1:])
        *_, board, _, post_number = opts.thread.split("/")

        req = requests.get(self.API_LINK.format(board, post_number))
        thread_data = json.loads(req.text, object_hook=self._thread_hook)

        for r_post in thread_data.posts:
            post: Thread = r_post
            if hasattr(post, 'country_name'):
                print(f"{post.name} [{post.country_name}] {post.now}")
            else:
                print(f"{post.name} {post.now}")
            print("---------------------------------")

            if hasattr(post, 'filename'):
                print(f"File: ({post.filename}{post.ext})")

            if hasattr(post, 'com'): print(post.com)

            print('\n')


if __name__ == "__main__":
    client = DataClient()
    client.parse_thread()
