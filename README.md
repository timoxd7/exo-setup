# Exo Setup

This is a super simple script to install homebrew (brew), python 3.12 and exo including its dependencies on a Mac (Apple Silicon) without root privileges.

## Why?

I want to use the Devices in my University (many small Macs) to create a exo cluster which is then able to run huge LLMs not possible with a single machine.

## How?

1. Install

```sh
./exo-setup.sh
```

2. AirDrop (can be done with 1. simultaneously)

    Send the Folder of the needed LLM from `~/.cache/huggingface/hub`to all macs to not have them each download these huge files

3. Run

    Close and reopen the terminal, run `./exo-run.sh` to start exo.

>NOTE: All Nodes need to be able to see each other. Either have a network wich sees each client _or_ connect to a Hotspot from your smartphone to get all in the same network.
