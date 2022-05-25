@echo Starting...
xelatex --extra-mem-bot=10000000 main
makeindex main.nlo -s nomencl.ist -o main.nls
makeindex main
biber main
makeglossaries main
xelatex --extra-mem-bot=10000000 main
xelatex --extra-mem-bot=10000000 main
xelatex --extra-mem-bot=10000000 main
@echo Finish...
