#!/usr/bin/env python
# -*- coding: utf-8 -*-

from __future__ import division, print_function, absolute_import
import argparse
import logging

logging.basicConfig(
    level='DEBUG', format='%(asctime)s|%(name)s|%(levelname)s|%(message)s')
logger = logging.getLogger(__name__)


def main(args):
    logger.debug(args)

    a = 10
    import IPython; IPython.embed(); exit()


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    main(parser.parse_args())
