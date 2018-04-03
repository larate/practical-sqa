########################################
Practical SQA [Selenium Tests]
########################################

This repository contains `Selenium <http://seleniumhq.org/>`_ tests for the `Practical SQA <http://www.practicalsqa.net/>`_, `GitHub Account <https://github.com/larate/practical-sqa>`_.


    .. image:: https://github.com/larate/practical-sqa/blob/petrTest1/screenshot/README/homepage.png
        :alt: Practical SQA
        :width: 30%
        :align: center


.. contents::

.. section-numbering::

.. raw:: pdf

   PageBreak oneColumn


=============
Dependencies
=============
----------------
Git
----------------
Make sure you have `Git <https://git-scm.com/>`_ installed on your system. For check use the commands below:

``git -v``

----------------
GitHub
----------------
Make sure you have access `GitHub Account <https://github.com/larate/practical-sqa>`_:

``git clone https://github.com/larate/practical-sqa``

----------------
Ruby
----------------
Make sure you have `Ruby <https://www.ruby-lang.org/en/>`_ installed on your system, if not follow the vendor instructions for installing them on your operating system.

``ruby -v``

----------------
GeckoDriver
----------------
~~~~~~~~~~~~
FireFox - WebDriver for FireFox
~~~~~~~~~~~~
Need download driver from `GeckoDriver <https://github.com/mozilla/geckodriver/releases>`_

~~~~~~~~~~~~
ChromeDriver - WebDriver for Chrome [Not Implement yet]
~~~~~~~~~~~~
Need download chromedriver from `GeckoDriver <https://sites.google.com/a/chromium.org/chromedriver/downloads>`_


=============
Run
=============
To run the framework using basic options and their syntax:

``cucumber``

----------------
Browser
----------------
To run the framework in a particular browser, to need to specify the name of the browser as a parameter of the option of [-DdriverType]

~~~~~~~~~~~~
Firefox
~~~~~~~~~~~~
To run in Firefox use -DdriverType=FF, below:

``mvn clean site -DdriverType=[FF/ff/FIREFOX/FireFox/firefox/FOX/Fox/fox]``

~~~~~~~~~~~~
Chrome - [Not Implement yet]
~~~~~~~~~~~~
To run in Chrome use -DdriverType=CHROME, below:

``mvn clean site -DdriverType=[CH/ch/CHROME/chrome/GOOGLE/google]``

~~~~~~~~~~~~
Default
~~~~~~~~~~~~
If you don't specify this parameter, default option -DdriverType = ff

``mvn clean site -DdriverType=ff``


=============
OPEN REPORT
=============
    .. image:: https://github.com/larate/practical-sqa/blob/petrTest1/screenshot/README/report.png
        :alt: Practical SQA
        :width: 30%
        :align: center


