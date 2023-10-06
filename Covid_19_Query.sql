{\rtf1\ansi\ansicpg1252\cocoartf2757
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fnil\fcharset0 Menlo-Regular;}
{\colortbl;\red255\green255\blue255;\red204\green0\blue78;\red255\green255\blue255;\red44\green55\blue61;
\red39\green78\blue204;\red42\green55\blue62;\red21\green129\blue62;\red238\green57\blue24;\red0\green0\blue0;
\red107\green0\blue1;}
{\*\expandedcolortbl;;\cssrgb\c84706\c10588\c37647;\cssrgb\c100000\c100000\c100000;\cssrgb\c22745\c27843\c30588;
\cssrgb\c20000\c40392\c83922;\cssrgb\c21569\c27843\c30980;\cssrgb\c5098\c56471\c30980;\cssrgb\c95686\c31765\c11765;\cssrgb\c0\c0\c0;
\cssrgb\c50196\c0\c0;}
\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs24 \cf2 \cb3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 -- View the data sets\cf4 \cb1 \strokec4 \
\
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 SELECT\cf4 \strokec4  \cf6 \strokec6 *\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 FROM\cf4 \strokec4  \cf7 \strokec7 `covid-19-398619.CVID_19_Data.Covid_Deaths`\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 ORDER\cf4 \strokec4  \cf5 \strokec5 BY\cf4 \strokec4  \cf8 \strokec8 3\cf4 \strokec4 ,\cf8 \strokec8 4\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 LIMIT\cf4 \strokec4  \cf8 \strokec8 1000\cf4 \cb1 \strokec4 \
\
\cf5 \cb3 \strokec5 SELECT\cf4 \strokec4  \cf6 \strokec6 *\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 FROM\cf4 \strokec4  \cf7 \strokec7 `covid-19-398619.CVID_19_Data.Covid_Vaccinations`\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 ORDER\cf4 \strokec4  \cf5 \strokec5 BY\cf4 \strokec4  \cf8 \strokec8 3\cf4 \strokec4 ,\cf8 \strokec8 4\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 LIMIT\cf4 \strokec4  \cf8 \strokec8 1000\cf4 \cb1 \strokec4 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 -- Select data that we will be using\cf4 \cb1 \strokec4 \
\
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 SELECT\cf4 \strokec4  \strokec9 location\strokec4 , \cf5 \strokec5 date\cf4 \strokec4 , \strokec9 total_cases\strokec4 , \strokec9 total_deaths\strokec4 ,\strokec9 new_cases\strokec4 , \strokec9 population\cb1 \strokec4 \
\cf5 \cb3 \strokec5 FROM\cf4 \strokec4  \cf7 \strokec7 `covid-19-398619.CVID_19_Data.Covid_Deaths`\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 ORDER\cf4 \strokec4  \cf5 \strokec5 BY\cf4 \strokec4  \cf8 \strokec8 1\cf4 \strokec4 ,\cf8 \strokec8 2\cf4 \cb1 \strokec4 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 -- Total Cases VS Total Deaths \cf4 \cb1 \strokec4 \
\
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 SELECT\cf4 \strokec4  \strokec9 location\strokec4 , \cf5 \strokec5 date\cf4 \strokec4 , \strokec9 total_cases\strokec4 , \strokec9 total_deaths\strokec4 , \cf6 \strokec6 (\cf4 \strokec9 total_deaths\cf6 \strokec6 /\cf4 \strokec9 total_cases\cf6 \strokec6 )*\cf8 \strokec8 100\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \strokec9 Death_Percentage\cb1 \strokec4 \
\cf5 \cb3 \strokec5 FROM\cf4 \strokec4  \cf7 \strokec7 `covid-19-398619.CVID_19_Data.Covid_Deaths`\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 WHERE\cf4 \strokec4  \strokec9 location\strokec4  \cf5 \strokec5 like\cf4 \strokec4  \cf7 \strokec7 "Canada"\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 ORDER\cf4 \strokec4  \cf5 \strokec5 BY\cf4 \strokec4  \cf8 \strokec8 1\cf4 \strokec4 ,\cf8 \strokec8 2\cf4 \cb1 \strokec4 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 -- Total Cases VS Population\cf4 \cb1 \strokec4 \
\
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 SELECT\cf4 \strokec4  \strokec9 location\strokec4 , \cf5 \strokec5 date\cf4 \strokec4 , \strokec9 total_cases\strokec4 , \strokec9 population\strokec4 , \cf6 \strokec6 (\cf4 \strokec9 total_cases\cf6 \strokec6 /\cf4 \strokec9 population\cf6 \strokec6 )*\cf8 \strokec8 100\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \strokec9 Case_Percentage\cb1 \strokec4 \
\cf5 \cb3 \strokec5 FROM\cf4 \strokec4  \cf7 \strokec7 `covid-19-398619.CVID_19_Data.Covid_Deaths`\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 WHERE\cf4 \strokec4  \strokec9 location\strokec4  \cf5 \strokec5 like\cf4 \strokec4  \cf7 \strokec7 "Canada"\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 ORDER\cf4 \strokec4  \cf5 \strokec5 BY\cf4 \strokec4  \cf8 \strokec8 1\cf4 \strokec4 ,\cf8 \strokec8 2\cf4 \cb1 \strokec4 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 -- Countries with highest infection rate\cf4 \cb1 \strokec4 \
\
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 SELECT\cf4 \strokec4  \strokec9 location\strokec4 , \cf5 \strokec5 MAX\cf6 \strokec6 (\cf4 \strokec9 total_cases\cf6 \strokec6 )\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \strokec9 Max_Cases\strokec4 , \strokec9 population\strokec4 , \cf5 \strokec5 MAX\cf6 \strokec6 ((\cf4 \strokec9 total_cases\cf6 \strokec6 /\cf4 \strokec9 population\cf6 \strokec6 ))*\cf8 \strokec8 100\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \strokec9 Population_Percent_Infected\cb1 \strokec4 \
\cf5 \cb3 \strokec5 FROM\cf4 \strokec4  \cf7 \strokec7 `covid-19-398619.CVID_19_Data.Covid_Deaths`\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 WHERE\cf4 \strokec4  \strokec9 continent\strokec4  \cf5 \strokec5 is\cf4 \strokec4  \cf5 \strokec5 not\cf4 \strokec4  \cf5 \strokec5 null\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 GROUP\cf4 \strokec4  \cf5 \strokec5 BY\cf4 \strokec4  \strokec9 location\strokec4 , \strokec9 population\cb1 \strokec4 \
\cf5 \cb3 \strokec5 ORDER\cf4 \strokec4  \cf5 \strokec5 BY\cf4 \strokec4  \strokec9 Population_Percent_Infected\strokec4  \cf5 \strokec5 DESC\cf4 \cb1 \strokec4 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 -- Countries with highest infection rate (By Date)\cf4 \cb1 \strokec4 \
\
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 SELECT\cf4 \strokec4  \strokec9 location\strokec4 , \cf5 \strokec5 date\cf4 \strokec4 , \cf5 \strokec5 MAX\cf6 \strokec6 (\cf4 \strokec9 total_cases\cf6 \strokec6 )\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \strokec9 Max_Cases\strokec4 , \strokec9 population\strokec4 , \cf5 \strokec5 MAX\cf6 \strokec6 ((\cf4 \strokec9 total_cases\cf6 \strokec6 /\cf4 \strokec9 population\cf6 \strokec6 ))*\cf8 \strokec8 100\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \strokec9 Population_Percent_Infected\cb1 \strokec4 \
\cf5 \cb3 \strokec5 FROM\cf4 \strokec4  \cf7 \strokec7 `covid-19-398619.CVID_19_Data.Covid_Deaths`\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 WHERE\cf4 \strokec4  \strokec9 continent\strokec4  \cf5 \strokec5 is\cf4 \strokec4  \cf5 \strokec5 not\cf4 \strokec4  \cf5 \strokec5 null\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 GROUP\cf4 \strokec4  \cf5 \strokec5 BY\cf4 \strokec4  \strokec9 location\strokec4 , \strokec9 population\strokec4 , \cf5 \strokec5 date\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 ORDER\cf4 \strokec4  \cf5 \strokec5 BY\cf4 \strokec4  \strokec9 Population_Percent_Infected\strokec4  \cf5 \strokec5 DESC\cf4 \cb1 \strokec4 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 -- Countries with highest death rate\cf4 \cb1 \strokec4 \
\
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 SELECT\cf4 \strokec4  \strokec9 location\strokec4 , \strokec9 population\strokec4 , \cf5 \strokec5 MAX\cf6 \strokec6 (\cf4 \strokec9 total_deaths\cf6 \strokec6 )\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \strokec9 Maximum_Deaths\strokec4 , \cf5 \strokec5 MAX\cf6 \strokec6 ((\cf4 \strokec9 total_deaths\cf6 \strokec6 /\cf4 \strokec9 population\cf6 \strokec6 ))*\cf8 \strokec8 100\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \strokec9 Population_Percent_Death\cb1 \strokec4 \
\cf5 \cb3 \strokec5 FROM\cf4 \strokec4  \cf7 \strokec7 `covid-19-398619.CVID_19_Data.Covid_Deaths`\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 WHERE\cf4 \strokec4  \strokec9 continent\strokec4  \cf5 \strokec5 is\cf4 \strokec4  \cf5 \strokec5 not\cf4 \strokec4  \cf5 \strokec5 null\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 GROUP\cf4 \strokec4  \cf5 \strokec5 BY\cf4 \strokec4  \strokec9 location\strokec4 , \strokec9 population\cb1 \strokec4 \
\cf5 \cb3 \strokec5 ORDER\cf4 \strokec4  \cf5 \strokec5 BY\cf4 \strokec4  \strokec9 Maximum_Deaths\strokec4  \cf5 \strokec5 desc\cf4 \cb1 \strokec4 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 -- Countries with highest deaths \cf4 \cb1 \strokec4 \
\
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 SELECT\cf4 \strokec4  \strokec9 location\strokec4 , \cf5 \strokec5 SUM\cf6 \strokec6 (\cf4 \strokec9 new_deaths\cf6 \strokec6 )\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \strokec9 Total_Deaths\cb1 \strokec4 \
\cf5 \cb3 \strokec5 FROM\cf4 \strokec4  \cf7 \strokec7 `covid-19-398619.CVID_19_Data.Covid_Deaths`\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 WHERE\cf4 \strokec4  \strokec9 continent\strokec4  \cf5 \strokec5 is\cf4 \strokec4  \cf5 \strokec5 not\cf4 \strokec4  \cf5 \strokec5 null\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 GROUP\cf4 \strokec4  \cf5 \strokec5 BY\cf4 \strokec4  \strokec9 location\cb1 \strokec4 \
\cf5 \cb3 \strokec5 ORDER\cf4 \strokec4  \cf5 \strokec5 BY\cf4 \strokec4  \cf8 \strokec8 2\cf4 \strokec4  \cf5 \strokec5 desc\cf4 \cb1 \strokec4 \
\
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 -- Continent with highest death rate (NOT ACCURATE)\cf4 \cb1 \strokec4 \
\
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 SELECT\cf4 \strokec4  \strokec9 continent\strokec4 , \cf5 \strokec5 MAX\cf6 \strokec6 (\cf4 \strokec9 total_deaths\cf6 \strokec6 )\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \strokec9 Maximum_Deaths\cb1 \strokec4 \
\cf5 \cb3 \strokec5 FROM\cf4 \strokec4  \cf7 \strokec7 `covid-19-398619.CVID_19_Data.Covid_Deaths`\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 WHERE\cf4 \strokec4  \strokec9 continent\strokec4  \cf5 \strokec5 is\cf4 \strokec4  \cf5 \strokec5 not\cf4 \strokec4  \cf5 \strokec5 null\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 GROUP\cf4 \strokec4  \cf5 \strokec5 BY\cf4 \strokec4  \strokec9 continent\cb1 \strokec4 \
\cf5 \cb3 \strokec5 ORDER\cf4 \strokec4  \cf5 \strokec5 BY\cf4 \strokec4  \strokec9 Maximum_Deaths\strokec4  \cf5 \strokec5 desc\cf4 \cb1 \strokec4 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 -- Continent with highest death rate (ACCURATE)\cf4 \cb1 \strokec4 \
\
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 SELECT\cf4 \strokec4  \strokec9 location\strokec4 , \cf5 \strokec5 SUM\cf6 \strokec6 (\cf4 \strokec9 new_deaths\cf6 \strokec6 )\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \strokec9 Total_Deaths\cb1 \strokec4 \
\cf5 \cb3 \strokec5 FROM\cf4 \strokec4  \cf7 \strokec7 `covid-19-398619.CVID_19_Data.Covid_Deaths`\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 WHERE\cf4 \strokec4  \strokec9 continent\strokec4  \cf5 \strokec5 is\cf4 \strokec4  \cf5 \strokec5 null\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb3  \cf5 \strokec5 AND\cf4 \strokec4  \strokec9 location\strokec4  <> \cf7 \strokec7 "World"\cf4 \cb1 \strokec4 \
\cb3  \cf5 \strokec5 AND\cf4 \strokec4  \strokec9 location\strokec4  <> \cf7 \strokec7 "High income"\cf4 \cb1 \strokec4 \
\cb3  \cf5 \strokec5 AND\cf4 \strokec4  \strokec9 location\strokec4  <> \cf7 \strokec7 "Upper middle income"\cf4 \cb1 \strokec4 \
\cb3  \cf5 \strokec5 AND\cf4 \strokec4  \strokec9 location\strokec4  <> \cf7 \strokec7 "Lower middle income"\cf4 \cb1 \strokec4 \
\cb3  \cf5 \strokec5 AND\cf4 \strokec4  \strokec9 location\strokec4  <> \cf7 \strokec7 "Low income"\cf4 \cb1 \strokec4 \
\cb3  \cf5 \strokec5 AND\cf4 \strokec4  \strokec9 location\strokec4  <> \cf7 \strokec7 "European Union"\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 GROUP\cf4 \strokec4  \cf5 \strokec5 BY\cf4 \strokec4  \strokec9 location\cb1 \strokec4 \
\cf5 \cb3 \strokec5 ORDER\cf4 \strokec4  \cf5 \strokec5 BY\cf4 \strokec4  \strokec9 Total_Deaths\strokec4  \cf5 \strokec5 desc\cf4 \cb1 \strokec4 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 -- Global Numbers \cf4 \cb1 \strokec4 \
\
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 SELECT\cf4 \strokec4  \cf5 \strokec5 date\cf4 \strokec4 , \cf5 \strokec5 SUM\cf6 \strokec6 (\cf4 \strokec9 new_cases\cf6 \strokec6 )\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \strokec9 Total_Cases\strokec4 , \cf5 \strokec5 SUM\cf6 \strokec6 (\cf4 \strokec9 new_deaths\cf6 \strokec6 )\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \strokec9 Total_Deaths\strokec4 , \cf5 \strokec5 SUM\cf6 \strokec6 (\cf4 \strokec9 new_deaths\cf6 \strokec6 )/\cf5 \strokec5 NULLIF\cf6 \strokec6 (\cf5 \strokec5 SUM\cf6 \strokec6 (\cf4 \strokec9 new_cases\cf6 \strokec6 )\cf4 \strokec4 ,\cf8 \strokec8 0\cf6 \strokec6 )*\cf8 \strokec8 100\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \strokec9 Death_Percent\cb1 \strokec4 \
\cf5 \cb3 \strokec5 FROM\cf4 \strokec4  \cf7 \strokec7 `covid-19-398619.CVID_19_Data.Covid_Deaths`\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 WHERE\cf4 \strokec4  \strokec9 continent\strokec4  \cf5 \strokec5 is\cf4 \strokec4  \cf5 \strokec5 not\cf4 \strokec4  \cf5 \strokec5 null\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 GROUP\cf4 \strokec4  \cf5 \strokec5 BY\cf4 \strokec4  \cf5 \strokec5 date\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 ORDER\cf4 \strokec4  \cf5 \strokec5 BY\cf4 \strokec4  \cf8 \strokec8 1\cf4 \strokec4 ,\cf8 \strokec8 2\cf4 \cb1 \strokec4 \
\
\
\cf5 \cb3 \strokec5 SELECT\cf4 \strokec4  \cf5 \strokec5 SUM\cf6 \strokec6 (\cf4 \strokec9 new_cases\cf6 \strokec6 )\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \strokec9 Total_Cases\strokec4 , \cf5 \strokec5 SUM\cf6 \strokec6 (\cf4 \strokec9 new_deaths\cf6 \strokec6 )\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \strokec9 Total_Deaths\strokec4 , \cf5 \strokec5 SUM\cf6 \strokec6 (\cf4 \strokec9 new_deaths\cf6 \strokec6 )/\cf5 \strokec5 NULLIF\cf6 \strokec6 (\cf5 \strokec5 SUM\cf6 \strokec6 (\cf4 \strokec9 new_cases\cf6 \strokec6 )\cf4 \strokec4 ,\cf8 \strokec8 0\cf6 \strokec6 )*\cf8 \strokec8 100\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \strokec9 Death_Percent\cb1 \strokec4 \
\cf5 \cb3 \strokec5 FROM\cf4 \strokec4  \cf7 \strokec7 `covid-19-398619.CVID_19_Data.Covid_Deaths`\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 WHERE\cf4 \strokec4  \strokec9 continent\strokec4  \cf5 \strokec5 is\cf4 \strokec4  \cf5 \strokec5 not\cf4 \strokec4  \cf5 \strokec5 null\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 --GROUP BY date\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 ORDER\cf4 \strokec4  \cf5 \strokec5 BY\cf4 \strokec4  \cf8 \strokec8 1\cf4 \strokec4 ,\cf8 \strokec8 2\cf4 \cb1 \strokec4 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 -- Join two tables\cf4 \cb1 \strokec4 \
\
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 SELECT\cf4 \strokec4  \cf6 \strokec6 *\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 FROM\cf4 \strokec4  \cf7 \strokec7 `covid-19-398619.CVID_19_Data.Covid_Deaths`\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \strokec9 dea\cb1 \strokec4 \
\cf5 \cb3 \strokec5 JOIN\cf4 \strokec4  \cf7 \strokec7 `covid-19-398619.CVID_19_Data.Covid_Vaccinations`\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \strokec9 vac\cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb3  \cf5 \strokec5 ON\cf4 \strokec4  \strokec9 dea\strokec4 .\cf10 \strokec10 location\cf4 \strokec4  = \strokec9 vac\strokec4 .\strokec9 location\cb1 \strokec4 \
\cb3  \cf5 \strokec5 AND\cf4 \strokec4  \strokec9 dea\strokec4 .\cf10 \strokec10 date\cf4 \strokec4  = \strokec9 vac\strokec4 .\cf5 \strokec5 date\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 ORDER\cf4 \strokec4  \cf5 \strokec5 BY\cf4 \strokec4  \cf8 \strokec8 4\cf4 \cb1 \strokec4 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 -- Total Population VS Total Vaccinations\cf4 \cb1 \strokec4 \
\cf2 \cb3 \strokec2 -- Temp Table\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 WITH\cf4 \strokec4  \strokec9 pop_vac\strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \cf6 \strokec6 (\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 SELECT\cf4 \strokec4  \strokec9 dea\strokec4 .\strokec9 continent\strokec4 , \strokec9 dea\strokec4 .\strokec9 location\strokec4 , \strokec9 dea\strokec4 .\cf5 \strokec5 date\cf4 \strokec4 , \strokec9 dea\strokec4 .\strokec9 population\strokec4 , \strokec9 vac\strokec4 .\strokec9 new_vaccinations\strokec4 , \cf5 \strokec5 SUM\cf6 \strokec6 (\cf4 \strokec9 vac\strokec4 .\strokec9 new_vaccinations\cf6 \strokec6 )\cf4 \strokec4  \cf5 \strokec5 OVER\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf6 \cb3 \strokec6 (\cf5 \strokec5 PARTITION\cf4 \strokec4  \cf5 \strokec5 BY\cf4 \strokec4  \strokec9 dea\strokec4 .\strokec9 location\strokec4  \cf5 \strokec5 ORDER\cf4 \strokec4  \cf5 \strokec5 BY\cf4 \strokec4  \strokec9 dea\strokec4 .\strokec9 location\strokec4 , \strokec9 dea\strokec4 .\cf5 \strokec5 date\cf6 \strokec6 )\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \strokec9 Rolling_Vaccinations\cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 FROM\cf4 \strokec4  \cf7 \strokec7 `covid-19-398619.CVID_19_Data.Covid_Deaths`\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \strokec9 dea\cb1 \strokec4 \
\cf5 \cb3 \strokec5 JOIN\cf4 \strokec4  \cf7 \strokec7 `covid-19-398619.CVID_19_Data.Covid_Vaccinations`\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \strokec9 vac\cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb3  \cf5 \strokec5 ON\cf4 \strokec4  \strokec9 dea\strokec4 .\cf10 \strokec10 location\cf4 \strokec4  = \strokec9 vac\strokec4 .\strokec9 location\cb1 \strokec4 \
\cb3  \cf5 \strokec5 AND\cf4 \strokec4  \strokec9 dea\strokec4 .\cf10 \strokec10 date\cf4 \strokec4  = \strokec9 vac\strokec4 .\cf5 \strokec5 date\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 WHERE\cf4 \strokec4  \strokec9 dea\strokec4 .\strokec9 continent\strokec4  \cf5 \strokec5 is\cf4 \strokec4  \cf5 \strokec5 not\cf4 \strokec4  \cf5 \strokec5 null\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf6 \cb3 \strokec6 )\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 SELECT\cf4 \strokec4  \cf6 \strokec6 *\cf4 \strokec4 , \cf6 \strokec6 (\cf4 \strokec9 Rolling_Vaccinations\cf6 \strokec6 /\cf4 \strokec9 population\cf6 \strokec6 )*\cf8 \strokec8 100\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \strokec9 Rolling_Percent\cb1 \strokec4 \
\cf5 \cb3 \strokec5 FROM\cf4 \strokec4  \strokec9 pop_vac\cb1 \strokec4 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 -- Create Table\cf4 \cb1 \strokec4 \
\
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 CREATE\cf4 \strokec4  \cf5 \strokec5 TABLE\cf4 \strokec4  \strokec9 CVID_19_Data\strokec4 .\strokec9 pop_vac2\strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \cf6 \strokec6 (\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 WITH\cf4 \strokec4  \strokec9 pop_vac\strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \cf6 \strokec6 (\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 SELECT\cf4 \strokec4  \strokec9 dea\strokec4 .\strokec9 continent\strokec4 , \strokec9 dea\strokec4 .\strokec9 location\strokec4 , \strokec9 dea\strokec4 .\cf5 \strokec5 date\cf4 \strokec4 , \strokec9 dea\strokec4 .\strokec9 population\strokec4 , \strokec9 vac\strokec4 .\strokec9 new_vaccinations\strokec4 , \cf5 \strokec5 SUM\cf6 \strokec6 (\cf4 \strokec9 vac\strokec4 .\strokec9 new_vaccinations\cf6 \strokec6 )\cf4 \strokec4  \cf5 \strokec5 OVER\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf6 \cb3 \strokec6 (\cf5 \strokec5 PARTITION\cf4 \strokec4  \cf5 \strokec5 BY\cf4 \strokec4  \strokec9 dea\strokec4 .\strokec9 location\strokec4  \cf5 \strokec5 ORDER\cf4 \strokec4  \cf5 \strokec5 BY\cf4 \strokec4  \strokec9 dea\strokec4 .\strokec9 location\strokec4 , \strokec9 dea\strokec4 .\cf5 \strokec5 date\cf6 \strokec6 )\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \strokec9 Rolling_Vaccinations\cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 FROM\cf4 \strokec4  \cf7 \strokec7 `covid-19-398619.CVID_19_Data.Covid_Deaths`\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \strokec9 dea\cb1 \strokec4 \
\cf5 \cb3 \strokec5 JOIN\cf4 \strokec4  \cf7 \strokec7 `covid-19-398619.CVID_19_Data.Covid_Vaccinations`\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \strokec9 vac\cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb3  \cf5 \strokec5 ON\cf4 \strokec4  \strokec9 dea\strokec4 .\cf10 \strokec10 location\cf4 \strokec4  = \strokec9 vac\strokec4 .\strokec9 location\cb1 \strokec4 \
\cb3  \cf5 \strokec5 AND\cf4 \strokec4  \strokec9 dea\strokec4 .\cf10 \strokec10 date\cf4 \strokec4  = \strokec9 vac\strokec4 .\cf5 \strokec5 date\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 WHERE\cf4 \strokec4  \strokec9 dea\strokec4 .\strokec9 continent\strokec4  \cf5 \strokec5 is\cf4 \strokec4  \cf5 \strokec5 not\cf4 \strokec4  \cf5 \strokec5 null\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf6 \cb3 \strokec6 )\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 SELECT\cf4 \strokec4  \cf6 \strokec6 *\cf4 \strokec4 , \cf6 \strokec6 (\cf4 \strokec9 Rolling_Vaccinations\cf6 \strokec6 /\cf4 \strokec9 population\cf6 \strokec6 )*\cf8 \strokec8 100\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \strokec9 Rolling_Percent\cb1 \strokec4 \
\cf5 \cb3 \strokec5 FROM\cf4 \strokec4  \strokec9 pop_vac\cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf6 \cb3 \strokec6 )\cf4 \cb1 \strokec4 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2 -- Updated Table\cf4 \cb1 \strokec4 \
\
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 CREATE\cf4 \strokec4  \cf5 \strokec5 TABLE\cf4 \strokec4  \strokec9 CVID_19_Data\strokec4 .\strokec9 pop_vac\strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \cb1 \
\pard\pardeftab720\partightenfactor0
\cf6 \cb3 \strokec6 (\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb3   \cf5 \strokec5 SELECT\cf4 \strokec4  \strokec9 dea\strokec4 .\strokec9 continent\strokec4 , \strokec9 dea\strokec4 .\strokec9 location\strokec4 , \strokec9 dea\strokec4 .\cf5 \strokec5 date\cf4 \strokec4 , \strokec9 dea\strokec4 .\strokec9 population\strokec4 , \strokec9 vac\strokec4 .\strokec9 new_vaccinations\strokec4 , \cf5 \strokec5 SUM\cf6 \strokec6 (\cf4 \strokec9 vac\strokec4 .\strokec9 new_vaccinations\cf6 \strokec6 )\cf4 \strokec4  \cf5 \strokec5 OVER\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf6 \cb3 \strokec6 (\cf5 \strokec5 PARTITION\cf4 \strokec4  \cf5 \strokec5 BY\cf4 \strokec4  \strokec9 dea\strokec4 .\strokec9 location\strokec4  \cf5 \strokec5 ORDER\cf4 \strokec4  \cf5 \strokec5 BY\cf4 \strokec4  \strokec9 dea\strokec4 .\strokec9 location\strokec4 , \strokec9 dea\strokec4 .\cf5 \strokec5 date\cf6 \strokec6 )\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \strokec9 Rolling_Vaccinations\cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 FROM\cf4 \strokec4  \cf7 \strokec7 `covid-19-398619.CVID_19_Data.Covid_Deaths`\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \strokec9 dea\cb1 \strokec4 \
\cf5 \cb3 \strokec5 JOIN\cf4 \strokec4  \cf7 \strokec7 `covid-19-398619.CVID_19_Data.Covid_Vaccinations`\cf4 \strokec4  \cf5 \strokec5 AS\cf4 \strokec4  \strokec9 vac\cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb3  \cf5 \strokec5 ON\cf4 \strokec4  \strokec9 dea\strokec4 .\cf10 \strokec10 location\cf4 \strokec4  = \strokec9 vac\strokec4 .\strokec9 location\cb1 \strokec4 \
\cb3  \cf5 \strokec5 AND\cf4 \strokec4  \strokec9 dea\strokec4 .\cf10 \strokec10 date\cf4 \strokec4  = \strokec9 vac\strokec4 .\cf5 \strokec5 date\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 WHERE\cf4 \strokec4  \strokec9 dea\strokec4 .\strokec9 continent\strokec4  \cf5 \strokec5 is\cf4 \strokec4  \cf5 \strokec5 not\cf4 \strokec4  \cf5 \strokec5 null\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf6 \cb3 \strokec6 )\cf4 \cb1 \strokec4 \
\
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 SELECT\cf4 \strokec4  \cf6 \strokec6 *\cf4 \cb1 \strokec4 \
\cf5 \cb3 \strokec5 FROM\cf4 \strokec4  \cf7 \strokec7 `covid-19-398619.CVID_19_Data.pop_vac`\cf4 \cb1 \strokec4 \
\
\
\
\
\
\
\
\
}