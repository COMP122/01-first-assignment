# Makefile to process a Markdownn (MD) submission
#   Simply validates the minimal requirements before grading can occur

# The TAG represents the HTML comment that identifies a line that contains a response
TAG=<!-- response
ANSWER=\([\t ]*.*\)

SUBMISSION=submission.md

## On the Mac the # in the next two turn out to be comments
NAME=$(shell awk '/Name:/ {print $$3}' $(SUBMISSION) )
ACCOUNT=$(shell awk '/GitHub Account:/ {print $$4}' $(SUBMISSION) )
COMMITS=$(shell git log --oneline | wc -l)
MIN_COMMITS=4

# Make targets explained
# all: the default target used by students to build and check there work
# validate: the target used by the student to run a validation check for submission
#   validate_*: individual targets to validate a particular criterion
# submission: the target used by github to validate a submission
#   md_submission:  the target used by github to validate an MarkDown (md) submission
#   code_submission: the target used by git hub to validate a code submission
# grade: the target used by the prof to perform auto-grading

all: submission

grade: all number_commits  # open the submission.md file to see if renders correctly... don't do this on the server.
	@open submission.md
	@subl submission.md grade.report

submission: md_submission number_commits

# md_submmission is the make target of github
md_submission: validate_submission validate_name validate_account # 
	@echo ---------------------------------
	@echo The following are your responses:
	@echo 
	@sed -n -e '/^#/p' -e '/```response/,/```/p' -e "/$(TAG)/s/^$(ANSWER)[\t ]*$(TAG).*/\1/p" $(SUBMISSION)

code_submmision:
	echo


validate_submission:
	@test -f $(SUBMISSION) || \
	  { echo \"$(SUBMISSION)\" is missing && false ; }

validate_name:
	@test -n "$(NAME)"

validate_account:
	@test -n "$(ACCOUNT)"


# Currently, the number of commits does not work on the server side
# the log file only shows the most recent entry -- 
# not sure why or what the work around is.
number_commits:
	@test ! $(COMMITS) -lt $(MIN_COMMITS) || \
	  { echo "Not enough commits" && false ; } 



