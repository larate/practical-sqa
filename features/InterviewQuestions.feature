@F01
Feature: Verify that correct answer displayed on the Interview questions for black box testing - page 2

  @TC01
  #Scenario:
  Scenario Outline:
    Given User on the PracticalSQA Home page
    Then Click on the "Blog" link under the image
    Then Navigate to the page "Interview questions for black box testing – page 2"
    Then Find the question "<Question>"
    And Check the answer "<TestCaseID>" containt "<Answer>"

  Examples:
  | TestCaseID  | Question                                                                      | Answer                                                                                                     |
  |1            |Why do you want to be a QA engineer? Why QA?                                   |Now, I don’t believe that there is only one good answer for this question, yet through the infinite         |
  |2			|What kind of qualities should a black box tester have?							|Once again, there are a variety of good answers, but whatever you choose to answer should be personalized	 |
  |3			|Do you think a QA job is challenging ? If yes, explain							|As stated previously, there are a plethora of correct answers to this question, but I can give you			 |
  |4			|How would you define a good tester?											|The same as the answer to the second question.																 |
  |5			|What document did you refer to in order to write the test cases?				|Mostly PRD and use cases, but it is also important to take notes on the meetings, since a lot of times the	 |
  |6			|Did you have a situation where you did not have any documents (no requirements document, no use cases, and no design document) and you had to write the test cases? How did you write the test cases?|In startups this is a very common situation. To make sure that I know what I am doing, I will start|
  |7			|If you miss the bug, what will you do to make sure it will not happen again?	|I will add this scenario to the routine/ regression test cases and will also try to come up with new scenari|
  |8			|Have you ever missed a big bug? If yes, what was it and why did it happen?		|My recommendation: Never say you did not miss any bugs, because there is no way that can be true. It does no|
  |9			|What is the Software Development Life Cycle?									|I find this question silly as the answer for it is all over the internet. Yet people still get asked this qu|
  |10			|What is Software Testing Life Cycle											|Once again I just copy and pasted the answer from google search: Contrary to popular belief, Software Testin|
  |11			|Why do you think we need to create test cases?									|Test cases help us plan and organize the process. The most important part of this is that it makes our actio|
  |12			|What would be the best way to do regression testing?							|Automation|
  |13			|Why do you think regression/acceptance test should be done by automation?		|It eliminates the possibility of human error and is much faster. A regression/acceptance test also allows	 |
  |14			|When do we use boundary condition testing?										|Testing by formula: n, n+1, n-1. Example: If password requirements are minimum 6 and maximum 15 characters	 |
  |15			|What is smoke/sanity testing?													|This is a testing that makes sure the product is functioning on the most basic level						 |
  |16			|Who was performing smoke tests in your company?								|Developers. I believe all they did was click on couple buttons and make sure the build is testable. We did n|
  |17			|hat do you do on your first day of work?										|This question is mostly asked by managers and HR. My version of an answer will look like this: I set up my w|
  |18			|What do you do if you have any questions? Who do you ask?						|This question, yet again, is mostly asked by managers and HR. My version would be: I will try to Google it f|
  |19			|Have you used automation tools? 												|This answer is entirely up to you. If you believe you have the basic knowledge, but are not ready to be expo|
  |20			|Why do you like this job?														|There are not right or wrong answers, but you need to think through what you would like to say before you co|
  |21			|Where do you see yourself in the next 5 years? 								|From my point of view, it depends on who you are talking with. Saying I want to be a QA manager when you are|
  |22			|What is the MAIN benefit of designing tests early in the life cycle?  			|To better understand the application																		 |
  |23			|What is a build? 																|The term build is similar to that of any other field. That is, the construction of something that has an obs|
  |24			|What is the difference in between a build and a release?						|A build is usually produced for internal use, in other words, testing. A release, on the other hand, is a fi|
  |25			|Explain the steps in a Bug cycle(life)											|First, a Bug is opened and assigned to the dev(status opened) -> Bug fixed and reassigned back to QA (status|
  |26			|May you please name the different types of software testing? 					|Testing can be divided in to 3 different groups: Black Box, White box and Automation. Black box testing can |
  |27			|What is the agile methodology (process)?										|Agile methodology is typically used in software development. It helps teams respond to unpredictability thro|
  |28			|What is waterfall methodology?													|It is mostly used in the big companies or high level security companies where software development processes|
  |29			|That are differences in between Android and iOS development/testing cycles?	|1.Different development environment (Xcode with objective C vs Java ipa vs apk) 2. Different security models|
  |30			|If bug reproducible on both Android and iOS devices what kind of bug is it? Why?|It can be logic bug on both sides, or a server bug.														 |
