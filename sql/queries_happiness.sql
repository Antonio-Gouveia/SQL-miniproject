use happiness_data;

-- Felicidade e Inovação: os países mais inovadores são também os mais felizes?
SELECT
    h.Country AS Happiness_Country,
    h.Score AS Happiness_Score_2015,
    i.Score_2015 AS Innovation_Score_2015,
    i.Rank_2015 AS Innovation_Rank_2015
FROM
    happiness_scores AS h
INNER JOIN
    gdp_percapita AS gdp_p ON h.Country = gdp_p.Country
INNER JOIN
    innovation_score AS i ON gdp_p.Code = i.Code
WHERE
    h.Year = 2015 AND i.Score_2015 > 0
ORDER BY
    h.Score DESC
LIMIT 15;


-- PIB, Inovação e Felicidade
SELECT
    h.Country AS Country,
    h.Score AS Happiness_score,
    h.GDP_per_capita AS PIB_Per_Capita, -- Adicionado
    i.Score_2015 AS Innovation_score,
    i.Rank_2015 AS Innovation_rank
FROM
    happiness_scores AS h
INNER JOIN
    gdp_percapita AS gdp_p ON h.Country = gdp_p.Country
INNER JOIN
    innovation_score AS i ON gdp_p.Code = i.Code
WHERE
    h.Year = 2015 AND i.Score_2015 > 0
ORDER BY
    h.Score DESC
LIMIT 15;


-- AVG of values in from 2011 to 2020
SELECT 
    ROUND(AVG(h.score),2) AS avg_happiness,
    ROUND(AVG((i.Score_2011 + i.Score_2012 +i.Score_2013+i.Score_2014+i.Score_2015+i.Score_2016+
    i.Score_2017+i.Score_2018+i.Score_2019)/9),2) AS avg_innovation,
    ROUND(AVG((gp.y2011 + gp.y2012 +gp.y2013+gp.y2014+gp.y2015+gp.y2016+
    gp.y2017+gp.y2018+gp.y2019+gp.y2020)/10),2) AS avg_GDP_percapita
FROM happiness_scores h
join gdp_percapita gp
on h.Country = gp.Country
join innovation_score i
on i.code = gp.code;


-- for each country
CREATE OR REPLACE VIEW combined_data AS
SELECT 
    h.country,
    ROUND(AVG(h.score),2) AS avg_happiness,
    ROUND(AVG((i.Score_2011 + i.Score_2012 +i.Score_2013+i.Score_2014+i.Score_2015+i.Score_2016+
    i.Score_2017+i.Score_2018+i.Score_2019)/9),2) AS avg_innovation,
    ROUND(AVG((gp.y2011 + gp.y2012 +gp.y2013+gp.y2014+gp.y2015+gp.y2016+
    gp.y2017+gp.y2018+gp.y2019+gp.y2020)/10),2) AS avg_GDP_percapita
FROM happiness_scores h
join gdp_percapita gp
on h.Country = gp.Country
join innovation_score i
on i.code = gp.code
GROUP BY h.country;

select *
from combined_data;


-- list of countries more then happiness avg

SELECT 
    h.country,
    ROUND(AVG(h.score),2) AS avg_happiness,
    ROUND(AVG((i.Score_2011 + i.Score_2012 +i.Score_2013+i.Score_2014+i.Score_2015+i.Score_2016+
    i.Score_2017+i.Score_2018+i.Score_2019)/9),2) AS avg_innovation,
    ROUND(AVG((gp.y2011 + gp.y2012 +gp.y2013+gp.y2014+gp.y2015+gp.y2016+
    gp.y2017+gp.y2018+gp.y2019+gp.y2020)/10),2) AS avg_GDP_percapita
FROM happiness_scores h
join gdp_percapita gp
on h.Country = gp.Country
join innovation_score i
on i.code = gp.code
GROUP BY h.country
having avg_happiness > (
	SELECT 
    ROUND(AVG(h.score),2) AS avg_happiness
FROM happiness_scores h
);


-- put everything together
SELECT * from combined_data order by avg_happiness desc;
SELECT * from combined_data order by avg_innovation desc;
SELECT * from combined_data order by avg_GDP_percapita desc;


SELECT
    MIN(avg_happiness) AS min_happiness,
    MAX(avg_happiness) AS max_happiness,
    AVG(avg_happiness) AS avg_happiness,
    STD(avg_happiness) AS std_happiness,
    MIN(avg_innovation) AS min_innovation,
    MAX(avg_innovation) AS max_innovation,
    AVG(avg_innovation) AS avg_innovation,
    STD(avg_innovation) AS std_innovation,
    MIN(avg_GDP_percapita) AS min_gdp,
    MAX(avg_GDP_percapita) AS max_gdp,
    AVG(avg_GDP_percapita) AS avg_gdp,
    STD(avg_GDP_percapita) AS std_gdp
FROM combined_data;