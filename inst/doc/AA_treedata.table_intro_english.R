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
td

## -----------------------------------------------------------------------------
td$phy$tip.label == td$dat$tip.label

## ----pressure, echo=TRUE------------------------------------------------------
td$dat[,'SVL']


## -----------------------------------------------------------------------------
td[["SVL"]]

## -----------------------------------------------------------------------------
extractVector(td, 'SVL')

## -----------------------------------------------------------------------------
extractVector(td, 'SVL','ecomorph')

## -----------------------------------------------------------------------------
 td[, head(.SD, 1), by = "ecomorph"]


## -----------------------------------------------------------------------------
td[, head(.SD, 1), by = .(ecomorph, island)]


## -----------------------------------------------------------------------------
 td[, tail(.SD, 1), by = "ecomorph"]


## -----------------------------------------------------------------------------
td[island == "Cuba",.(Index=SVL+hostility)]

## -----------------------------------------------------------------------------

tdt(td, geiger::fitContinuous(phy, extractVector(td, 'SVL'), model="BM", ncores=1))


## -----------------------------------------------------------------------------
dt <- droptreedata.table(tdObject=td, taxa=c("chamaeleonides" ,"eugenegrahami" ))

## -----------------------------------------------------------------------------
c("chamaeleonides" ,"eugenegrahami" ) %in% dt$phy$tip.label

## -----------------------------------------------------------------------------
c("chamaeleonides" ,"eugenegrahami" ) %in% dt$dat$X

## -----------------------------------------------------------------------------
df <- pulltreedata.table(td, "dat")
tree <- pulltreedata.table(td, "phy")

## -----------------------------------------------------------------------------
df

## -----------------------------------------------------------------------------
tree

