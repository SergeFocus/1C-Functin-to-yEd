@pickles.exe -f ./../../doc/Workflow -l ru -o ./../../distr/ -df word --sn "Vanessa Workflow" 
@pickles.exe -f ./../../doc/Workflow -l ru -o ./../../distr/docs/dhtml -df dhtml --sn "Vanessa Workflow"
@pickles.exe -f ./../../doc/Workflow -l ru -o ./../../distr/docs/html -df html --sn "Vanessa Workflow"
@pandoc -f docx "./../../distr/Vanessa Workflow.docx" -t markdown_github >> ./../../distr/HOW-WE-WORK.md