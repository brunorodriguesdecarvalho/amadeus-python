if [[ $TRAVIS_EVENT_TYPE == "pull_request" && $TRAVIS_PULL_REQUEST_BRANCH != "master" ]] ; then python samples/flight_choice_prediction/flight_choice_prediction.py ; fi
if [[ $TRAVIS_EVENT_TYPE == "push" && $TRAVIS_BRANCH == "master" ]] ; then
  for folder in samples/*/ ; do
    for file in "$folder"/* ; do
      if [[ $file == *.py ]]
      then
        python "$file"
      fi
    done
  done
; fi