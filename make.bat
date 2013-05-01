@echo off
start node node_modules/jade/bin/jade -wP index.jade
start stylus -w style.styl
start lsc -wc script.ls