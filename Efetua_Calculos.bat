@echo off
chcp 65001

cucumber --format html --out="./Reports/Efetua_Calculos.html" --tag @Efetua_Soma
