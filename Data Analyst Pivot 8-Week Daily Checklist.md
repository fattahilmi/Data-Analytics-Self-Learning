# Data Analyst Pivot: 8-Week Daily Checklist

Pace: 1-2 hours a day, about 9-10 hours a week. Pair the sessions: do Day 1 and Day 2 together on one calendar day (about 1 hr 45 min), Day 3 and Day 4 on the next, and Day 5 and Day 6 on the third. Each week block then takes 3 study days, so weeks 1-8 take about 4 calendar weeks. From week 5, Tableau Public takes over most of the time. Keep one full rest day each week. Tick a box by changing `[ ]` to `[x]`.

**Practice sources:** DataLemur and StrataScratch for SQL problems, the Olist dataset for SQL and Excel, Tableau's free training videos for Tableau Public.

## Before you start (20 min, once)

- [ ] Pick one SQL sandbox (DuckDB locally, or DB Fiddle / SQLite Online)
- [ ] Load the Olist orders and order\_items CSVs into it
- [ ] Create a free DataLemur account
- [ ] Create a notes file for the Day 6 reviews (what clicked, what confused you, what mistakes you made)

## Week 1: Ranking and offset window functions, pivot tables

**Day 1, SQL (1 hr): ranking functions**

- [ ] Learn `ROW_NUMBER() OVER (PARTITION BY ... ORDER BY ...)`
- [ ] Learn how `RANK` and `DENSE_RANK` differ from `ROW_NUMBER` when there are ties
- [ ] Write 3 queries on Olist (for example, rank orders by price within each seller)

* Done when: you can explain the three functions in your own words without notes

**Day 2, Excel (45 min): pivot tables**

- [ ] Load a small Kaggle CSV or an Olist extract
- [ ] Build 3 pivot tables: totals by category, by month, and by region
- [ ] Add one pivot chart

* Done when: you can build a pivot from scratch with no tutorial open

**Day 3, SQL (1 hr): top-N per group**

- [ ] Practice filtering on rank using a CTE or subquery
- [ ] Write a "top 3 products per category" query
- [ ] Solve 2 DataLemur window function problems

* Done when: you can solve a top-N-per-group problem in under 15 minutes

**Day 4, Excel (45 min): XLOOKUP and conditional formatting**

- [ ] Use XLOOKUP to join two sheets (for example, orders and customers)
- [ ] Handle the not-found case with the `if_not_found` argument
- [ ] Apply conditional formatting (color scales, top 10%)

* Done when: you can reproduce a simple SQL join result in Excel

**Day 5, SQL (1 hr): LAG and LEAD**

- [ ] Learn `LAG()` and `LEAD()`
- [ ] Write a month-over-month revenue change query on Olist
- [ ] Solve 2 DataLemur month-over-month or growth problems

* Done when: you compute percent change between periods correctly

**Day 6, Review (30 min, optional)**

- [ ] Redo your weakest SQL problem without looking at your solution
- [ ] Write 3 lines in your notes file

**Day 7:** rest

## Week 2: Running aggregates, Excel formulas and cleaning

**Day 1, SQL (1 hr): running totals**

- [ ] Learn `SUM() OVER (ORDER BY ...)` for cumulative sums
- [ ] Write a cumulative monthly revenue query on Olist

* Done when: you can explain why the ORDER BY changes the result

**Day 2, Excel (45 min): conditional aggregation**

- [ ] Use SUMIFS and COUNTIFS on a multi-condition question (for example, late orders in one category)
- [ ] Check one result against a pivot table

* Done when: SUMIFS results match your pivot

**Day 3, SQL (1 hr): moving averages**

- [ ] Learn `ROWS BETWEEN n PRECEDING AND CURRENT ROW`
- [ ] Write a 3-month moving average of orders
- [ ] Solve 2 DataLemur problems on rolling metrics

* Done when: you can describe the difference between ROWS and RANGE frames

**Day 4, Excel (45 min): IF logic and cleaning**

- [ ] Use IF and IFS to bucket values (for example, delivery time bands)
- [ ] Clean a messy column with TRIM, text functions, and Remove Duplicates

* Done when: you can turn a messy column into a clean, categorized one

**Day 5, SQL (1 hr): running totals per group**

- [ ] Combine `PARTITION BY` with a running total (for example, per seller)
- [ ] Solve 2 more DataLemur problems

* Done when: you can write a partitioned running total without looking anything up

**Day 6, Review (30 min, optional):** redo your weakest problem and update your notes file

**Day 7:** rest

## Week 3: CTEs and Power Query

**Day 1, SQL (1 hr): CTE basics**

- [ ] Rewrite two of your earlier subquery-based queries using CTEs
- [ ] Name CTEs so the query reads top to bottom

* Done when: a teammate could read your query without asking what each step does

**Day 2, Excel (45 min): Power Query import and clean**

- [ ] Import a CSV through Power Query (Data > Get Data)
- [ ] Remove columns, change types, filter rows, and rename steps

* Done when: you can refresh the query after replacing the source file

**Day 3, SQL (1 hr): chained CTEs**

- [ ] Write a multi-step analysis using 3 or more chained CTEs (for example, orders, then delivery delay, then review score by delay band)
- [ ] Solve 2 DataLemur problems that need multiple steps

* Done when: you can break a business question into CTE steps before writing code

**Day 4, Excel (45 min): Power Query merge and unpivot**

- [ ] Merge two tables in Power Query (the join equivalent)
- [ ] Try append and unpivot on a small dataset

* Done when: you can explain what each Power Query step does in SQL terms

**Day 5, SQL (1 hr): recursive CTEs**

- [ ] Generate a date sequence with a recursive CTE
- [ ] Use it to fill missing dates in a daily orders count

* Done when: you understand the anchor and recursive parts

**Day 6, Review (30 min, optional):** redo your weakest problem and update your notes file

**Day 7:** rest

## Week 4: Conditional aggregation, Excel mini-dashboard

**Day 1, SQL (1 hr): CASE WHEN inside aggregates**

- [ ] Write queries using `COUNT(CASE WHEN ... THEN 1 END)` and `SUM(CASE WHEN ...)`
- [ ] Calculate late delivery rate per seller

* Done when: you can calculate a rate with one query and no subqueries

**Day 2, Excel (45 min): dashboard layout**

- [ ] Plan a one-page dashboard on paper: 3 KPIs and 3 charts
- [ ] Build the pivot tables behind it and add slicers

* Done when: the slicers filter every chart

**Day 3, SQL (1 hr): subtotals**

- [ ] Practice `GROUP BY ROLLUP` and `GROUP BY CUBE` (supported in DuckDB and PostgreSQL)
- [ ] Use `HAVING` to filter aggregated groups
- [ ] Solve 2 DataLemur aggregation problems

* Done when: you can explain what the NULLs in a ROLLUP result mean

**Day 4, Excel (45 min): finish the mini-dashboard**

- [ ] Add titles, clean formatting, and a headline insight
- [ ] Write 3 one-sentence findings next to the charts

* Done when: someone could read it in 30 seconds and know the takeaway

**Day 5, SQL (1 hr): pivot-style output**

- [ ] Turn rows into columns using conditional aggregation (for example, orders by month as columns)
- [ ] Solve 2 DataLemur problems

* Done when: you can reproduce an Excel pivot result in SQL

**Day 6, Review (45 min):** retake one problem from each of weeks 1-4 and note which concepts are still weak

**Day 7:** rest

## Week 5: Cohorts in SQL, Tableau Public setup

Tableau Public is free and runs natively on your Mac. Everything you publish there is public, so use only public datasets like Olist, never real client data.

**Day 1, SQL (1 hr): cohort retention, part 1**

- [ ] Define a customer's first order month (the cohort)
- [ ] Count customers per cohort and later period

* Done when: you can describe what a retention table shows

**Day 2, Tableau Public setup (45 min)**

- [ ] Download Tableau Public and create a free account
- [ ] Watch the free getting-started training videos
- [ ] Connect the Olist CSVs as data sources

* Done when: you can see your Olist tables on the data source page

**Day 3, SQL (1 hr): cohort retention, part 2**

- [ ] Turn the counts into a retention percentage by month
- [ ] Solve 2 DataLemur retention or cohort problems

* Done when: your retention percentages are right in every cohort

**Day 4, Tableau Public (1 hr): dimensions, measures, first charts**

- [ ] Learn the difference between dimensions and measures
- [ ] Build a bar chart, a line chart, and a KPI number from Olist

* Done when: you can build each chart without a tutorial open

**Day 5, Tableau Public (1 hr): first dashboard**

- [ ] Combine 2-3 sheets on one dashboard with a filter
- [ ] Publish it to your Tableau Public profile

* Done when: you have a public link you could show someone

**Day 6, Review (30 min, optional):** update your notes file

**Day 7:** rest

## Week 6: Funnels in SQL, relationships and calculated fields

**Day 1, SQL (1 hr): funnel drop-off**

- [ ] Build a funnel from order stages (created, approved, shipped, delivered)
- [ ] Calculate the drop-off rate between each stage

* Done when: you can explain where most orders are lost

**Day 2, Tableau Public (1 hr): relationships and star schema**

- [ ] Read about fact tables and dimension tables
- [ ] Draw the Olist star schema on paper, then recreate it with relationships on the data source page

* Done when: you can name the fact table and its dimensions

**Day 3, SQL (1 hr): growth patterns**

- [ ] Combine LAG, CTEs, and conditional aggregation in one month-over-month growth query
- [ ] Solve 2 DataLemur problems

* Done when: you can write a growth query from scratch in under 20 minutes

**Day 4, Tableau Public (1 hr): calculated fields**

- [ ] Write calculated fields with IF, CASE, and DATEDIFF (for example, a late delivery flag)
- [ ] Build a late delivery rate by seller

* Done when: your rate matches the SQL result you wrote in week 4

**Day 5, Tableau Public (1 hr): dates**

- [ ] Truncate dates to month and year
- [ ] Learn continuous vs discrete dates and when each is used

* Done when: you can show orders by month as a clean line chart

**Day 6, Review (30 min, optional):** retake one funnel or cohort problem and update your notes file

**Day 7:** rest

## Week 7: LOD expressions and table calculations

**Day 1, SQL maintenance (45 min):** solve 2 mixed DataLemur problems you have not seen before

**Day 2, Tableau Public (1 hr): LOD expressions**

- [ ] Learn `{ FIXED ... : ... }` expressions
- [ ] Use one to find each customer's first order date (the cohort, as in SQL)

* Done when: you can say when FIXED is needed instead of a normal aggregate

**Day 3, Tableau Public (1 hr): table calculations**

- [ ] Build a running total and a percent difference from the previous month
- [ ] Compare them to your SQL window function results

* Done when: the numbers match your SQL

**Day 4, Tableau Public (1 hr): dashboard design**

- [ ] Use layout containers, a consistent color palette, and clear titles
- [ ] Add a filter action and tooltips

* Done when: the dashboard looks consistent and filters every sheet

**Day 5, Tableau Public (1 hr): practice**

- [ ] Rebuild 3 of your SQL queries as Tableau charts
- [ ] Check each one against the SQL output

* Done when: every chart matches its query

**Day 6, Review (30 min, optional):** write down which Tableau concepts are still unclear

**Day 7:** rest

## Week 8: First portfolio project

**Day 1, SQL maintenance (45 min):** solve 2 mixed DataLemur problems

**Day 2, Tableau Public (1 hr): polish**

- [ ] Improve one earlier dashboard: titles, layout, and a clear headline number

* Done when: someone could read it in 30 seconds and know the takeaway

**Day 3, Project 1 framing (1 hr)**

- [ ] Open the portfolio project brief template
- [ ] Fill in sections 1-3 (client context, business question, scope and data)

* Done when: your business question is a business question, not a technical one

**Day 4, Project 1 SQL (1 hr)**

- [ ] Write the core analysis queries with CTEs and window functions
- [ ] Comment each query

* Done when: another analyst could read and rerun your SQL

**Day 5, Project 1 dashboard (1 hr)**

- [ ] Export your SQL results to CSV and build a 3-5 sheet Tableau Public dashboard
- [ ] Publish it to your profile

* Done when: the dashboard tells one clear story

**Day 6, Project 1 memo (45 min)**

- [ ] Write the one-page executive memo: headline finding, evidence, recommendation, caveat
- [ ] Practice explaining the finding aloud in English in one sentence

* Done when: you can present it without notes

**Day 7:** rest

## Month 2: Second project and statistics (study weeks 5-8)

From here the plan is weekly goals, not daily steps. Daily checklists for each phase are written when you reach it, so they can reflect how the earlier phase went. Keep about 3 DataLemur or StrataScratch problems every week in every phase.

**Week 5: Project 2 setup**

- [ ] Fill in sections 1-3 of the project brief template (seller performance on Olist)
- [ ] Write the core SQL with CTEs and window functions

* Done when: your business question and SQL are finished

**Week 6: Project 2 delivery**

- [ ] Build the Tableau Public dashboard (3-5 sheets) and publish it
- [ ] Write the one-page executive memo

* Done when: you can present it aloud in English in one sentence

**Week 7: Applied statistics**

- [ ] Learn descriptive statistics, distributions, and outliers
- [ ] Learn correlation vs causation and basic hypothesis testing (t-test, p-value, confidence interval)
- [ ] Run one test in Python or Excel on Olist data

* Done when: you can explain a p-value to a non-technical person

**Week 8: Project 3 setup**

- [ ] Frame a statistics-heavy question (for example, does faster delivery lead to repeat purchases, or is it category-driven?)
- [ ] Write the SQL and run the statistical test

* Done when: your framing and numbers are finished

## Month 3: Job-ready (study weeks 9-12)

**Week 9: Finish Project 3**

- [ ] Build the dashboard and publish it
- [ ] Write the memo, including one honest caveat

**Week 10: Resume and profile**

- [ ] Rewrite your resume around your BA work, your analyst internship, and 3 linked projects
- [ ] Update LinkedIn and put your projects in a GitHub repo with clear READMEs
- [ ] Ask about internal analytics openings at your current firm

**Week 11: Interview practice**

- [ ] Do 3 timed SQL sessions (live-test style, 30 minutes each)
- [ ] Practice 3 case questions out loud in English (for example, revenue dropped 15%, how do you investigate?)
- [ ] Prepare 3 stories from your BA and internship experience (conflict, ambiguity, a result)

**Week 12: Start applying**

- [ ] Apply to 5 roles per week (Big 4 advisory analytics, multinationals, consulting)
- [ ] Track applications in a simple table and note feedback after each interview

* Keep going: you can keep learning while the hiring process runs, which usually takes 1-3 months

## Months 4-6: Analytics engineering

Start this while you apply. It is the bridge toward data engineering.

**Month 4: Tools and modeling**

- [ ] Learn Git basics (branches, commits, pull requests) and use them on all projects
- [ ] Learn data modeling: facts, dimensions, grain, star schema
- [ ] Use Python (pandas and DuckDB) to clean and load data

**Month 5: dbt**

- [ ] Install dbt with DuckDB and build staging and mart models on Olist
- [ ] Add tests (unique, not null, relationships) and write model documentation

**Month 6: Project 4**

- [ ] Finish a tested, documented warehouse project on GitHub with a short README
- [ ] Connect your Tableau Public dashboard to its output

* Done when: a stranger could clone the repo and reproduce your results

## Months 6-9: Data engineering

**Month 7: Foundations**

- [ ] Learn Docker basics and run your project in a container
- [ ] Learn Python scripting for ingestion (APIs, files, error handling)

**Month 8: Orchestration and cloud**

- [ ] Learn Airflow and schedule your pipeline
- [ ] Learn basics of one cloud platform (GCP BigQuery or AWS) with free-tier credits

**Month 9: Portfolio and applications**

- [ ] Build an end-to-end pipeline project: ingest, store, transform, schedule, test, and serve
- [ ] Update your resume for data engineering and start applying