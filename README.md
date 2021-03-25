# cs203s2021-practical4

[![Actions Status](../../workflows/build/badge.svg)](../../actions)

## DUE: by 8:30 am on Thursday, April 1

## Table of Contents

- [Introduction](#introduction)
- [Objectives](#objectives)
- [Learning](#learning)
- [Tasks](#tasks)
- [System Commands](#system-commands)

  - [Using Pyenv and Pipenv](#using-pyenv-and-pipenv)
  - [Using Docker](#using-docker)
  - [Using Gradle](#using-gradle)

- [Output](#output)

- [Automated Checks with GatorGrader](#automated-checks-with-gatorgrader)

- [Updates](#updates)

- [GitHub Actions](#github-actions)

- [Reporting Problems](#reporting-problems)

- [Receiving Assistance](#receiving-assistance)

- [Practical Assessment](#practical-assessment)

## Introduction

Designed for use with [GitHub Classroom](https://classroom.github.com/) and [GatorGrader](https://github.com/GatorEducator/gatorgrader/), this repository contains the starter files for a practical assignment in an software engineering course class that uses the Python programming language. The GitHub Actions CI builds for this repository will fail, as evidenced by a red ✗ appearing in the commit logs.

This assignment invites a developer to automatically test a Python program called `src/termfrequency/compute_tf_cookbook.py`, focusing on analyzing the coverage of the test suite and then increasing the overall coverage score. Code coverage measures how much of the source code is executed when a test suite is run. Please refer to the practical 1 and 2 introductory videos to learn more about this program's input, output, and behavior. You can also review Chapters 1 through 3 in "Think Python" to learn more about how to program in Python and run Python scripts. In addition to fully documenting the program, you must extend, describe, and fully implement an automated testing strategy in the `tests/test_compute_tf_cookbook.py` file.

When you use the `git commit` command to transfer your source code to your GitHub repository, [GitHub Actions CI](https://github.com/features/actions) will initialize a build of your assignment, checking to see if it meets all of the requirements. If both your source code and writing meet all of the established requirements, then you will see a green ✔ in the listing of commits in GitHub. If your submission does not meet the requirements, a red ✗ will appear instead.

## Objectives

To practice using GitHub to access the files for a practical assignment. Additionally, to practice using the Ubuntu operating system and software development programs such as a "terminal window" and a "testing tool". You will also continue to practice using Slack to support communication with the technical leaders and the course instructor. Next, you will learn how to implement and run a Python program, also discovering how to use the Pipenv tool and the course's automated grading tool to assess your progress towards correctly completing the project. Then, you will discover and learn how to use new Pytest plugins, such as `sugar` and `clarity`. You will continue to learn how to automatically and manually perform program's debugging and testing with Pytest and Pytest plugins.

## Learning

If you have not done so already, please read all of the relevant [GitHub Guides](https://guides.github.com/) that explain how to use many of the features that GitHub provides. In particular, please make sure that you have read the following GitHub guides: [Mastering Markdown](https://guides.github.com/features/mastering-markdown/), [Hello World](https://guides.github.com/activities/hello-world/), and [Documenting Your Projects on GitHub](https://guides.github.com/features/wikis/). Each of these guides will help you to understand how to use both [GitHub](http://github.com) and [GitHub Classroom](https://classroom.github.com/).

To do well on this assignment, you should also read Chapters 1 and 3 in "Think Python", paying particularly close attention to the content about variables, expressions, statements, and functions. You should also review a [cookbook program](https://github.com/crista/exercises-in-programming-style/blob/master/05-cookbook/tf-05.py) accompanying the "Exercises in Programming Style" book. Finally, you should read online book chapters and articles about [pytest](https://learning.oreilly.com/library/view/python-testing-with/9781680502848/f_0002.xhtml), including `sugar` and `clarity` options, and about coverage analysis. You are also expected to find and read all additional online resources that you need to complete this assignment.

## Tasks

This assignment assumes that you have correct and working Docker, Git, Pipenv, and a recent version of Python.

You should first run the Pytest test suite that currently contains three tests. Then add the additional test cases you wrote in your previous practical. Following the strategy of those tests and the documentation for the functions in the program, please add more tests to establish a confidence in the correctness of the cookbook-style program and to increase its coverage. If you have already installed Pipenv and the project's development dependencies, you can run the tests by typing `pipenv run test`. After that, please try to use Pytest plugins like `pytest-clarity` and `pytest-sugar`, observing how they help you to be a better tester. You will need to install dependencies again to obtain these tools within `pipenv` (see `Pipfile`). Then collect the coverage for the test suite by typing `pipenv run cover`. After studying the coverage report, you should add tests to the suite with the aim of incrementally working towards full coverage of the program's statements and branches, establishing a confidence in its correctness.

A summary of the tasks to be completed in this practical is below. Please note the first three tasks do not require any action from you besides running the appropriate commands and verifying errorless output. The main actions lies with tasks 4 and 5 below.

1. Install new dependencies using `pipenv install --dev`.
2. Using the command given in the [Using Pyenv and Pipenv](#using-pyenv-and-pipenv) section below, run linting and reformatting tools.
3. Make sure the program produces desired output similar to what is shown in the [Output](#output) section below.
4. Run testing and study its results. You will notice additions in the output made by the new plugins. Learn more about [`sugar`](https://github.com/Teemu/pytest-sugar) and [`clarity`](https://pypi.org/project/pytest-clarity/#description) plugins.
5. Explore [code coverage](https://coverage.readthedocs.io/en/coverage-5.5/) and the report produced after coverage.
6. Add test cases to improve the coverage. You should show improvement to coverage from the previous practical.
7. Complete the `reflection.md` document.
8. Ensure that all GatorGrader checks pass.

## System Commands

This project invites students to enter system commands into a terminal window. This assignment uses [Docker](https://www.docker.com) to deliver programs, such as `gradle` and the source code and packages needed to run [GatorGrader](https://github.com/GatorEducator/gatorgrader), to a students' computer, thereby eliminating the need for a programmer to install them on their development workstation. Along with using Docker for automated grading and assessment on your laptop, students are also asked to setup a full-fledged Python development environment that leverages [Pyenv](https://github.com/pyenv/pyenv) to download and manage versions of Python and [Pipenv](https://github.com/pypa/pipenv) to install and manage Python packages.

### Using Pyenv and Pipenv

Assuming that you will use [Pyenv](https://github.com/pyenv/pyenv) to download and manage your installation of Python, this practical assignment also invites you to use [Pipenv](https://github.com/pypa/pipenv) to create a virtual environment, install and manage development packages, and to run Python commands. Previously, you should have run the following command:

- Install and upgrade the `pipenv` command: `pip install pipenv --user` or `sudo -H pip install -U pipenv` (note, if you have both Python2 and Python3, you may need to use `pip3` command instead of `pip`)

Here is a sample of the Pipenv commands that you will need to run during this assignment. Please note these commands are using the scripts located in your practical directory. If you prefer to run each individual tool separately, please refer to the commands you used in the previous practical.

- Install the new development dependencies with new `pytest` plugins: `pipenv` command: `pipenv install --dev`
- Run the linters and the formatter to check the Python source code: `pipenv run lint --check`
- Run the program with `pipenv` and `python3` and a small input: `pipenv run python3 termfrequency/compute_tf_cookbook.py inputs/input.txt`
- Run the program with `pipenv` and `python3` and a realistic input: `pipenv run python3 termfrequency/compute_tf_cookbook.py inputs/pride-and-prejudice.txt`
- Run the test suite with `pytest`: `pipenv run pytest`
- Run the test suite and calculate test suite coverage: `pipenv run cover`

To run one of these commands, you must be in the main directory for this assignment where the configuration files are located. Then, you can type these commands in the terminal and study the output.

### Using Docker

Once you have installed [Docker Desktop](https://www.docker.com/products/docker-desktop), you can use the following `docker run` command to start `gradle grade` as a containerized application, using the [DockaGator](https://github.com/GatorEducator/dockagator) Docker image available on [DockerHub](https://cloud.docker.com/u/gatoreducator/repository/docker/gatoreducator/dockagator).

```bash
docker run --rm --name dockagator \
  -v "$(pwd)":/project \
  -v "$HOME/.dockagator":/root/.local/share \
  gatoreducator/dockagator
```

The aforementioned command will use `"$(pwd)"` (i.e., the current directory) as the project directory and `"$HOME/.dockagator"` as the cached GatorGrader directory. Please note that both of these directories must exist, although only the project directory must contain something. Generally, the project directory should contain the source code and technical writing of this assignment, as provided to a student through GitHub. Additionally, the cache directory should not contain anything other than directories and programs created by DockaGator, thus ensuring that they are not otherwise overwritten during the completion of the assignment. To ensure that the previous command will work correctly, you should create the cache directory by running the command `mkdir $HOME/.dockagator`.

If you are running your program on a Windows Operating System, you should run the following command instead, replacing the word "user" with the username of your machine:

```bash
docker run --rm --name dockagator -v "%cd%":/project -v "C:\Users\user/.dockagator":/root/.local/share gatoreducator/dockagator
```

Here are some additional commands that you may need to run when using Docker:

- `docker info`: display information about how Docker runs on your workstation
- `docker images`: show the Docker images installed on your workstation
- `docker container list`: list the active images running on your workstation
- `docker system prune`: remove many types of "dangling" components from your workstation
- `docker image prune`: remove all "dangling" docker images from your workstation
- `docker container prune`: remove all stopped docker containers from your workstation
- `docker rmi $(docker images -q) --force`: remove all docker images from your workstation

### Using Gradle

Since the above `docker run` command uses a Docker image that, by default, runs `gradle grade` and then exits the Docker container, you may want to instead run the following command so that you enter an "interactive terminal" that will allow you to repeatedly run commands within the Docker container.

In Linux and Mac OS:

```bash
docker run -it --rm --name dockagator \
  -v "$(pwd)":/project \
  -v "$HOME/.dockagator":/root/.local/share \
  gatoreducator/dockagator /bin/bash
```

In Windows OS (replace `user` with your machine's username):

```bash
docker run -it --rm --name dockagator -v "%cd%":/project -v "C:\Users\user/.dockagator":/root/.local/share gatoreducator/dockagator /bin/bash
```

Once you have typed this command, you can use the [GatorGrader tool](https://github.com/GatorEducator/gatorgrader) in the Docker container by typing the command `gradle grade` in your terminal. Running this command will produce a lot of output that you should carefully inspect. If GatorGrader's output shows that there are no mistakes in the assignment, then your source code and writing are passing all of the automated baseline checks. However, if the output indicates that there are mistakes, then you will need to understand what they are and then try to fix them.

## Output

Running the program with the small input should produce the following output:

```
live  -  2
mostly  -  2
white  -  1
tigers  -  1
india  -  1
wild  -  1
lions  -  1
africa  -  1
```

Running the program with the realistic input should produce the following output:

```
mr  -  786
elizabeth  -  635
very  -  488
darcy  -  418
such  -  395
mrs  -  343
much  -  329
more  -  327
bennet  -  323
bingley  -  306
jane  -  295
miss  -  283
one  -  275
know  -  239
before  -  229
herself  -  227
though  -  226
well  -  224
never  -  220
sister  -  218
soon  -  216
think  -  211
now  -  209
time  -  203
good  -  201
```

Running the test suite with `pytest` should produce output similar to this but with more test cases:

```
plugins: clarity-0.3.0a0, sugar-0.9.4, cov-2.11.1
collecting ...
 tests/test_compute_tf_cookbook.py ✓✓✓                                                                100% ██████████

Results (0.04s):
       3 passed
```

Running the coverage should initially produce output similar to this but with more test cases (you will attempt to improve it during the practical):

```
plugins: clarity-0.3.0a0, sugar-0.9.4, cov-2.11.1
collecting ...
 tests/test_compute_tf_cookbook.py ✓✓✓                                                                100% ██████████

---------- coverage: platform darwin, python 3.8.3-final-0 -----------
Name                                   Stmts   Miss Branch BrPart  Cover   Missing
----------------------------------------------------------------------------------
termfrequency/__init__.py                  0      0      0      0   100%
termfrequency/compute_tf_cookbook.py      42     17     22      1    50%   31-35, 78-83, 92, 96-103
----------------------------------------------------------------------------------
TOTAL                                     42     17     22      1    50%
Coverage XML written to file coverage.xml


Results (0.09s):
       3 passed
```

## Automated Checks with GatorGrader

In addition to meeting all of the requirements outlined in the assignment sheet, your submission must pass the following checks that [GatorGrader](https://github.com/GatorEducator/gatorgrader) automatically assesses. If [GatorGrader's](https://github.com/GatorEducator/gatorgrader) automated checks pass correctly, the tool will produce the output similar to the one below.

```
> Configure project :
Configured GatorGradle 0.5.1

> Task :grade
Updating GatorGrader...
Fetching origin
Checking out to 'master'
Pulling branch...
Updated!
Managing GatorGrader's Python dependencies...
Finished!

✔  The compute_tf_cookbook.py in termfrequency has at least 9 of the 'word_freqs' fragment
✔  The file conftest.py exists in the tests directory
✔  The compute_tf_cookbook.py in termfrequency has at least 1 of the 'as data_file' fragment
✔  The test_compute_tf_cookbook.py in tests has at least 3 multiple-line Python comment(s)
✔  The compute_tf_cookbook.py in termfrequency has exactly 1 of the 'import string' fragment
✔  The __init__.py in tests has exactly 0 of the 'TODO' fragment
✔  The reflection.md in writing has at least 400 word(s) in total
✔  The repository has at least 1 commit(s)
✔  The reflection.md in writing has exactly 0 of the 'TODO' fragment
✔  The test_compute_tf_cookbook.py in tests has at least 0 single-line Python comment(s)
✔  The compute_tf_cookbook.py in termfrequency has at least 7 multiple-line Python comment(s)
✔  The test_compute_tf_cookbook.py in tests has at least 3 of the 'test_' fragment
✔  The file compute_tf_cookbook.py exists in the termfrequency directory
✔  The reflection.md in writing has exactly 8 of the 'heading' tag
✔  The file __init__.py exists in the tests directory
✔  The compute_tf_cookbook.py in termfrequency has at least 14 single-line Python comment(s)
✔  The test_compute_tf_cookbook.py in tests has exactly 0 of the 'TODO' fragment
✔  The compute_tf_cookbook.py in termfrequency has at least 1 of the 'data = []' fragment
✔  The compute_tf_cookbook.py in termfrequency has at least 3 of the 'global words' fragment
✔  The compute_tf_cookbook.py in termfrequency has at least 1 of the 'words = []' fragment
✔  The compute_tf_cookbook.py in termfrequency has at least 1 of the 'word_freqs = []' fragment
✔  The reflection.md in writing has exactly 2 of the 'code_block' tag
✔  The compute_tf_cookbook.py in termfrequency has exactly 0 of the 'TODO' fragment
✔  The reflection.md in writing has exactly 0 of the 'Add Your Name Here' fragment
✔  The compute_tf_cookbook.py in termfrequency has at least 3 of the 'global data' fragment
✔  The compute_tf_cookbook.py in termfrequency has at least 1 of the 'with open' fragment
✔  The conftest.py in tests has exactly 0 of the 'TODO' fragment
✔  The file reflection.md exists in the writing directory
✔  The file test_compute_tf_cookbook.py exists in the tests directory


    ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
    ┃ Passed 29/29 (100%) of checks for cmpsc-203-spring-2021-practical4! ┃
    ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛


BUILD SUCCESSFUL in 16s
1 actionable task: 1 executed
```

## Updates

If the course instructor updates the provided material for this assignment and you would like to receive these updates, then you can type this command in the main directory for this assignment:

```
git remote add download git@github.com:allegheny-computer-science-203-s2021/practical04.git
```

You should only need to type this command once; typing the command additional times may yield an error message but will not negatively influence the state of your repository. Now, you are ready to download the updates provided by the course instructor by typing:

```
git pull download main
```

This second command can be run whenever the course instructor needs to provide you with new source code for this assignment. However, please note that, if you have edited the files that the course instructor updated, running the previous command may lead to Git merge conflicts. If this happens, you may need to manually resolve them with the help of the instructor or a teaching assistant.

## GitHub Actions

This assignment uses [GitHub Actions CI](https://github.com/features/actions) to automatically run the checking programs every time you commit to your GitHub repository. The checking will start as soon as you have accepted the assignment, thus creating your own private repository.

## Reporting Problems

If you have found a problem with this assignment's provided source code, then you can go to the [Computer Science 203 Practical 4 Starter](https://github.com/allegheny-computer-science-203-s2021/practical04) repository and create an issue by clicking the "Issues" tab and then clicking the green "New Issue" button. If you have found a problem with the [GatorGrader tool](https://github.com/GatorEducator/gatorgrader) and the way that it checks you assignment, then you can follow the aforementioned steps to create an issue in its repository. To ensure that your issue is properly resolved, please provide as many details as is possible about the problem that you experienced.

Students who find and use the appropriate GitHub issue tracker to correctly document a mistake in any aspect of this laboratory assignment will receive free GitHub stickers and extra credit towards their grade for it.

## Receiving Assistance

If you are having trouble completing any part of this project, then please talk with either the course instructor or a teaching assistant during the laboratory session. Alternatively, you may ask questions in the Slack workspace for this course. Finally, you can schedule a meeting during the course instructor's office hours.

## Practical Assessment

The grade that a student receives on this practical assignment is a checkmark grade (0 or 1) and is based on:

- **Percentage of Correct GatorGrader Checks**: Students are encouraged to repeatedly try to improve their submission so that it passes all of GatorGrader's checks by, for instance, creating a correct number of minimum test cases. Students should also repeatedly revise their technical writing to ensure that it also passes all of GatorGrader's checks about, for instance, the length of its content and its appropriate use of Markdown.

- **GitHub Actions CI Build Status**: Since additional checks on the source code and/or technical writing may be encoded in GitHub Actions CI's actions and, moreover, all of the GatorGrader checks are also run in GitHub Actions CI, students will receive a checkmark grade if their last before-the-deadline build passes and a green ✔ appears in their GitHub commit log instead of a red ✗. As with the previous grading component, students are encouraged to repeatedly revise their code and technical writing in an attempt to get their GitHub Actions CI build to pass.

Students will receive 1 if their solution passes all GatorGrader checks and receives a green ✔ in their last commit.

All grades for this project will be reported through a student's GitHub gradebook repository.
