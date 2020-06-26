# =====================================================================
# Welcome to the UCLA Collaboratory Intro to R course. 
# =====================================================================

# R is one of the most commonly used and powerful statistical programming languages and is used to analyze and manipulate data for virtually every professional industry. Over the last 10 years, powerful new tools within R have emerged to make data manipulation and visualization an easier and more accessible process. R is an open source software which means that it's capabilities may change rapidly over time and without notice. However, it is and will remain freely available to those who need to use it. 

# R reads your data (e.g., from an excel or text file) and makes an image of it, which is stored in temporary memory. When you edit your data, you are only editing an image of it; the original dataset is unaffected.  You can then create graphs and altered datasets, which can be written back to a permanent file. This is called 'nondestructive editing'. You can also create objects (like matrices) from directly within R, as opposed to reading them in from a file.

# R can do almost anything you can think of doing with your data, which greatly expands the amount of creativity you can apply to your analyses. By using scripts (".R" files, such as this one), you can keep a record of everything you've done to manipulate and analyze your data. Those benefit you later, and can be published or shared with colleagues.

# This course is designed for learners who have little to no experience with R programming, but want to learn. Over the course of this three day workshop we will cover the topics described below. 

## Day1: Introduction to R Studio, how to find help, Rstudio cheat sheets, installing packages, loading libraries, data structures and classes, importing data.
## Day2: Examining bias in data sets, data wrangling with tidyr and dplyr, data visualization with pheatmap, data visualization with ggplot2.
## Day3: Data visualization with ggplot2, peer learning activities, writing and presenting reports.

# Take notes and annotate within this document by using the hashtag / # symbol

# =====================================================================
# Day 1.1: The layout, soft-wrapped code, and saving files
# =====================================================================

# The initial phases of this course will move slowly to be sure that everyone's machines are working properly for the lessons to come. Once Rstuio is open the first thing to do is take a look around the user interface. 

# In RStudio's default setting, the left side is the terminal. Once you open an R source file, codes and scripts are displayed in the top left hand corner. The bottom left remains as is the terminal where code can be typed or copied. 

# The top right is the "Global Environment" which is where information about objects and variables is stored. 

# The bottom right panel is arguably the most important panel: take a look at the series of tabs. The 'Files' tab can be used to navigate and set directories. The 'Plots' tab is where generated plots will show up. The 'Packages' tab shows which R packages are installed in your environment. The 'Help' tab is where to search for usage information for R commands that are currently installed. The 'Viewer' tab is for viewing local web content or web-based graphics designed in R.

# There is certainly plenty to exlore in the Rspace. There are some global options that you may want to review before beginning. First, allowing for 'soft-wrap' will make it significantly easier to view code in the top left window. To change this setting, go to the 'Tools' menu, and select "Global Options" this should open a new window with many options. Under the 'Code' tab, there should be a checkable box that says "soft-wrap R source files". Select that box, if it is not already selected.

# Creating new R projects, R source files, and R markdown documents.




# =====================================================================
# Day 1.2: Installing and loading packages
# =====================================================================

# Almost all R programming will require loading or installing specific R packages in order to execute particular functions. For the purposes of this workshop we will need to use several packages. In order to do that you must use the 'install.packages()' command. 

# The packages: 
# tidyr
# dplyr
# pheatmap
# rcolorbrewer
# tibble
# ggplot2

install.packages('tidyr') 

# In order to run code from an Rsource file, go to the line or highlight the code that you want to run and hit Command/Control + Return. This will execute the line(s) of code in the console. Install the rest of the packages listed above. Notice if you get any warning or error messages. 



# Once packages are installed you can see them listed under the 'Packages' tab in the bottom right hand panel. In order to use the installed packages, they need to be loaded in the R session. To do this use the 'library()' command.

library('tidyr')

# Use the library() command for all the packages you just installed. Notice any errors or warnings.

# =====================================================================
# Day 1.3: Finding Help
# =====================================================================

# There are a lot of options when it comes to finding help in R. The quickest way is to go to the bottom right hand corder under the 'Help' tab and use the search box to search the commands you need help with. More on this later...

# Sadly, the documentation for some packages in R is absolutely horrific and unintelligible. So our next best friend is the internet. But before going into this vast abyss - a good place to start are the RStudio cheat-sheets. These cheat sheets are made for some of the most commonly used and useful packages in R and they outline the command options and syntac for those packages. For this particular workshop I recommend the two listed below:

# dplyr: https://4.files.edl.io/b9e2/07/12/19/142839-a23788fb-1d3a-4665-9dc4-33bfd442c296.pdf
# ggplot2:  https://rstudio.com/wp-content/uploads/2015/03/ggplot2-cheatsheet.pdf

# RStudio has created a number of these cheat sheets and they can all be accessed using RStudio Cloud or by searching RStudio cheat sheets. There is no reason to look at these in detail during the workshop - the relevant commands will be provided through instruction. However, I highly recommend reviewing these cheat sheets to see the breadth of capabilites of RStudio's selected packages.

# Otherwise, a large majority of data wrangling and visualization questions have been asked or discussed on various forums. One strategy is to just describe what you are trying to do in the google search bar and see if any forums pop up. Common forums include 'StackOverflow', 'R-bloggers' and for the computational biologists 'Biostars'.

# =====================================================================
# Day 1.4: Importing Data
# =====================================================================

# ---------------------------------------------------------------------
# The working directory
# ---------------------------------------------------------------------

# Similar to other command-line operations, setting the working directory simplifies importing and exporting data. When you ask R to import (read) a file, or export (write) a file, it will point automatically to the working directory, so you don't have to type in a directory path.

# To see what directory you are currently in type getwd().



# The easiest way to set the directory is by navigating to the folder of interest in the 'Files' tab on the bottom right and then click on 'More' which allows you to set the working directory, or return to the current working directory.

# NOTE: you can use the command setwd() to set the working directory to any other file path you want. The "~" points to your current directory. When in doubt, type the full file path instead of "~".



# To see the contents of the working directory type dir()




## Protip: Generally when starting a new project it is useful to create a folder for the project, then within that folder create an Rproj file. Whenever you open the Rproj file you will automatically be in the directory where the project is saved. You can write your R code into an R source file like the one you are reading within the same folder. If all your code data files are saved within this folder you should never have to go hunting for the correct directory, even if the folder containing the project moves to another location. 

# ---------------------------------------------------------------------
# Reading in a file as a Data Frame
# ---------------------------------------------------------------------

# For this particular lesson we will ask the question how has the number of COVID19 cases per million changed across the nation over time. We will import some public COVID19 data along with some information about state populations. We will use some data manipulation, cleaning and visualization tools in order to plot the number of cases of COVID19 recorded per million people for every US state and major territories. 

# Move into the 'Data' folder within this directory. 

setwd("~/Path/To/Working/Directory/200623-IntroToR/Day1/Data")

# Now we're going to load our data into R for analysis. The base R command for reading a table is the read.table() command. We can read the table into an object using the assignment "<-" operator. 

statepop <- read.table("States.csv", header = TRUE, sep = ",")

# The read.csv() and read.csv2() commands can also be used for importing this data. Look at the documentation for read.table(). What other commands can be used to read files?




# There are a lot of strategies that can be used to assign variable/object names. Generally it is best-practice to assign things with names that are short, but descriptive and without spaces. In this case we will be importing a table of states with some population information.

# YouCanNameThingsLikeThis
# maybelikethis
# or.like.this
# even_like_this
# but-not-like-this (the dash is also used for subtraction)
# 4nor_likeThis (numbers are okay to use but should be left for the end)

#Using this example we can analyze the contents of the table that was imported using the View() command. You can either click on your new data frame in the global environment or type View(dataframe) to see it. 

View(statepop)

# You can use head(dataframe) to see the top of the data set, use tail(dataframe) to see the bottom of the data set. Try it out.



# You can also look at the 'class' of the data. 

class(statepop)

# You can examine the class of specific columns in the data by using the dataframe$column syntax. An example is below. PC users might have issues with the statepop name. Check to see what the column name is. If it has any strange symbol run: names(statepop)[1]<-"State". This is an example of renaming using indexing. 

class(statepop$State)

# What are the classifications for the other columns?





# The classification is important because some operations can only function when the classifications match, or are of a particular type.  You can change classifications using base R commands such as:

# as.character() - interprets object as character class
# as.integer() - interprets object as whole-number integer class
# as.numeric() - interprets object as decimal number class
# as.logical() - interprets object as logical (TRUE/FALSE) value

## Protip: if you have NA values in your data set and you want those values to be ignored rm.na = TRUE can be added into a command. If you do not want to ignore NA values you can add rm.na = FALSE. This will become relevant later.

## Removing items from your Global Evironment. If you are working with a lot of different objects in the global environent it may be helpful to periodically view or clear it out. To list everything your global environment use ls(), to clear out individual objects use rm(). To clear the whole global environment use rm(list=ls()).

# ---------------------------------------------------------------------
# Reflections
# ---------------------------------------------------------------------

# Why are there X-tra columns? They don't seem to be in the original CSV file.




# ---------------------------------------------------------------------
# Cleaning Data part I
# ---------------------------------------------------------------------

# We can clean up our data frame using the data.frame() command. We can use this to create a new data frame without the columns that we don't need. For this particular exercise we only need the StateAbbreviation and the Pop.millions columns. This can serve as our list of selected populations. Here is an example

selectedpops <- data.frame(statepop$StateAbbreviation, statepop$Pop.millions)

# Notice that in the Global Environment, selectedpops only has 2 variables instead of 25. Those are the two columns that we picked. 

# Protip: Keep an eye on the observations and variables as you process through your data. This can help keep track of what is happening to the shape of your data. When you have lots of varaibles you have a wide data set. When you have lots of observations you have a longer data set. The data needs to be shaped in different ways for different data visualization packages.

# ---------------------------------------------------------------------
# Test your skillz
# ---------------------------------------------------------------------

# For our research question we want to find a way to visualize the number of cases-per-million of COVID19 for every state in the US. We need to import some COVID19 data for analysis. In this lesson we pull from data that is being updated every day by the New York Times and deposited on kaggle. Follow this link to learn more about the data set: https://www.kaggle.com/sudalairajkumar/covid19-in-usa. Within the data folder, there are three files that have been downloaded from this repository. Import the data from the us_states_covid19_daily.csv file. Create a variable called allpositivecases containg three columns: date, state, and positive.

alldata <- read.csv("us_states_covid19_daily.csv", header = TRUE, ",")
allpositivecases <- data.frame(alldata$date, alldata$state, alldata$positive)

# How many observations and variables are there in the full 'states' data set? 



# What variables do you see in the table? Use colnames(alldata) to call up the list of all the column names.




# Which ones appear interesting to you? Think about some other research questions that you might want to ask with a data set like this and write them below.



# Import the data for us_counties_covid19_daily.csv and us_covid19_daily.csv into object names of your choice. What variables are collected in these tables?



# Our next step will be to merge selectedpops with allpositivecases. To do that, we will need to designate a column with common values. Which two columns are the same between the two data frames?



# Carefully examining the structure and information that is within data is important for understanding the biases of the data sets that you are using. As a computational biologist or a data scientist, you have the power to automate tasks, rapidly analyze and visualize information. With that comes some significant responsibility. Automation of tasks can lead to very serious negative consequences if algorithms don't fully acknolwedge, and work to counter the biases and limitations of how algorithms are trained. 

# ---------------------------------------------------------------------
# Recommended Reading
# ---------------------------------------------------------------------

# Weapons of Math Destruction by Cathy O' Neil
# Algorithms of Oppression by Saphiya Noble

# =====================================================================
# Day 2.1: Data wrangling with dplyr
# =====================================================================

# The term 'data wrangling' describes the process of reshaping data into forms that are more readily useful for visualization. This could be taking raw data and performing some form of quantification or computation. This could be merging data sets, pivoting data sets, selecting or subsetting data, mutating data to create new columns, and summarizing data in some way. In this section we will explore some common and powerful data wrangling tools. For more information on different operations that can be used check out the RStudio data transformation cheat sheets using dplyr() and tidyr(). 

# ---------------------------------------------------------------------
# Merging Tables
# ---------------------------------------------------------------------

# In order to carry forward with our analysis, we need to reorganize the data in a way that aligns the state population information with the number of positive cases. In order for R to merge tables - they need to have some level of overlapping information so that it knows how to align the tables. In this case the alldata.state column in allpositivecases has information that is identical to the statepop.StateAbbreviation information. We can use the dplyr full_join() command in order to bring the tables together and use the "by =" to tell it what columns should be treated as equivalent.

tablemerge <- full_join(allpositivecases, selectedpops, by = c("alldata.state" = "statepop.StateAbbreviation"))

# Notice how the tables merge together. Did it work? How did this operation merge the tables? Why is the statepop data repeated? Where were NA's newly introduced?



# Check the documentation to see examples of arguments and syntax for the command. What happens if we use inner_join() instead of full_join()? What about right_join() or left_join()





# ---------------------------------------------------------------------
# Using pipes in dplyr
# ---------------------------------------------------------------------

# Pipes are operators that can be used to string together verbs in dplyr. They looks like this %>%. Using pipes enables stringing together multiple dplyr operations in one step. Notice the syntax of this example. Organizing the code in this way can help with readabilty of the code.

NewDataFrame <- OldDataFrame %>%
  Select(col1, col2, col3) %>% # select columns from OldDataFrame
  group_by(col3) %>% # group by the information contained in col3
  Mutate(col4 = col2 * 2) %>% # create a new col4 by multiplying col2 * 2
  Filter(col1 != "NA") # remove all rows containing NA values in col1

# For our example, I want to calculate the number of COVID cases per million (CPM) residents for every state in the US. When we merged the table above, the state population information (in millions) aligned with the number of positive COVID19 cases. I will eventually want to view the doubling rate for the CPM so in the same step I will log2 transform the data.

casespermillion <- tablemerge %>%
  mutate(Log2_CPM=log2(alldata.positive/statepop.Pop.millions)) %>% 
  filter(statepop.Pop.millions != "NA") %>%
  filter(Log2_CPM != -Inf)

# NA's were introduced in rows where the state population data was unavailable. We can remove rows containing NA using the filter command. In this particular command we use a 'relational operator'. != translates to 'is not equal to' when used in the filter command. What are some other relational operators used in R?




# As some may already know, calculating the log(0) is not possibile so When R calculates log2(0) it results in '-Inf', this is not plottable information, so we will also remove rows containing -Inf. What if we wanted to our plot to only show data from states once they reach a threshold of 1 CPM. How would we rewrite the filter command to remove all log2(CPM) values below 1?



# =====================================================================
# Day 2.2: Pivoting and Reshaping Data
# =====================================================================

# We are going to create a heatmap using the pheatmap() function. pheatmap() is short for "Pretty heatmap", it is built for customizability and extremely common in bioinformatics workflows. It is generally used for generating heatmaps for screens, gene expression data, protein occupancy. 

# In order use pheatmap() we will need a numeric matrix that only has information about state, date and CPM. We can use dplyr to select the columns we want to use to create our data matrix, and rename the columns into things that are easier to handle. 

forplotting <- casespermillion %>%
  select(alldata.date, alldata.state, Log2_CPM) %>%
  rename(Date = alldata.date, State = alldata.state)

# A numeric matrix is a grid of numeric vaules with some attached metadata. Currently we have a long data frame with state information that is stored as a character. We need to reshape the matrix to spread out the values so that state names are the rownames and we set a column for every date. To do this we can use the group_by() command on state and date information, and use the spread() command to spread the Log2_CPM value along the key Date variable.

forheatmap <- forplotting %>%
  group_by(State, Date) %>%
  spread(key = Date, value = Log2_CPM) 

# ---------------------------------------------------------------------
# Depreciated commands

# Note that the spread() command is depreciated/retired. This means that there are no longer updates to the particular package. For an open source software like R... why is it a problem to use a retired function since it still works right now? 



# Within the help area look up to see what function serves to replace it. What do they recommend? How would you rewrite the code using the documentation-recommended function?

# ---------------------------------------------------------------------

# Notice the new structure of our data frame after using the spread() command. How many observations and variables do we have now? Where do the new NA values come from?




# We want to retain the state information as part of the structure of the heatmap, but we cannot have characters in a numeric matrix. So we will have to push the state names column into rownames which are currently undefined. We can do this using the column_to_rownames() command in the 'tibble' package. The example usage is below.

forheatmap <- column_to_rownames(forheatmap, var = "State")

# Pick a different column as a rowname... What happens?



# =====================================================================
# Day 2.3: Cleaning and trimming data frame with indexing.
# =====================================================================

# Indexing is a fundamental part of R that allows you to access or replace values based on their cordinants within the data structure. Note that [ ] are used for indexing while ( ) are used for calling arguments. If we want to know which columns in the forheatmap data frame start at March 1 and end at the last day of recorded data. We can use a few tricks in R to figure this out. 

# If we already knew that March 1 was column 40 and the last column was column 149... We could select those columns from our OldDataFrame like this and put them into a NewDataFrame.

NewDataFrame <- OldDataFrame[40:149] 

# Unfortunately we don't know which columns they might be. Any day we download the data, the table could get even wider so I want R to figure out those positions for me. The dates information is stored as yyyymmdd. So March 1 would be 20200301. We can then ask R which() column within the OldDataFrame has the colname() that is equivalent to 20200301. We can also ask R how many columns total are in the matrix with ncol(). Once we know those two values we can call are new data frame trimmedheatmap

trimmedheatmap <- forheatmap[
  which(colnames(forheatmap)=="20200301"):(ncol(forheatmap))
  ]

# Break this up and run the commands separately to see what they each do.



# Since NA values in this plot represent no information or no positive cases for a particulur date. We will change all NA values in the our data frame called table into the lowest value on the trimmedmatrix data frame. We can also do this through indexing. 

# The is.na() command will return a TRUE or FALSE statement identifying evry NA value within trimmedmatrix. For every value that is TRUE, we can replace it with the min() value in the table using the code below.

trimmedheatmap[is.na(trimmedheatmap)] <- min(trimmedheatmap, na.rm=TRUE)

# Now we can safely convert our data frame into a matrix.

mymatrix <- as.matrix(trimmedheatmap)

# We are now ready to create our heatmap.

# =====================================================================
# Day 2.4: Creating a heatmap with pheatmap
# =====================================================================

# Finally we can write the code for our heatmap. pheatmap is extremely customizable and has a lot more functinoality that we have time to describe in this course. I highly recommend reviewing the documentation or other forums that describe how to use the command in detail. https://www.rdocumentation.org/packages/pheatmap/versions/1.0.12/topics/pheatmap. We also use RColorBrewer which gives us more control and customizability of color gradients used for the plots.

# Before we make the plot lets set some parameters for colors. In order to visualize doubling time, we log2 transformed the data. In order to see doubling time clearly on the map - it would be best to set each shade on the color spectrum as a whole-number integer bin in log2 space. The 'breaks =' parameter allows us to designate the bins used to create the color spectrum for the heatmap. We can use the as.integer() function to caculate the min and max values for the matrix of data. Below we set the range of values as a list called cpmbreaks.

cpmbreaks <- as.integer(min(mymatrix-1)):as.integer(max(mymatrix))

# Now lets take a look at the code that will make our plot. For this particluar example, notice the syntax and organization of the command that will build our heatmap. Run this code chunk to see what happens.

cpmplot <- pheatmap(
  mymatrix, 
  scale = "none", 
  cluster_cols = FALSE, 
  breaks = cpmbreaks, 
  color = colorRampPalette(brewer.pal(9, "Blues"))(length(cpmbreaks)),
  border_color = NA
)

# Below, I justify my decisions for picking each of the arguments.

# We set the scale to "none" because we want the graph to set the color gradient on the plot based on all the values. (otherwise, it will rescale the color breaks data based on column or row values). 

# The pheatmap function automatically creates dendograms for the x and the y axis and reorganizes the data based on similarity. We don't want to reorganize the columns because we want to look at the data in chronological order. We want to organize the data based on the states with the highest to lowest CPM.

# culster_cols or cluster_rows are the designations that determine whether or not the rows are used for similarity clustering. 

# To encourage readability of the code we setting each argument within pheatmap() on separate line separated by commas. For color, we loaded the RColorBrewer package at the beginning of the document. Using the colorRampPalette function we set a color "Ramp", or gradient, using the full range (9) of the "Blues" brewer palette designated one color for the number of values in cpmbreaks we calculated above. We remove the border_color for ease of reading the heatmap.


# =====================================================================
# Day 2.5: Plotting with ggplot2
# =====================================================================

# ggplot2 is based on what is called the 'grammar of graphics'. This is the idea that you can build nearly every graph from the same components: (1) a data set, (2) a coordinate system and (3) 'geoms' which are visual marks that represent data points. ggplot2 is able to create a diverse set of plots using these three characteristics. Here we will explore how to construct a few example plots using ggplot2. For a more exhaustive list of ggplot2 functions please review the ggplot2 cheat sheet linked here: https://rstudio.com/wp-content/uploads/2015/03/ggplot2-cheatsheet.pdf. 

# It is worth fully exploring ggplot2 documentation. There are many customizable features for each geometry making ggplot2 one of the most comprehensive packages for data visualizaiton in R. 

# First lets pull some data from an earlier step. Lets pick a state, and plot a line graph using ggplot2 that shows the total number of positive cases beginning on the first day of recorded COVID19 infections for that state. 

forplotting <- casespermillion %>%
  select(alldata.date, alldata.state, Log2_CPM, alldata.positive) %>%
  rename(Date = alldata.date, State = alldata.state, Positive = alldata.positive)

justca <- forplotting %>%
  filter(State == "CA") 

justca <- justca %>%
  mutate(Days = nrow(justca):1)

plot <- ggplot(justca, aes(x = Days, y = Positive)) +
  geom_smooth(method = "auto", color = "Cyan") +
  geom_point(size = 0.1, alpha = 1)

plot

# This is a typical example of a plot created by ggplot. Notice the syntax in the example below. Within ggplot() we define the data frame to pull information from, and list the 'aesthetics' aes() or the defining characteristics for the plot. Within the aesthetics the x and y variables are defined, along with other measurable characteristics. The arguments are linked together with a + . This allows multiple layers to be stacked on top of each other to create a plot. 

ExamplePlot <- ggplot(DataFrame, aes(X, Y)) + 
  geom_smooth() + # this geom creates a linear model
  geom_point() # this geom creates a point for every observation

# ---------------------------------------------------------------------
# Reflections and Connections
# ---------------------------------------------------------------------

# Look into the documentation for geom_smooth() look at the usage. What does the method parameter do? What other colors can you use for the line? 



# Look into the documentation for geom_point() what aesthetics can you find under geom_point? What happens if we change the size to 1? What does seeting the alpha do in ggplot? ()




# ---------------------------------------------------------------------
# End of Part 1
# ---------------------------------------------------------------------


# There are many ways to do things in R, plotting is no exeception. Other plotting libraries that could be of interest...

# gplots - general plotting library
# plotly -  general plotting library
# leaflet - mapping library
