# FlukeRDMlite

This is the frontend for the RShiny RDM tool app and is hosted at [connect.fisheries.gov](https://connect.fisheries.noaa.gov/connect/#/apps/539bfbee-a914-45e2-ae8f-e6db92452d23) .  See https://github.com/kimberly-bastille/ for the full repository, which we deploy on the cloud.


Stakeholders will use the app to develop sets of regulations. 

The front end does two things
1. Shows the results of previously run regulations.
2. Saves user created regulations to a place where we can later access, validate them, and submit them to the NEFSC container.

# Results


The first tab on the app is a summary page. It shows results for previously run models.  


The first set of graphics are the Summer Flounder and Black Sea Bass changes in Recreational Harvest relative to Status Quo, in percentage terms. We also color the points based on changes in scup harvest. Users can hover over each point to see a the values of the points being plotted. 

The second thing users see is a summary table if shows the median percentage change in harvest for each of the three species. it also shows how many of the three species are below the RHL.

The third thing users see is a selection tab, where they can focus in on a state.  For every state, users can see a more detailed view of the first image (Summer Flounder and Black Sea Bass changes in Recreational Harvest relative to Status Quo, in percentage terms).  They can also see total angler satisfaction, total trips, and total discards of each species, all plotted against the "Change in Harvest from Status Quo" for each species.


# Regulation Selection

The second tab on the app is a regulation selection page. It is very similar to the interface users had last year. We are asking people to name their policy with a short name (initials and a number are great), input their name, and input their email address.  

Use the tick boxes to mark the states that they want to examine.  

The regulations are currently pre-populated with the Status Quo.

Use the calendar sliders, ruler, and boxes to select the open seasons, size limits, and possession limits. 

Policies can be run for all modes or differentiated by "For-Hire, Private, and Shore."  

Users can add up to 1 additional season per species.

If you "un-tick" a state and then re-select it, the app will reset all the sliders to the defaults (Status Quo).


# Reproducibility and Deploying

Nearly all of the code is on github, however using the app requires a few extra things that we do not add to github, and which are placed in the ``.secrets`` folder.

1. ``AppSetup.R`` -- see the AppSetupPlaceholder.R file to figure out how to set this up.
2. A pair of google drive tokens. These tokens should have permissions to read and write to the files in AppSetup.R.  You can set these up yourself using the code in AppSetupPlaceholder.R
3. A csv containing authorized email addresses. These are on google drive, but you might want to store it in a csv to minimize hitting googledrive.

# Back-end

This app collects regulations from users. In order to run regulations, the regulations must be run on a different computer. This can be done locally for a small number of policies or on the NEFSC container.

Results must then be transferred back to the "Lite" app and re-deployed to the cloud. 

