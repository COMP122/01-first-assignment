Update the invitation like for the first assignment.
Add a video for
git pull before a git push


# General Assignment Directions

Students within Computer Science and Computer Information Technology programs are better served if they learn and utilize source control systems early in their academic program. Learning various markdown languages, which are used to document their software projects, is also advantages.

While using a Canvas might be a easier for you to submit assignments, using canvas provides you with little long-term benefit.  

As such, we will be using GitHub Classrooms for all of our paper-like assignments, which includes quizzes and exams in COMP122. Additional, a semi-automatic grading process is also used as part of this process. This should result in a faster turn-around in grading.

To submit your assignments and for the Professor to grade them efficiently, there are a number of steps that you must follow. This assignment is being provided to you to ensure you understand these steps and to allow you to address any issues that may prevent you from submitting your assignments.

In class, the professor will review each of these steps and provide additional information as to what these commands do. For now, simply follow the instructions.

## First-Time GitHub Users
  1. Obtain a github account (https://github.com).
     - In this document, this account is referenced as "{account}"
     - As such, you need to replace this string with your github account name in all subsequent commands
  1. Launch a terminal
  1. Run the following command `comp122-keygen`.  When prompted to enter a passphrase, simply hit enter.  Your output should be similar to the following:
     ```
     $ comp122-keygen
     Generating public/private ed25519 key pair.
     Enter passphrase (empty for no passphrase): 
     Enter same passphrase again: 
     Your identification has been saved in /Users/steve/.ssh/id_comp122_github
     Your public key has been saved in /Users/steve/.ssh/id_comp122_github.pub
     The key fingerprint is:
     SHA256:N3zkoMQGrthZVIYJd/PqCgPrnE5vrztNOpOVhgHEq+Q comp122 git@github.com
     The key's randomart image is:
     +--[ED25519 256]--+
     | o. ..++=        |
     |  o  +o= o       |
     |   o  o + o .    |
     | ..o.+ o + +     |
     |o.o +o .S + o    |
     |.E o. =. . o     |
     |  o oB  .        |
     | + oBo..         |
     | .=.+Bo          |
     +----[SHA256]-----+
     
     A copy of your public key has been placed into the clip board.
       Copy this public key to your github account!
     
       open https://github.com/settings/keys
     $
     ```
  1. Run either `open` or `start` command with the URL: https://github.com/settings/keys

  1. Click on the green button labeled "New SSH Key"
     1. Enter a title for your new key, e.g., "My SSH Key for COMP122"
     1. Ensure the Key Type is set to: Authentication Key
     1. Click in the Key box.
     1. Paste your public-key (Ctl-V, Command-V, etc.)
     1. Click on "Add SSH Key"
 
  1. Test your SSH
     1. In the terminal window type the command: `ssh -T git@github.com`. Your output should be similar to the following:
        ```
        $ ssh -T git@github.com
        Hi {account}! You've successfully authenticated, but GitHub does not provide shell access.
        $
        ```
 
   1. For more information see: [GithHub and SSH Authentication](https://docs.github.com/en/authentication/connecting-to-github-with-ssh).


## Joining the comp122-f23 Classroom
  1. Click on the following assignment link: https://classroom.github.com/a/c1oXvbim
  1. Join the comp122-f23 classroom.
     - if your email address is not listed, STOP and notify the Professor.
  1. Accept the assignment.
  1. Wait a bit and then refresh the page.


## Accept the Assignment
  1. Launch a terminal
  1. Go to your deliverables directory
     ```
     cd ~/classes/comp122/deliverables
     ```
  1. Use the Assignment's Invitation URL to accept the assignment.
     - For this assignment, the URL is: https://classroom.github.com/a/c1oXvbim
     - All Invitations URL are recorded in the "assignments.md" file.

  1. Click on the URL that is associated with your assignment repository. The URL should be of the form: <br />  https://github.com/COMP122/01-first-assignment-{account}


  1. Obtain the git URL for this assignment: <br/>
     - Click on the green "Code" button.
     - Select "SSH" menu tab.
     - Copy the ssh-style URL.
     This URL should look like: `git@github.com:COMP122/01-first-assignment-{account}`

  1. Clone this repository to your computer, e.g., 
     ```
     git clone git@github.com:COMP122/01-first-assignment-{account}.git
     ```
     Remember hat you need to replace the substring "{account}" with your GitHub account name. (See the URL you obtained from the previous step.)


## Work on the Assignment.
  1. Change to the working directory for this assignment and list the files present.<br/>
     ```
     cd 01-first-assignment-{account}
     ls
     ```

  1. Review the "assignment.md" file.
     - You can review the file by opening it up like any other document on your computer.

  1. Make a copy of the "assignment.md" file, naming it "submission.md":
     ```
     cp assignment.md submission.md
     ```

  1. Edit the submission.md file to correct the following information.
     - Name:
     - GitHub Account:

     You can edit the file using the Sublime Text editor:
       - `subl submission.md`

  1. Add the submission.md to your local repository: 
     ```
     git add submission.md
     ```

  1. Commit this file to your local repository:
     ```
     git commit -m 'creating file'
     ```

  1. Test to see if you assignment passes the minimal requirements:
     ```
     make 
     ```

  1. Pull the current contents of your remote repository:
     ```
     git pull
     ```

  1. Push the current contents of your local repository to remote repository:
     ```
     git push
     ```

## Work on the Assignment
  1. Incrementally edit and submit your "submission.md" file.

     ```
     subl submission.md
     git add submission.md
     git commit -m 'some message' submission.md
     make
     git push
     ```
     - get into the habit of making incremental updates to your working assignments.

  1. Provide a response to all items that have been marked as needing a response.
     - an HTML comment tag `<!-- response -->` have been added to each line that requires a response.
     - your response should be placed to the left of the HTML comment.

  1. Use additional spacing to ensure your responses are _easy_ to read to maximize credit.

  1. Add additional information as you feel is necessary to maximize credit.

  1. Review what the rendering of the "submission.md" looks like with a Markdown viewer, e.g., One Markdown.
     - re-edit the file to make any necessary changes, before your final "push."

  1. Submit your final version of the deliverable, which is the contents of the entire local repository
     ```
     make
     git push
     ```

## Validating that you have submitted your file correctly.

For new users of git, the question "How do I know if I successfully submitted my assignment?" is often asked.  Here are several ways to validate that you did submit what you thought you did.

   1. open the GitHub Webpage associated with your assignment: <br />
      ```
      open https://github.com/COMP122/01-first-assignment-{account}
      ```
      - ensure that there is a green checkmark as indicated in the following image
      - ensure that last update is recent

   1.    1. git log -1 --oneline 0917b30 (HEAD -> main, origin/main, origin/HEAD) updating name of action 

   1. git fetch  
      git status -s -b 
      ## main...origin/main [ahead 1, behind 1]
 M "../TODO for the Fall"
 M ../syllabus.md
?? ../bin/foobar




## Grading
  1. A semi-automated process will be used to expedite the grading of this assignment. 
  1. As such, it is important that you position your answers appropriately within the "submission.md" file.
  1. A file called "answers.md" will be provided to you with all the correct answers.
  1. A file called "grade.report" will be provided with your final score and any breakdown.
  1. The professor will announce via slack when a particular assignment has been graded.



