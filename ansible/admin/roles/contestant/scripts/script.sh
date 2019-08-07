#!/bin/bash
export DISPLAY=':0'
python3 ~/cws_download_all_pdfs.py &
disown
