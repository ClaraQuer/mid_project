USE p5;

SELECT i.continent, i.region, p.iso3, i.country_name, i.indicator_id, i.value, p.democ, p.autoc, p.polity, id.indicator_name, d.dimension
FROM in17 i
    LEFT JOIN p5_score p
        ON i.country_name = p.country
    JOIN indicator id
        USING (indicator_id)
	LEFT JOIN dimensions d
		USING (indicator_id)
GROUP BY country_name, indicator_id
ORDER BY country_name
        
;
