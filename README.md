# Inventory Project

This is a simple supermarket inventory project that was developed with Django. If you are not familiar with Django, you should know that Django is a Fullstack web framework implemented in the Python Programming language. It is popularly known for it's quick development principle. That is, it is mainly used by developers with deadline.

In order to successfully run this project, you must first have the Python runtime installed in your machine. You can install the latest version of Python from the Python official website.

[https://www.python.org/](https://www.python.org/) .

## Installation guidelines:
1. After you have python installed, you could either clone or fork the repository, although it will be ideal to fork it if you will be contributing to the project.
2. Running Python in your computer without getting fully aquainted with the language might might require some getting used to, although, I think this guide can help you get it up and running in no time.
3. After cloning the repository, change directory (cd) into the root folder like:
```shell
(base) mac@macs-MacBook-Air % cd inventory
```
4. Create a virtual environment, although this is not neccessary if you are new Python developer. Virtual environment is a container you store all your modules more or like nodule_modules folder in node js. If you don't create it, all your deendencies will be stored in a global environment. We also do this to prevent conflist in dependencies. Well, if you wish to create it, follow the following steps. If not, skip it:

##### For Mac Users:
```
(base) mac@macs-MacBook-Air inventory %  python3 -m venv myvenv

(base) mac@macs-MacBook-Air inventory %  source myvenv/bin/activate

(myvenv) (base) mac@macs-MacBook-Air inventory % 

```
##### For Windows Users:
```
C:\Users\username\Documents\inventory % python -m venv myvenv

C:\Users\username\Documents\inventory % myvenv/Scripts/activate.bat

(myvenv) C:\Users\username\Documents\inventory %

```

(myvenv) above means it has been activated.

5. Once you are done, you can now install all the dependencies for the project. In the project root directory, notice that there is a file named `requirements.txt`. That is the file that contains a list of the project's dependencies. In order to successfully run the project, you'll need to install all the dependencies.

## Congratulations, you are almost done! :smiley:

6. Go to your terminal, ensure you are in the root directory of the project where the `requirements.txt` is located, have a virtual environment activated and run the following command:

```shell
(myvenv) C:\Users\username\Documents\inventory % pip install -r requirements.txt
```
7. When all your dependencies have successfully installed, your can run the following command. This comand will run your django application in the default port 8000.

```shell
(myvenv) C:\Users\username\Documents\inventory % python manage.py runserver

```

You will see something like this:

```

Watching for file changes with StatReloader
Performing system checks...

System check identified no issues (0 silenced).
September 30, 2023 - 15:33:06
Django version 4.2.5, using settings 'ovbioise.settings'
Starting development server at http://127.0.0.1:8000/
Quit the server with CONTROL-C.
```

8. Copy and paste the local development server URL in your browser.

## Congratulations, you are good to go! :smiley: :rocket:
