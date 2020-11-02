# =====================================================================
# Welcome to the UCLA Collaboratory Intro to R course. 
# =====================================================================

# R is one of the most commonly used and powerful statistical 
# programming languages and is used to analyze and manipulate 
# data for virtually every professional industry. Over the last 
# 10 years, powerful new tools within R have emerged to make data 
# manipulation and visualization an easier and more accessible 
# process. R is an open source software which means that it will 
# remain freely available to those who need to use it, but also
# may change its capabilities and improve over time. 

# How does R work?

# R reads your data (e.g., from an excel or text file) and makes 
# an image of it, which is stored in temporary memory. When you 
# edit your data, you are only editing an image of it; the original 
# dataset is unaffected.  You can then create and alter the datasets 
# within R, which can then be written back to a permanent file. 
# This is called 'nondestructive editing'. You can also create 
# objects (like matrices) from directly within R, as opposed to 
# reading them in from a file.

# R can do almost anything you can think of doing with your data, 
# which greatly expands the amount of creativity you can apply to 
# your analyses. By using scripts (".R" files, such as this one), 
# you can keep a record of everything you've done to manipulate and 
# analyze your data. Those benefit you later, and can be published 
# or shared with colleagues.

# This course is designed for learners who have little to no experience 
# with R programming, but want to learn. Over the course of this three 
# day workshop we will cover the topics described below. 

## Day1: Introduction to R Studio, how to find help, Rstudio cheat 
## sheets, installing packages, loading libraries, data structures 
## and classes, importing data, examining data sets.

## Day2: Filtering, selecting and calculating columns with tidyr and dplyr, 
## grammar of graphics in ggplot, basic data visualization with ggplot2.

## Day3: R markdown basics. More data visualization with ggplot2, peer learning
## activities, writing and presenting reports.

# Take notes and annotate within this document by using the hashtag / pound #
# symbol

# =====================================================================
# Day 1.1: The layout, soft-wrapped code, and saving files
# =====================================================================

# The initial phases of this course will move slowly to be sure that 
# everyone's machines are working properly for the lessons to come. 
# Once Rstudio is open the first thing to do is take a look around the 
# user interface. 

# In RStudio's default setting, the left side is the terminal. Once you 
# open an R source file, codes and scripts are displayed in the top 
# left hand corner. The bottom left remains as is the terminal where 
# code can be typed or copied. 

# The top right is the "Global Environment" which is where information
# about objects and variables is stored. 

# The bottom right panel is arguably the most important panel: take a 
# look at the series of tabs. The 'Files' tab can be used to navigate 
# and set directories. The 'Plots' tab is where generated plots will 
# show up. The 'Packages' tab shows which R packages are installed in 
# your environment. The 'Help' tab is where to search for usage 
# information for R commands that are currently installed. The 'Viewer' 
# tab is for viewing local web content or web-based graphics.

# There is certainly plenty to explore in the Rspace. There are some 
# global options that you may want to review before beginning. First, 
# allowing for 'soft-wrap' will make it significantly easier to view 
# code in the top left window. To change this setting, go to the 'Tools' 
# menu, and select "Global Options" this should open a new window with 
# many options. Under the 'Code' tab, there will be a box that says 
# "soft-wrap R source files". Select that box, if it is not already 
# selected.

# Creating new R projects, R source files, and R markdown documents.
# (look for the + at the top left)




# =====================================================================
# Day 1.2: Installing and loading packages
# =====================================================================

# Almost all R programming will require loading or installing specific 
# R packages in order to execute particular functions. For the purposes 
# of this workshop we will need to use several packages. In order to do 
# that you must use the 'install.packages()' command. 

# The packages: 
# tidyr
# dplyr
# tibble
# RColorBrewer
# ggplot2
# lubridate

install.packages('tidyr') 

# In order to run code from an Rsource file, go to the line or highlight
# the code that you want to run and hit Command/Control + Return. This 
# will execute the line(s) of code in the console. Install the rest of 
# the packages listed above. Notice if you get any warning or error messages. 

# Packages are bits of code that are built in order to perform specific tasks
# in R. For example: the tidyr, dplyr and tibblle packages are built organize 
# and clean data that you are working with. The packages ggplot2 and RColorBrewer 
# are used for data visualization and color blending. The lubridate package is
# used for working with dates and times when plotting. Eeach of these will 
# will come in handy by the end of the workshop.

# Once packages are installed you can see them listed under the 'Packages' 
# tab in the bottom right hand panel. In order to use the installed 
# packages, they need to be loaded in the R session. To do this use the 
# 'library()' command. See examples below.

library('tidyr')
library('RColorBrewer')
library('ggplot2')
library('dplyr')
library('tibble')
library('lubridate')

# Use the library() command for all the packages you just installed. 
# Notice any errors or warnings.

# =====================================================================
# Day 1.3: Finding Help
# =====================================================================

# There are a lot of options when it comes to finding help in R. 
# The quickest way is to go to the bottom right hand corner under 
# the 'Help' tab and use the search box to search the commands you 
# need help with. We will practice this as we start working with code.

# Sadly, the documentation for some packages in R is absolutely 
# horrific and unintelligible. So our next best friend is the internet. 
# But before going into the abyss - a good place to start are the 
# RStudio cheat-sheets. These cheat sheets are made for some of the most 
# commonly used and useful packages in R and they outline the command 
# options and syntax for those packages. For this particular workshop 
# I recommend a few listed below:

# data import: 
# https://evoldyn.gitlab.io/evomics-2018/ref-sheets/R_data-import.pdf
# data transformation: 
# https://4.files.edl.io/b9e2/07/12/19/142839-a23788fb-1d3a-4665-9dc4-33bfd442c296.pdf
# data visuualization with ggplot2: 
# https://rstudio.com/wp-content/uploads/2015/03/ggplot2-cheatsheet.pdf

# RStudio has created a bunch of these cheat sheets and they can all 
# be accessed using RStudio Cloud or by searching RStudio cheat sheets. 
# There is no need to look at these in detail during the workshop - the 
# relevant commands will be provided through instruction. However, I highly
# recommend reviewing these cheat sheets to see the breadth of capabilities
# of RStudio's selected packages at some point.

# Otherwise, a large majority of data wrangling and visualization questions
# have been asked or discussed on various forums. One strategy is to just 
# describe what you are trying to do in the google search bar and see if any 
# forums pop up. Common forums include 'StackOverflow', 'R-bloggers' and for 
# the life sciences 'Biostars'.

# Before we begin, lets take a moment to do some jargon busting. 

# =====================================================================
# Day 1.4: Importing Data
# =====================================================================

# ---------------------------------------------------------------------
# The working directory
# ---------------------------------------------------------------------

# Similar to other command-line operations, setting the working directory 
# simplifies importing and exporting data. When you ask R to import (read) 
# a file, or export (write) a file, it will point automatically to the 
# working directory, so you don't have to type in a directory path.

# To see what directory you are currently in type getwd().



# The easiest way to set the directory is by navigating to the folder of 
# interest in the 'Files' tab on the bottom right and then click on 'More' 
# which allows you to set the working directory, or return to the current 
# working directory.

# NOTE: you can use the command setwd() to set the working directory to any 
# other file path you want. The "~" points to your current directory. When 
# in doubt, type the full file path instead of "~".



# To see the contents of the working directory type dir()



# ---------------------------------------------------------------------
# Importing Data
# ---------------------------------------------------------------------

# In order to work with data in R it needs to be imported from an outside 
# source. There are some data sets bulit into R, but In a typical resaerch 
# workflow this will come from a dataset that you create, or one that you 
# find in a publicly available database. 

# For this particular lesson we will pick apart some health related data. 
# In this case we will import a few different data sets. The first is a
# table of state population information that I made in Excel and I saved 
# as a CSV. The second is a data set that was deposited in Kaggle of COVID
# data that was collected by the COVD19 data project and used by the New
# York Times. I've downloaded the data set so that we can import it.
# The third data set is sourced from the Tidy Tuesday community looking
# at measles vaccination rate at schools across the country. We are going
# to use these data sets to learn about the functionality of R, and ask
# some basic public health questions throughout this lesson. 

# --------------------------------------------------------------------- 
# Import data from a local directory
# ---------------------------------------------------------------------

# For this lesson our goal is to work with some of our imported data to
# create some visualizations for the information that we are working with. 
# We will import some public COVID19 data along with some information about 
# state populations. We will use some data manipulation, cleaning and 
# visualization tools in order to plot the number of cases of COVID19 
# recorded per million people for every US state and major territories. 

# Move into the 'Data' folder within this directory. 

setwd("~/Path/To/Working/Directory/200623-IntroToR/Day1/Data")

# Now we're going to load our first data set into R. The base R 
# command for reading a table is the read.table() command. We can read 
# the table into an object using the assignment "<-" operator. 

StatePop <- read.table("States.csv", header = TRUE, sep = ",")

# The read.csv() and read.csv2() commands can also be used for importing 
# this data. Look at the documentation for read.table(). Notice the syntax,
# or the way the code is written. There are 3 arguments in this command
# separated by commas. First we tell the command which file we are loading
# written in quotations, second we indicate that the file contains headers,
# in this case, variable names, and last we indicate the separator.

# Using this example we can analyze the contents of the table that was imported 
# using the View() command. You can either click on your new data frame in the 
# global environment or type View(dataframe) to see it. 


View(StatePop)


# There are a lot of strategies that can be used to assign variable/object
# names. Generally it is best-practice to assign things with names that are 
# short, but descriptive and without spaces. Here are some example naming 
# conventions

# YouCanNameThingsLikeThis
# maybelikethis
# or.like.this
# even_like_this
# but-not-like-this (the dash is also used for subtraction)
# 4nor_likeThis (numbers are okay to use, but only at the end)

# Lets load in our other data sets. In this case, we have the NYT COVID data
# set. We can see in our working directory that there is a csv file called
# "us_states_covid19_daily.csv". Use the read.csv command and the assignment
# operator <- to assign it to a variable.

CovidData <- read.csv("us_states_covid19_daily.csv", header = TRUE, sep = ",")



# --------------------------------------------------------------------- 
# Import data from an online directory
# ---------------------------------------------------------------------

# Another common mechanism to load data into R is by directly using the
# path for an online directory. In this case we will be using a dataset
# from a dataset collected by the TidyTuesday community. If you are looking
# to get some extra practice in R after this, I recommend checking out their
# data sets, or attending a TidyTuesday event. For more info check out:
# https://github.com/rfordatascience/tidytuesday

# Lets load in the measles vaccination dataset You can find more info about
# the data set by following this url:
# https://github.com/rfordatascience/tidytuesday/blob/master/data/2020/2020-02-25/readme.md

# The data set itself can be loaded like a CSV file using the read.csv command by 
# replacing the file-type with the following URL: 
# https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-02-25/measles.csv

# Give it a try. 

MMRVaccineRate <- read.csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-02-25/measles.csv', header = TRUE, sep = ",")


# --------------------------------------------------------------------- 
# Understanding your data set
# ---------------------------------------------------------------------

# There are a lot of ways to see your data set, and depending on the 
# number of columns, or rows that you have, you might want to use one
# or more strategies. You can use head(dataframe) to see the top of 
# a long data set, use tail(dataframe) to see the bottom of the data set. 
# Try it out.



# You can also look at the 'class' of the data. This is very important 
# because different commands are often designed to work with specific 
# classes of data. In this case the class of data we are working with so
# far is dataframes. Use the class() command on the objects stored in our
# global environment and you can see. 

class(StatePop)
class(MMRVaccineRate)
class(CovidData)

# When performing computation and manipulation of data, R recognizes several
# classes of data. Characters are strings of alphanumeric charaters and when 
# read by R are, need to have "quotations" around them. There are also integers
# and numerics, which are different classifications of numbers. The last we will 
# discus are logicals which are TRUE / FALSE designations, which are very useful 
# for filtering or selecting data. 

# The classification is important because some operations can only function 
# when the classifications match, or are of a particular type. You can change
# classifications using base R commands such as:

# as.character() - interprets object as character class
# as.integer() - interprets object as whole-number integer class
# as.numeric() - interprets object as decimal number class
# as.logical() - interprets object as logical (TRUE/FALSE) value

# You can examine the class of specific columns in the data by using the 
# dataframe$column syntax. Try using the auto-complete feature here.

class(StatePop$State)
class(MMRVaccineRate$city)
class(CovidData$positive)

# Check the class of some other columns and type them in here.




# Variables in R are case sensitive, the most common reason why code does not 
# work is because there is a typo in the code that prevents R from recognizing
# what it is being tasked to do.

# You can use specific commands to take a look at the different column and 
# rownames within various data sets. 

colnames(MMRVaccineRate)
rownames(SelectedPops)

# Protip: You can think of the different variables within a data frame as
# 'vectors' which is essentially a list of any of the object classes described
# above. R works very efficiently with vectors in order to perform its functions
# of both character and numeric manipulaltions. Be sure to check the class of data
# that you are working with is compatibile with the class of data commands ask 
# for. This is another common source for errors. 


# ---------------------------------------------------------------------
# Cleaning Data with Dplyr
# ---------------------------------------------------------------------

# The easiest way to start working with and clean data frames is with the 
# dplyr and tidyr packages. These packages offers a wide variety commands to 
# filter and clean data frames in order to make data sets more manageable to work
# with and visualize. We loaded them earlier so we can get started using them.

# We can use the select() command to select specific columns from any table.

StatePop <- select(StatePop, State, StateAbbreviation, Pop.millions)

# Notice that in the Global Environment, SelectedPops only has 3 variables 
# instead of 25. Those are the columns that we picked. 

# We can use the filter() command to pick on specific rows characteristics.

VaccineCA <- filter(MMRVaccineRate, state == "California")

# Protip: Keep an eye on the observations and variables as you process 
# through your data. This can help keep track of what is happening to the 
# shape of your data. When you have lots of variables you have a wide data 
# set. When you have lots of observations you have a longer data set. The 
# data needs to be shaped in different ways for different data visualization 
# packages.

# Removing items from your Global Environment. If you are working with a 
# lot of different objects in the global environment it may be helpful to 
# periodically view or clear it out. To list everything your global 
# environment use ls(), to clear out individual objects use rm(). To clear 
# the whole global environment use rm(list=ls()). Or click on the little
# broom next to "Import Dataset" in the Global environment.

# ---------------------------------------------------------------------
# Test what you learned
# ---------------------------------------------------------------------

# For our example research question we want to find a way to visualize the 
# number of cases-per-million of COVID19 for every state in the US. We need to 
# import some COVID19 data for analysis. 

# How many observations and variables are there in the full 'CovidData' data set? 




# What variables do you see in the Covid Data table? Use colnames() to call up 
# the list of all the column names.




# Our next step will be to merge two tables together take a look at the states
# table and the CovidData table. To do that, we will need to designate a column
# with common values. Which two columns are the same between the two data frames?



# In your own practice you will most likely have to create vectors and dataframes
# and rename columns to make your work easier. Keep in mind that when you name
# columns or vectors make sure that there is enough information for the name 
# to be useful. If you have to share or troubleshoot your work someone else 
# might have to look through the code and make sense of it. Same thing with 
# loading data sets, knowing what the variables mean within data sets can help 
# inform how you interpret the information. Likewise, looking at the full 
# context of the research ultimately helps determine how the data can be 
# interpreted. Failing to understand the full context of the data you are 
# using for an analysis can lead to very significant real-world consequences 
# (see book recommendations below)


# ---------------------------------------------------------------------
# Recommended Reading
# ---------------------------------------------------------------------

# Weapons of Math Destruction by Cathy O' Neil
# Algorithms of Oppression by Safiya Noble

# Also take a look at the data transformation with dplyr cheat sheet:
# https://4.files.edl.io/b9e2/07/12/19/142839-a23788fb-1d3a-4665-9dc4-33bfd442c296.pdf

# The sections 'Manipulate Cases', 'Manipulate Variables', and 'Combine Tables'
# will come in handy tomorrow. We will be using mutate commands to quickly calculate
# new columns of data. We will be using Join commands to merge tables.
# Take a look at the syntax and write your questions about usage here.




# =====================================================================
# Day 2.1: More data wrangling with dplyr
# =====================================================================

# The term 'data wrangling' describes the process of reshaping data into 
# forms that are more readily useful for visualization. This could be taking 
# raw data and performing some form of quantification or computation. 
# This could be merging data sets, pivoting data sets, selecting or 
# subsetting data, mutating data to create new columns, and summarizing 
# data in some way. In this section we will explore some common and 
# powerful data wrangling tools. For more information on different 
# operations that can be used check out the RStudio data transformation 
# cheat sheets using dplyr() and tidyr(). 

CovidData <- read.csv("us_states_covid19_daily.csv", header = TRUE, sep = ",")

StatePop <- read.table("States.csv", header = TRUE, sep = ",")
StatePop <- select(StatePop, State, StateAbbreviation, Pop.millions)

# ---------------------------------------------------------------------
# Merging Tables
# ---------------------------------------------------------------------

# In order to carry forward with our analysis, we need to reorganize 
# the data in a way that aligns the state population information with 
# the number of positive cases. In order for R to merge tables - they 
# need to have some level of overlapping information so that it knows 
# how to align the tables. In this case we are going to match columns
# based on the state information. We can use the dplyr full_join() 
# command in order to bring the tables together and use the "by =" to 
# tell it what columns should be treated as equivalent.

CovidStateData <- left_join(StatePop, CovidData, by = c("StateAbbreviation"="state"))

# Notice how the tables merge together. Did it work? How did this operation 
# merge the tables? 



# Check the documentation to see examples of arguments and syntax for 
# the command. What happens if we use inner_join() instead of left_join()? 
# What about right_join() or full_join()? What are the differences that 
# you observe?





# ---------------------------------------------------------------------
# Using pipes in dplyr
# ---------------------------------------------------------------------

# Pipes are operators that can be used to string together commands in dplyr. 
# They looks like this %>%. Using pipes enables stringing together multiple 
# dplyr operations in one step. Notice the syntax of this example. Organizing 
# the code in this way can help with readability of the code.

NewDataFrame <- OldDataFrame %>%
  Select(col1, col2, col3) %>% # select columns from OldDataFrame
  group_by(col3) %>% # group by the information contained in col3
  Mutate(col4 = col2 * 2) %>% # create a new col4 by multiplying col2 * 2
  Filter(col1 != "NA") # remove all rows containing NA values in col1

# For our example, we want to calculate the number of COVID cases per million
# (CPM) residents for every state in the US. When we merged the table above, 
# the state population information (in millions) aligned with the number of 
# positive COVID19 cases. 

CasesPerMillion <- CovidStateData %>%
  mutate(CPM = positive/Pop.millions) %>% 
  filter(Pop.millions != "NA")

# NA's were introduced in rows where the state population data was unavailable. 
# We can remove rows containing NA using the filter command. In this particular 
# command we use a 'relational operator'. != translates to 'is not equal to' 
# when used in the filter command. What are some other relational operators 
# used in R?




# What if we wanted to our plot to only show data from states once they reach 
# a threshold of 1 CPM. How would we rewrite the filter command to remove all
# CPM values below 1?





# =====================================================================
# Day 2.2: Plotting with ggplot2
# =====================================================================

# ggplot2 is based on what is called the 'grammar of graphics'. This is 
# the idea that you can build nearly every graph from the same components: 
# (1) a data set, (2) a coordinate system and (3) 'geoms' which are visual 
# marks that represent data points. ggplot2 is able to create a diverse set 
# of plots using these three characteristics. Here we will explore how to 
# construct a few example plots using ggplot2. For a more exhaustive list 
# of ggplot2 functions please review the ggplot2 cheat sheet linked here: 
# https://rstudio.com/wp-content/uploads/2015/03/ggplot2-cheatsheet.pdf. 

# It is worth fully exploring ggplot2 documentation. There are many 
# customizable features for each geometry making ggplot2 one of the most 
# comprehensive packages for data visualization in R. 

# First lets pull some data from an earlier step. Lets pick a state, and 
# plot a line graph using ggplot2 that shows the total number of positive 
# cases beginning on the first day of recorded COVID19 infections for 
# that state. 

InfectionGrowth <- CasesPerMillion %>%
  select(date, State = StateAbbreviation, CPM, positive, Pop.millions) 

InfectionGrowth <- InfectionGrowth %>%
  filter(Pop.millions >= 10) 

plot <- ggplot(InfectionGrowth, aes(x = ymd(date), y = positive, color = State)) + 
  geom_smooth(method = "auto") + 
  labs(x = "Date", 
       y = "Number of Positive Cases", 
       title = "Covid Cases in Large States")

plot

# This is a typical example of a plot created by ggplot. Notice the syntax 
# in the example below. Within ggplot() we define the data frame to pull 
# information from, and list the 'aesthetics' aes() or the defining 
# characteristics for the plot. Within the aesthetics the x and y variables 
# are defined, along with other measurable characteristics. The arguments 
# are linked together with a + . This allows multiple layers to be stacked 
# on top of each other to create a plot. 

# Notice that on the x variable date is within ymd(). This is a command within 
# the lubridate package. Try and create the plot without ymd() around date - 
# what happens?

# The axis titles and legends are highly customizable. My best strategy so far 
# to figure out how to customize these components has been to Google search 
# something like "how to edit axis labels ggplot". Many people have posed blogs 
# or strategies they have used to overcome various challenges. For now, notice 
# that labels are edited under labs( x = "x label", y = "y label", 
# title = "chart title")

ExamplePlot <- ggplot(DataFrame, aes(X, Y)) + 
  geom_smooth() # this geom creates a linear model


# Now try to create an identical plot looking at cases per million for the large
# instead of total cases. I've copied over the syntax of the code, now fill in 
# the variables where we see XXX to get the code to work.

CpmPlot <- ggplot(InfectionGrowth, aes(ymd(XXXX), XXX, color = XXXXX)) +
  geom_smooth(method = "auto")

CpmPlot

# This plot is a bit overwhelming - we can separate out the different states
# by using the facet_wrap command. I've copied over the syntax of the code, fill
# in the variables where we see XXX to get the code to work.

CpmPlotFacets <- ggplot(InfectionGrowth, aes(ymd(XXXX), XXX, color = XXXXX)) +
  geom_smooth(method = "auto") + 
  facet_wrap(facets = "State")

CpmPlotFacets

# It is pretty difficult to see differences in CPM growth trajectory since the states
# look so similar. Lets try to see if the number of cases per million are different
# when we compare the large states last month of data. In this case lets filter 
# the data based on date and create a violin plot to view the data. The last day of 
# recorded data in this COVID data set is on Sep 27th. Use the filter command to filter
# and geom_violin added to ggplot.

LastMonthInfections <- InfectionGrowth %>%
  filter(date >= YYYYMMDD)

CpmViolin <- ggplot(LastMonthInfections, aes(XXXXX, XXX, fill = XXXXX)) +
  geom_violin(scale = "area")+
  scale_fill_brewer(palette = "Blues")

CpmViolin



# We rarely create plots without looking at mean and standard deviation
# measurements. There are several ways to do that, but one way to do this
# is with the stat_summary function added to ggplot.

CpmViolin2 <- ggplot(LastMonthInfections, aes(XXXXX, XXX, fill = XXXXX)) +
  geom_violin(scale = "XXXX")+
  scale_fill_brewer(palette = "Blues")+
  stat_summary(fun.data = mean_sdl, fun.args = list(mult=1))+
  labs(title="Cases Per Million (30 day average)")

CpmViolin2

# The stat_summary function is one of several ways to add a mean and standard 
# deviation line. For the arguments in the stat_summary you can find them
# in the help area, or through a Google search of the type of lines you want
# to add. In this case: "fun.data = mean_sdl" generates the information 
# needed to plot the mean and standard deviation; "fun.args = list(mult=1)" 
# relates to the standard deviation multiplier. In our plot we have a mean
# plus/minus one standard deviation.


# ---------------------------------------------------------------------
# Reflections and Connections
# ---------------------------------------------------------------------

# Look into the documentation for geom_smooth() look at the usage. 
# What does the method parameter do? What happens when you create 
# lines with different methods? What do these lines mean?



# Look into the documentation for geom_violin() what does the scale
# parameter do? 



# Look at the ggplot2 cheatsheet. If you wanted to add a dotplot on
# top of the violin plot, how might you do it?



# =====================================================================
# Day 2.3: Performing Basic Statistics in R
# =====================================================================

# We have gotten a taste of what R can do in data visualization. We 
# have plots and can see the mean values and their standard deviations.
# Now the question is how do we know that the different states are 
# significantly different? Using our data tables from before lets perform
# some t-tests to see if we can see significant differences between the 
# number of cases per million between two of the states we looked at 
# in the violin plot. For example, let's compare Florida and California.

# Using the filter command create a data frame with the last month of
# positive cases per million totals for CA and FL.

CAcases <- LastMonthInfections %>%
  filter(State == "CA")

FLcases <- LastMonthInfections %>%
  filter(State =="FL")

# Use the t.test() function in order to compare the CPM columns like this:

t.test(CAcases$CPM, FLcases$CPM)


# Florida and California are qualitatively different. This we can actually see
# on the plots that we created before. However, Ohio and Pennsylvania look
# much more similar. Using the same approach, test to see if they are significantly
# different. I've copied over the code for this. Fill in the XXXXX in order to 
# get it to run

OHcases <- LastMonthInfections %>%
  XXXXXX(State == "CA")

ILcases <- LastMonthInfections %>%
  XXXXXX(State =="FL")


# ---------------------------------------------------------------------
# End of Part 1
# ---------------------------------------------------------------------


# There are many ways to do things in R, plotting is no exception. Other 
# plotting libraries that could be of interest...

# gplots - general plotting library
# plotly -  general plotting library
# leaflet - mapping library
