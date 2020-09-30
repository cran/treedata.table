## ----setup, include=FALSE-----------------------------------------------------
knitr::opts_chunk$set(echo = TRUE)

## -----------------------------------------------------------------------------
library(ape)
library(treedata.table)

# Load example data
data(anolis)
#Create treedata.table object with as.treedata.table
td <- as.treedata.table(tree = anolis$phy, data = anolis$dat)

## -----------------------------------------------------------------------------
detectCharacterType(anolis$dat$SVL)

## -----------------------------------------------------------------------------
detectAllCharacters(anolis$dat)

## -----------------------------------------------------------------------------
cbind.data.frame(character=colnames(anolis$dat),type=detectAllCharacters(anolis$dat))

## -----------------------------------------------------------------------------
filterMatrix(anolis$dat, "discrete")

## -----------------------------------------------------------------------------
hasNames(anolis$dat, "col")

## -----------------------------------------------------------------------------
data=anolis$dat
colnames(data)<-NULL
head(data,2)

## -----------------------------------------------------------------------------
hasNames(data, "col")

## -----------------------------------------------------------------------------
data <- forceNames(data, "col")

## -----------------------------------------------------------------------------
head(data,2)

## -----------------------------------------------------------------------------
hasNames(data, "col")

