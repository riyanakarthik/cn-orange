"""
POX launcher for SDN Learning Switch project.

This file launches POX's built-in L2 learning switch component.
It is a thin wrapper so the project repo contains controller code
used for the final demonstration.
"""

from pox.core import core
import pox.forwarding.l2_learning


def launch():
    log = core.getLogger()
    log.info("Launching POX Learning Switch Controller")
    pox.forwarding.l2_learning.launch()