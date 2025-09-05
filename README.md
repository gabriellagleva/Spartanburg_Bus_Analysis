Below is a research paper I wrote cowrote in the spring of 2025. In it, I utalized mathematical modeling techniques to find ways of potentially increasing the effencity of the Spartanburg Bus System. By the end of it, were were able to find a way to increasse the number of property parcels that were able to reach the busess by about 13%, without incrceasing the number of busses or the number of stops. This swas done ssimpy by finding "redundant" bus stops

<img width="695" height="451" alt="image" src="https://github.com/user-attachments/assets/620e4296-ba5d-4249-8e21-cc79728bab2c" />


**Introduction:**

Providing efficient and accessible public transportation is a critical challenge for urban planners and transit authorities. An important aspect of this is optimizing the placement of bus stops to maximize coverage for residents while minimizing redundancies that increase travel time. Our model maximizes residents' accesrajsibility to bus stops while attempting to have minimal increase on travel time of the bus routes. This is done by decreasing the amount of overlapping coverage between stops while maintaining the same number of bus routes. In doing so, we increase the total area of coverage provided by the bus network. Research shows that up to 26% of a bus's time is spent waiting at bus stops for passengers to board and deboard (Leviston et al. 1983). Additional research suggests that dwell time increases when buses are overcrowded, and people are forced to stand (Rajbhandari et al. 2003). As such, if buses are not overcrowded, there is minimal effect on dwell time. This is not difficult, as only about 0.2 % of people in Spartanburg city use the bus system (U.S. Census Bureau. 2022). As such, decreasing the distance that people need to walk, thereby increasing accessibility to the bus stops without too much delay is possible.

Previous work on bus stop accessibility has often focused on calculating walking distances based on average pedestrian speeds. Notably, studies have analyzed pedestrian normal walking speeds of 3.56 ft/sec and used this to estimate travel times to different destinations like bus stops (Montufar et al. 2003). Using their numbers, a person could walk 0.25 miles in about 6 minutes and 10 seconds. Their research is in line with U.S. Department of Transportation Federal Highway Administration, which gathered data indicating that most people are willing to walk around 0.25 miles, or about 5 to 10 minutes to access a bus stop (U.S. Department of Transportation Federal Highway Administration). Finally, research shows that about 85% of people are willing to walk to a public transportation station if the walk is less than 0.25 miles (qt in “Background”). These three sources provide a useful basis for establishing an acceptable walking radius threshold of 0.25 miles in our modeling approach.

An initial analysis of bus stop locations in our city has revealed significant overlapping coverage areas between neighboring stops. For example, on the South Liberty Street route, three stops have between 18-48% redundant coverage areas. This surplus coverage represents a potential opportunity to reallocate stops and extend service to underserved areas without compromising accessibility based on the 0.25 mile walking radius guideline. The visualization below highlights the degree of overlapping coverage on this route.

<img width="491" height="310" alt="image" src="https://github.com/user-attachments/assets/75b56801-534d-4ade-85fa-58596456e78a" />


By decreasing redundant coverage areas, our model aims to optimize the bus network to provide more equitable access to a larger portion of Spartanburg’s residents within the established maximum walking distance to a stop. As such, our model attempts to increase the total number of people who walk no more than 0.25 miles to get to a bus stop, without increasing the total number of stops on a route.

**Model Description**

Beginning with the assumptions of our model, we decided it was reasonable that all people who use the bus system opt to use the sidewalks when possible. This is self-evident as walking on the side of the road would be less preferable and dangerous. Additionally, we also assumed that people will not jaywalk to get to a stop. While in the real-world jaywalking is somewhat prevalent in cities, we wanted to ensure that all stops could be reached by using a crosswalk. We assumed that all people would walk at a speed of 3.56 miles per hour (Montufar et al. 2003). Assumed that all people would be willing to walk 0.25 miles to reach their bus stop. This is in line with past research, which suggests people are willing to walk about a quarter of a mile, or five to ten minutes to public transportation (U.S. Department of Transportation Federal Highway Administration, qt in “Background”). This distance was estimated by the Department of Transportation to be the average distance a person would be willing to walk to any public transportation stop. Lastly, we assumed that people will choose to take their stop of choice that is closest in distance to their current position. It seems apparent that most people would attempt to take the fastest route to their local bus stop, as it reduces their walking time.

As for the mathematical model, it was a simple endeavor. First, we began by creating a map of all the outbound and inbound bus stops in the system and then overlayed a .25 square mile radius circle around each of them. We did this because .25 square miles is the maximum distance we assumed that people would travel to a stop. In doing so, we found that there were some stops that overlapped in their coverage of area—particularly the South Liberty Street route. From there we calculated the amount of overlapping coverage between all stops and opted to move such stops along the route until they no longer overlapped and were perfectly .25 square miles away from each other. By doing this, we effectively cover more unique land area rather than double-covering certain areas that do not necessarily necessitate the need of such coverage. In terms of the equations used, we found the total potential, shared, and unique area covered by the bus stops. Because all stops have the potential to cover unique area, this is simply represented by the area of a circle (where . To find the shared area of two circles of the same radius, we used an equation provided by Wolfram MathWorld:  

<img width="473" height="75" alt="image" src="https://github.com/user-attachments/assets/4e3a28f4-624a-4d14-a298-2ae7b7507aa7" />


(Where r = .25 square miles and d = the distance between any given pair of stops). Lastly, to find total unique area covered, we simply did . We performed calculations for every overlapping pair of stops to find the total for each one. Then, after moving the stops to where none overlapped, the total potential area covered equaled the total unique area covered—as there was no overlap between any stops anymore. Finally, to count parcels, GIS data and other information was given to us by Drew Harris of Spartanburg County via email.

**Results**

Overlapping Areas

Analysis of the routes found that 30% of SLS 1’s total area was overlapped by SLS 2, 48% of SLS 2’s total area overlapped by SLS 1 and by SLS 2, and 18% of SLS 3’s total area was overlapped by SLS 2 (Figure 1, Table 1). Moving SLS 2 and SLS 3 until they no longer overlapped any other circles had a positive effect on the total amount of unique space that each bus stop covered. SLS 1 saw an increase in unique parcel covered by 42%. SLS 2 saw an increase in unique area covered by 91%, and SLS 3 saw an increase in unique area covered by 22% (Figure 1, Table 1)
<img width="491" height="311" alt="image" src="https://github.com/user-attachments/assets/e3068a48-2863-4635-aa29-a71ea5b18fc8" />

<img width="491" height="311" alt="image" src="https://github.com/user-attachments/assets/485c0aa6-0d81-4f83-ac3a-fd80016d162b" />

**Figure 1. South Liberty Street Before (Left) and After (Right)** Each circle represents a 0.25 mile radius around each inbound bus stop on South Liberty Street’s bus route. SLS 1 (Orange) had 30% of its total area covered by SLS 2. SLS 2 (Green) had 48% of its total area covered by SLS 1 and SLS 3. SLS 3 (Purple) had 18% of its total area covered by SLS 2.

Overlapping Parcels

Analysis of the routes found that SLS 1 had 216 unique parcels covered, SLS 2 had 105 unique parcels covered, and SLS 3 had 75 unique parcels covered. After moving the stops, SLS 1 had 361 unique parcels (67.13% increase), SLS 2 had 96 unique parcels covered (8.57% decrease), and SLS 3 had 162 unique parcels covered (116.00% increase) (Figure 1, Table 2).

**Table 1:** Analysis of overlapping areas on South Liberty Street Inbound Bus Routes.

| **Bus Stop #** | **SLS 1** | **SLS 2** | **SLS 3** |
| --- | --- | --- | --- |
| **Area Covered (sq miles)** | **0.196** | **0.196** | **0.196** |
| **Overlapping Coverage (sq miles)** | **0.058236605** | **0.09351416** | **0.035277555** |
| **Unique Area Covered (sq miles)** | **0.137763395** | **0.10248584** | **0.160722445** |
| **% of Overlap (Area)** | **30%** | **48%** | **18%** |
| **% increase by moving stops** | **42%** | **91%** | **22%** |

**Table 2:** Analysis of parcels covered by South Liberty Street Inbound Bus Routes

| **Bus Stop #** | **SLS 1** | **SLS 2** | **SLS 3** |
| --- | --- | --- | --- |
| **Unique Parcels Covered** | **216** | **105** | **75** |
| **Shared Parcels** | **145** | **148** | **5** |
| **Unique After Move** | **361** | **96** | **162** |
| **% increase by moving stops** | **67.13%** | **\-8.57%** | **116.00%** |

Sensitivity Analysis

The researchers agreed that a 0.25-mile radius around each bus stop was an appropriate distance around each stop. This is in line with what the Department of Transportation says is “accessible.” This way, our model would not expect any individual to walk more than a quarter mile to get to their local stop. However, due to the model's nature, the radius we decided has the largest effect on how our model determines the overlap between two bus stops and the number of parcels covered.

Sensitivity analysis was performed assuming two bus stops were 0.2 miles apart. It showed that as the radius of the overlaid circle grows, the area of overlap between the two adjected bus stops grows at a rate that is at least larger than one-to-one. The area of overlap between overlaid circles with a radius of 0.35 miles increased by 110% compared to the area of overlap between overlaid circles with a radius of 0.25 miles, with the area of overlap growing from 0.15 square miles to 0.3153 square miles. Reduction of circles sizes has a similar, drastic effect, as reducing the radius of the circles from 0.25 to 0.15 causes a 67% decrease in the overlapping radius. As a result, we can see that our model relies heavily on the size of radius.

<img width="533" height="632" alt="image" src="https://github.com/user-attachments/assets/709754e2-427a-4ba3-8f37-20268e305c17" />


**Figure 3: Area of Overlap (square miles) as Radius of Circle (miles) increases**

In addition to this, we analyzed how the average number of covered parcels would change if we increased the radius of the overlaid circle. To do this, we found the meaning of a sample of property parcels around the South Liberty Street Inbound Bus Route. Coordinates around the Inbound Bus Route were chosen using a pseudo random number generator, and the area of the parcel, or nearest parcel, to the coordinate measure. This process was repeated 40 times, to create a sample size of 40. We found that the average size of a property parcel in Spartanburg, SC was about 0.005 square miles, based on our sample. We then used that number to show many parcels could potentially fit into circles of varying sizes (Figure 4). Like before, the growth of the number of parcels covered is not one-to-one with the radius of the circle and grows at a faster rate than at least linear. The most notable result we found was the increasing the radius of the circles to 0.35 miles increased the total possible number of covered parcels by 93% when compared to the total possible number of covered parcels with a 0.25 square mile circle. Also, decreasing the radius to 0.15 miles decreased the maximum possible number of covered parcels by 64% with the total maximum parcels decreasing from approximately 39 to 14.

<img width="419" height="497" alt="image" src="https://github.com/user-attachments/assets/946ff047-86f1-4041-a1d8-1d5079d91861" />

**Figure 4: Maximum number of Parcels Covered as Radius of Circle increases**

It should be noted that a few problems arise when stops are perfectly separate. If 2 circles are have exactly 0 overlap, with our model will incorrectly say that there is some overlap when there is not. As a result, area calculators may not be 100% accurate for this sensitivity analysis. Nonetheless, the general idea stays the same in that a circle’s radius will affect the area and parcels covered in a significant way.

Changes

Our model underwent a few minor changes throughout the project. Originally, we planned our model to use population data instead of using parcel data. However, we were unable to get that data. As a result, we decided to use parcel data instead. It was easily available, and the county already had much of that information in shapefiles. Also, we initially decided to include two stops on South Church Street in our analysis of the South Liberty Street Inbound Bus Route, as one of its inbound stops intersects with one of the bus stops on South Liberty Street. However, we decided against it, as it would involve taking information from multiple different bus routes that would make it difficult to show the efficacy of model, as it would involve moving multiple different stops, on multiple different routes. We thought that our model would be better showcased on a smaller scale, as moving stops on just one route helped to show how minimal changes could increase the total number of parcels covered, without radically increasing travel time. Including stops from another route betrayed that goal, as it would involve moving multiple stops, and potentially obscure the results of our model with too much shifting of stops.

**Conclusion:**

Our model aimed to optimize bus stop placement along the South Liberty Street route to maximize residential coverage while avoiding overlapping service areas. The key results from applying the model were:

- For SLS 1, unique parcel coverage increased from 216 to 361 (67.13% increase)
- For SLS 2, unique parcel coverage decreased slightly from 105 to 96 (8.57% decrease)
- For SLS 3, unique parcel coverage increased substantially from 75 to 162 (116% increase)

By systematically adjusting the stop locations until their 0.25-mile walking radius no longer overlapped, we were able to reduce redundant coverage areas. The visualization highlights how this was achieved by separating the three main clusters of overlapping stops. However, the model has some important limitations. Most notably, while the overall unique coverage area increased substantially, the solution for SLS 2 resulted in a slight reduction in parcels served. This indicates that the optimization method of simply separating overlapping circles until they no longer intersect is not a universally ideal strategy. The model is also highly sensitive to the 0.25-mile walking radius assumption, which while grounded in transportation research, may not be a universally appropriate threshold.

As such, our model does have some limitations. Our model cannot predict whether the increased ridership can be supported by our new bus stops, as it did not consider whether the existing number of buses can physically fit the increased ridership. While we wanted to maintain dwell time in our model by not adding any new bus routes, overcrowding of the bus and bus stops could have negative effects on the route's efficiency. This is because the time it takes for passengers to board and deboard their bus can affect dwell time (Rajbhandari et al. 2003).

Our model does not guarantee that the stops are moved to a location that has the infrastructure to support the stops. The model does not consider zoning, road size, or dangerous conditions such as lack of sidewalks or guardrails. As such, while the bus stops may be in a more advantageous location to cover more people without increasing travel time, the stop’s location may not be feasible.

Finally, the model does not guarantee the best location for each of the stops, simply a location for each stop that is likely better than it was originally. The model can potentially produce worse bus stops if properties are extremely dense in one area, and very sparce in the area around it. Preventing stops from overlapping produces small areas that are not within coverage of either circle, typically around the perimeter of two stops that are exactly 0.25 miles apart. If one of the stops is being moved to a low-density area that has less property parcels than the dense, uncovered areas around the perimeters of each overlapping circle, more people are being left out. It could be more beneficial to overlap the two stops’ coverage and cover the smaller, but more dense area. The new stop locations need to be vetted via some method, such as counting covered property parcels, before they can be considered “better.”

Despite these limitations, the current model provides a simple yet powerful framework for visualizing redundancies in bus stop placement and a straightforward method for reducing overlaps. When combined with the quantification of coverage improvements for other stops, it makes a strong case that rebalancing the network can enhance service provision without increasing operational costs. To build on this work, we recommend exploring alternative optimization algorithms that can intelligently reposition stops to maximize overall coverage while ensuring no individual stop loses service area. Potential avenues include integer programming or location-allocation modeling techniques. Another fruitful area for future research is incorporating additional data streams such as population densities, accessibility requirements, and pedestrian network analyses to make the coverage modeling more rigorous and equitable. We recommend that transit authorities proceed with further stop rebalancing analyses and community outreach to improve the efficiency and equity of bus accessibility in our city.

**Bibliography**

“Background.” _PEDSAFE : Background_, U.S Department of Transportation Federal Highway Administration, web.archive.org/web/20080524011328/www.walkinginfo.org/pedsafe/background.cfm. Accessed 19 Apr. 2024.

Levinson, H. S. Analyzing Transit Travel Time Performance. In Trans-portation Research Record 915,TRB, National Research Council, Wash-ington, D.C., 1983, pp. 1–6, [915-001.pdf (trb.org)](https://onlinepubs.trb.org/Onlinepubs/trr/1983/915/915-001.pdf)

Montufar, Jeannette, et al. “Pedestrians’ Normal Walking Speed and Speed When Crossing a Street.” _Transportation Research Record: Journal of the Transportation Research Board_, vol. 2002, no. 1, Jan. 2007, pp. 90–97. _DOI.org (Crossref)_, .<https://doi.org/10.3141/2002-12>.

U.S. Census Bureau. "Commuting Characteristics by Sex." American Community Survey, ACS 5-Year Estimates Subject Tables, Table S0801, 2022, &lt;<https://data.census.gov/table/ACSST5Y2022.S0801?q=communitng>&gt; characteristics by sex&g=060XX00US4508393198. Accessed on March 18, 2024.

U.S Department of Transportation Federal Highway Administration. (n.d.). _Chapter 4: Actions to Increase the Safety of Pedestrians Accessing Transit_. Pedestrians and Transit | Federal Highway Administration. <https://safety.fhwa.dot.gov/ped_bike/ped_transit/ped_transguide/ch4.cfm>

Rajbhandari, R., Chien, S. I., & Daniel, J. R. (2003). Estimation of Bus Dwell Times with Automatic Passenger Counter Information. _Transportation Research Record_, _1841_(1), 120–127. <https://doi.org/10.3141/1841-13>

**Appendix**

The code used to generate Figures 3 and 4 can be found on Gabe Lagleva’s Github page, as well as the collected parcel data, and the pseudorandom coordinate chooser: [gabriellagleva/Math-Modeling-Final-Project (github.com).](https://github.com/gabriellagleva/Math-Modeling-Final-Project)

Parcel data for Spartanburg County was given by Drew Harris, GIS manager for Spartanburg County. Requests for the data can be made to him.

<img width="695" height="451" alt="image" src="https://github.com/user-attachments/assets/725025bf-0edc-4fa2-a1cb-c0db397bd7ce" />

**Appendix Figure 1:** A map of all bus stops within the sparta route. South Libery Street depicted in cyan on the bottom right

