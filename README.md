# CSIT Tools

This repository contains a collection of tools developed to help CSIT students of UOW.

## 3.125 Computer Server Availability Checker

This tool checks the availability of the room 3.125 computer servers for Oracle. To use it, simply run the script and enter the IP address of the server. The script will then ping the server and display whether it is available or not.

### Usage
1) Install [latest](https://www.python.org/downloads/) python.
2) If working remotely: Ensure to establish your connection through VPN first otherwise all servers will appear offline.
3) Run it: ```python 3-125-computer-server-availability.py```

## Lecture Slide Flashcard Generator

This tool helps you generate Anki flashcards from your lecture slides. It will take a folder of lecture slides and generate a flashcard for each slide. The flashcard deck will be saved in a folder called "flashcards" in the same directory as the script.

### Usage
1) Install [latest](https://www.python.org/downloads/) python.
2) Install [Anki](https://apps.ankiweb.net/).
3) Run it: ```python lecture-slide-flashcard-generator.py```
4) Insert a OpenAI API key.
5) Select the folder containing your lecture slides.
6) Enter the name of the deck you want to create.

## Lecture Slide Rewrite Generator (GUI)

This tool helps you rewrite your lecture slides. It will take a folder of lecture slides and generate a new text file of easy to read notes. The notes will be saved in a folder called "notes" in the same directory as the script.

### Usage
1) Install [latest](https://www.python.org/downloads/) python.
2) Run it: ```python lecture-slide-rewrite-generator-gui.py```
3) Insert a OpenAI API key.