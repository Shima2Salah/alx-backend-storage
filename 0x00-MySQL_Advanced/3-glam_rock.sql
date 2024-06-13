-- Switch to the appropriate database
USE holberton;

-- Create the query to list bands with Glam rock as their main style and calculate their lifespan
SELECT
    name AS band_name,
    IFNULL(2022 - YEAR(formed), 0) - IFNULL(2022 - YEAR(split), 0) AS lifespan
FROM
    metal_bands
WHERE
    style = 'Glam rock'
ORDER BY
    lifespan DESC;
