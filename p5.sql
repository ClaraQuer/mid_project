USE p5;

SELECT *
FROM p5_score;

SELECT COUNT(DISTINCT(country_name))
FROM in17;

SELECT COUNT(DISTINCT indicator_name)
FROM indicator;

SELECT COUNT(DISTINCT indicator_name)
FROM dimensions;

SELECT i.continent, i.region, p.iso3, i.country_name, i.indicator_id, i.value, p.democ, p.autoc, p.polity, id.indicator_name
FROM in17 i
	LEFT JOIN p5_score p
		ON i.country_name = p.country
	JOIN indicator_id
		USING (indicator_id)
	 
;

SELECT *
FROM in17 i
	JOIN p5_score p
		ON i.country_name = p.country
	JOIN indicator id
		USING (indicator_id)
WHERE indicator_id = 177006;
