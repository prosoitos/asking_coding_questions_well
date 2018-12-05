## * Packages
## always a good practice to load all the packages at the top of a script

library(tidyverse)
library(magrittr)
library(here)
library(anonymizer)

## * Making a reproducible example

tbl <- read_csv(here("data_long.csv"))

tbl

## Imagine that you want to get the total across the whole season for each species.
## This is what you do:

tbl %>%
  group_by(species) %>%
  summarise(sum())

## Oh no...
## You cannot understand why this is not working, so you decide to post a question on the RStudio Community website.

## ** The reprex package

## Here comes the package "reprex", with its main function "reprex".
## You probably don't want to have "library(reprex)" in your script since
## reprex() is not a function that you want to run every time you run your script
## This is equivalent to looking at the help file of a function with "?"
## These things are better run in the console.
## But you can use "reprex::reprex()" which allows to run the function reprex()
## without loading the package reprex.
## Note that the first "reprex" refers to the package, the second to the function

## To use it, copy the code to your clipboard

tbl %>%
  group_by(species) %>%
  summarise(sum())

## then run reprex::reprex()

## Oh no... The pipe is not recognized
## Why? You have to load the libraries in your reprex. Let us try again.
## Copy this:

library(tidyverse)

tbl %>%
  group_by(species) %>%
  summarise(sum())

## and run reprex::reprex()

## Uh oh... we also need to load the data...
## without the data, the code cannot be run.

## ** How to provide data for a reprex

## *** Using dput()

## Do not upload a .csv file nor a .rds object somewhere on the web to be downloaded. People hate downloading stuff and it is likely that you will not get help or be asked to produce a reprex instead...
## On Stack Overflow, this might even cost you some downvotes

dput(tbl)

dat <- structure(
  list(
    date = structure(
      c(17604, 17605, 17606, 17607, 
        17609, 17610, 17611, 17612, 17613, 17614, 17615, 17616, 17617, 
        17618, 17619, 17620, 17621, 17622, 17623, 17624, 17625, 17626, 
        17628, 17629, 17630, 17631, 17632, 17633, 17634, 17635, 17636, 
        17637, 17638, 17639, 17640, 17642, 17643, 17644, 17645, 17647, 
        17648, 17649, 17650, 17651, 17604, 17605, 17606, 17607, 17609, 
        17610, 17611, 17612, 17613, 17614, 17615, 17616, 17617, 17618, 
        17619, 17620, 17621, 17622, 17623, 17624, 17625, 17626, 17628, 
        17629, 17630, 17631, 17632, 17633, 17634, 17635, 17636, 17637, 
        17638, 17639, 17640, 17642, 17643, 17644, 17645, 17647, 17648, 
        17649, 17650, 17651, 17604, 17605, 17606, 17607, 17609, 17610, 
        17611, 17612, 17613, 17614, 17615, 17616, 17617, 17618, 17619, 
        17620, 17621, 17622, 17623, 17624, 17625, 17626, 17628, 17629, 
        17630, 17631, 17632, 17633, 17634, 17635, 17636, 17637, 17638, 
        17639, 17640, 17642, 17643, 17644, 17645, 17647, 17648, 17649, 
        17650, 17651, 17604, 17605, 17606, 17607, 17609, 17610, 17611, 
        17612, 17613, 17614, 17615, 17616, 17617, 17618, 17619, 17620, 
        17621, 17622, 17623, 17624, 17625, 17626, 17628, 17629, 17630, 
        17631, 17632, 17633, 17634, 17635, 17636, 17637, 17638, 17639, 
        17640, 17642, 17643, 17644, 17645, 17647, 17648, 17649, 17650, 
        17651, 17604, 17605, 17606, 17607, 17609, 17610, 17611, 17612, 
        17613, 17614, 17615, 17616, 17617, 17618, 17619, 17620, 17621, 
        17622, 17623, 17624, 17625, 17626, 17628, 17629, 17630, 17631, 
        17632, 17633, 17634, 17635, 17636, 17637, 17638, 17639, 17640, 
        17642, 17643, 17644, 17645, 17647, 17648, 17649, 17650, 17651
        ), class = "Date"),
    species = c(
      "big_eared_fish", "big_eared_fish", 
      "big_eared_fish", "big_eared_fish", "big_eared_fish", "big_eared_fish", 
      "big_eared_fish", "big_eared_fish", "big_eared_fish", "big_eared_fish", 
      "big_eared_fish", "big_eared_fish", "big_eared_fish", "big_eared_fish", 
      "big_eared_fish", "big_eared_fish", "big_eared_fish", "big_eared_fish", 
      "big_eared_fish", "big_eared_fish", "big_eared_fish", "big_eared_fish", 
      "big_eared_fish", "big_eared_fish", "big_eared_fish", "big_eared_fish", 
      "big_eared_fish", "big_eared_fish", "big_eared_fish", "big_eared_fish", 
      "big_eared_fish", "big_eared_fish", "big_eared_fish", "big_eared_fish", 
      "big_eared_fish", "big_eared_fish", "big_eared_fish", "big_eared_fish", 
      "big_eared_fish", "big_eared_fish", "big_eared_fish", "big_eared_fish", 
      "big_eared_fish", "big_eared_fish", "bigfoot", "bigfoot", "bigfoot", 
      "bigfoot", "bigfoot", "bigfoot", "bigfoot", "bigfoot", "bigfoot", 
      "bigfoot", "bigfoot", "bigfoot", "bigfoot", "bigfoot", "bigfoot", 
      "bigfoot", "bigfoot", "bigfoot", "bigfoot", "bigfoot", "bigfoot", 
      "bigfoot", "bigfoot", "bigfoot", "bigfoot", "bigfoot", "bigfoot", 
      "bigfoot", "bigfoot", "bigfoot", "bigfoot", "bigfoot", "bigfoot", 
      "bigfoot", "bigfoot", "bigfoot", "bigfoot", "bigfoot", "bigfoot", 
      "bigfoot", "bigfoot", "bigfoot", "bigfoot", "bigfoot", "long_nosed_bird", 
      "long_nosed_bird", "long_nosed_bird", "long_nosed_bird", "long_nosed_bird", 
      "long_nosed_bird", "long_nosed_bird", "long_nosed_bird", "long_nosed_bird", 
      "long_nosed_bird", "long_nosed_bird", "long_nosed_bird", "long_nosed_bird", 
      "long_nosed_bird", "long_nosed_bird", "long_nosed_bird", "long_nosed_bird", 
      "long_nosed_bird", "long_nosed_bird", "long_nosed_bird", "long_nosed_bird", 
      "long_nosed_bird", "long_nosed_bird", "long_nosed_bird", "long_nosed_bird", 
      "long_nosed_bird", "long_nosed_bird", "long_nosed_bird", "long_nosed_bird", 
      "long_nosed_bird", "long_nosed_bird", "long_nosed_bird", "long_nosed_bird", 
      "long_nosed_bird", "long_nosed_bird", "long_nosed_bird", "long_nosed_bird", 
      "long_nosed_bird", "long_nosed_bird", "long_nosed_bird", "long_nosed_bird", 
      "long_nosed_bird", "long_nosed_bird", "long_nosed_bird", "long_toed_rat", 
      "long_toed_rat", "long_toed_rat", "long_toed_rat", "long_toed_rat", 
      "long_toed_rat", "long_toed_rat", "long_toed_rat", "long_toed_rat", 
      "long_toed_rat", "long_toed_rat", "long_toed_rat", "long_toed_rat", 
      "long_toed_rat", "long_toed_rat", "long_toed_rat", "long_toed_rat", 
      "long_toed_rat", "long_toed_rat", "long_toed_rat", "long_toed_rat", 
      "long_toed_rat", "long_toed_rat", "long_toed_rat", "long_toed_rat", 
      "long_toed_rat", "long_toed_rat", "long_toed_rat", "long_toed_rat", 
      "long_toed_rat", "long_toed_rat", "long_toed_rat", "long_toed_rat", 
      "long_toed_rat", "long_toed_rat", "long_toed_rat", "long_toed_rat", 
      "long_toed_rat", "long_toed_rat", "long_toed_rat", "long_toed_rat", 
      "long_toed_rat", "long_toed_rat", "long_toed_rat", "thick_furred_rabbit", 
      "thick_furred_rabbit", "thick_furred_rabbit", "thick_furred_rabbit", 
      "thick_furred_rabbit", "thick_furred_rabbit", "thick_furred_rabbit", 
      "thick_furred_rabbit", "thick_furred_rabbit", "thick_furred_rabbit", 
      "thick_furred_rabbit", "thick_furred_rabbit", "thick_furred_rabbit", 
      "thick_furred_rabbit", "thick_furred_rabbit", "thick_furred_rabbit", 
      "thick_furred_rabbit", "thick_furred_rabbit", "thick_furred_rabbit", 
      "thick_furred_rabbit", "thick_furred_rabbit", "thick_furred_rabbit", 
      "thick_furred_rabbit", "thick_furred_rabbit", "thick_furred_rabbit", 
      "thick_furred_rabbit", "thick_furred_rabbit", "thick_furred_rabbit", 
      "thick_furred_rabbit", "thick_furred_rabbit", "thick_furred_rabbit", 
      "thick_furred_rabbit", "thick_furred_rabbit", "thick_furred_rabbit", 
      "thick_furred_rabbit", "thick_furred_rabbit", "thick_furred_rabbit", 
      "thick_furred_rabbit", "thick_furred_rabbit", "thick_furred_rabbit", 
      "thick_furred_rabbit", "thick_furred_rabbit", "thick_furred_rabbit", 
      "thick_furred_rabbit"),
    abundance = c(
      5, 8, 11, 7, 11, 10, 11, 
      10, 7, 9, 8, 6, 7, 7, 8, 10, 6, 6, 8, 5, 8, 5, 12, 6, 8, 8, 12, 
      6, 9, 2, 7, 15, 7, 10, 7, 8, 5, 8, 6, 12, 6, 10, 4, 11, 1, 0, 
      1, 0, 1, 0, 0, 0, 0, 0, 1, 1, 1, 0, 1, 1, 1, 1, 0, 1, 1, 1, 0, 
      0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 1, 1, 1, 1, 0, 1, 1, 0, 1, 1, 
      1, 2, 2, 1, 2, 3, 1, 1, 2, 2, 1, 1, 2, 3, 1, 1, 2, 3, 3, 1, 2, 
      4, 2, 1, 2, 3, 1, 1, 2, 1, 1, 2, 1, 1, 3, 3, 3, 1, 1, 2, 2, 2, 
      2, 1, 17, 10, 14, 4, 11, 10, 11, 7, 5, 8, 9, 9, 10, 11, 16, 6, 
      8, 9, 12, 15, 13, 11, 10, 11, 4, 7, 9, 4, 8, 10, 7, 16, 11, 10, 
      11, 16, 8, 7, 9, 15, 4, 8, 10, 12, 34, 34, 29, 37, 27, 34, 30, 
      28, 30, 31, 31, 34, 24, 30, 33, 29, 27, 28, 34, 32, 21, 33, 32, 
      34, 39, 33, 28, 24, 36, 26, 30, 34, 32, 39, 33, 25, 31, 31, 35, 
      23, 33, 31, 27, 35)),
  class = c("tbl_df", "tbl", "data.frame"),
  row.names = c(NA, -220L),
  spec = structure(
    list(cols = list(date = structure(
      list(format = ""),
      class = c("collector_date", "collector")),
      species = structure(list(), class = c("collector_character", "collector")),
      abundance = structure(list(), class = c("collector_double", 
                                              "collector"))),
      default = structure(list(), class = c("collector_guess", "collector"))),
    class = "col_spec")
)

dat

all.equal(tbl, dat)

## It works. But good luck not getting any downvotes posting a question on Stack Overflow that would include this code though...

## *** Removing as much as possible from the data before using dput()

## Remember what our problem was:

tbl %>%
  group_by(species) %>%
  summarise(sum())

## We probably do not need the whole tibble to reproduce the problem.

## Exercise: remove as much from the data as possible and simplify the names as much as possible while keeping the problem. Remember to use the dplyr cheatsheet or Chapter 5 "Data transformation" from "R for data science" if you need.

min_tbl <- tbl

## simplify names

min_tbl$species <- rep(letters[1:5], each = 44)

min_tbl

## select only 3 species and 2 rows per species and get rid of the date variable

min_tbl %<>%
  select(- 1) %>% 
  filter(species %in% letters[1:3]) %>% 
  group_by(species) %>%
  slice(1:2) %>%
  ungroup()

min_tbl

## Let us see if our problem is still there:

min_tbl %>%
  group_by(species) %>%
  summarise(sum())

## Yes. Good. So now, we can use dput() and it will not look as crazy.

## Exercise: use dput() and reprex::reprex() to prepare a question ready to post on the RStudio Community forum.

## First run this in the console to get the output

dput(min_tbl)

min_dat <- structure(
  list(species = c("a", "a", "b", "b", "c", "c"),
       abundance = c(5, 8, 1, 0, 1, 2)),
  class = c("tbl_df", "tbl", "data.frame"),
  row.names = c(NA, -6L), spec = structure(list(cols = list(date = structure(list(format = ""), class = c("collector_date", "collector")), species = structure(list(), class = c("collector_character", "collector")), abundance = structure(list(), class = c("collector_double", "collector"))), default = structure(list(), class = c("collector_guess", "collector"))), class = "col_spec"))

min_dat

all.equal(min_tbl, min_dat)

## Then copy the code below and run reprex::reprex() in the console 

library(tidyverse)

min_dat <- structure(
  list(species = c("a", "a", "b", "b", "c", "c"),
       abundance = c(5, 8, 1, 0, 1, 2)),
  class = c("tbl_df", "tbl", "data.frame"),
  row.names = c(NA, -6L), spec = structure(list(cols = list(date = structure(list(format = ""), class = c("collector_date", "collector")), species = structure(list(), class = c("collector_character", "collector")), abundance = structure(list(), class = c("collector_double", "collector"))), default = structure(list(), class = c("collector_guess", "collector"))), class = "col_spec"))

min_dat %>%
  group_by(species) %>%
  summarise(sum())

## Hooray. Now you can paste this directly into the RStudio Community forum or any other website which accepts markdown markup. For Stack Overflow, instead of reprex::reprex(), use reprex::reprex(venue = "so").

## *** Creating data

## You might want to simply create fake data instead of using bits of your actual data. Sometimes this is faster and simpler.

## Exercise: create a new tibble similar to the data tibble from scratch.
## Hint: functions very useful to create toy dtasets include: sample(), rep(), and rnorm(). And use google when you do not know how to do something.

dat <- tibble(
  species = rep(letters[1:3], each = 2),
  abundance = sample(0:10, 6, replace = T)
)

## Let's make sure this reproduces our problem

dat %>%
  group_by(species) %>%
  summarise(sum())

## Good.

## Exercise: write a reprex using this method of producing the data.

library(tidyverse)

dat <- tibble(
  species = rep(letters[1:3], each = 2),
  abundance = sample(0:10, 6, replace = T)
)

dat %>%
  group_by(species) %>%
  summarise(sum())

## Exercise: look at the dplyr cheatsheet and find out why our code is not working.

dat %>%
  group_by(species) %>%
  summarise(sum(abundance))

## ** Anonymising data

## Let's imagine now that our data contains sensitive information. This can be personal information, government data, etc. Or maybe we simply do not wish to make our data useable when we post it along with our paper or while we ask for help. We can anonymize the data ourselves as we just did by renaming the species ourselves. But when lots of data has to be anonymized, this can be very tedious. 

## Exercise: look at the package anonymizer and try to anonymize the column "species" of our "tbl" tibble.

tbl_anonym <- tbl

tbl_anonym$species %<>% anonymize(.algo = "crc32")

table(tbl$species)

table(tbl_anonym$species)

unique(tbl$species)

unique(tbl_anonym$species)
