-- SQL script that lists all bands with Glam rock as their main style, ranked by their longevity
-- Column names must be: band_name and lifespan (in years)
-- use attributes formed and split for computing the lifespan

SELECT band_name, (YEAR('2022-01-01') - MIN(formed)) AS lifespan FROM metal_bands
WHERE style = 'Glam rock' GROUP BY band_name ORDER BY lifespan DESC;
