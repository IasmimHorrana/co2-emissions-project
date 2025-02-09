/* 1. Como as emissões de CO₂ per capita mudaram ao longo do tempo de 20 para países específicos?*/

SELECT 
	entity,
	year,
	annual_co2_per_capita
FROM 
	co2_emissions
WHERE 
	entity = 'Qatar', '' AND year >= 2000
	
-- Encontre a média, o mínimo, e o máximo das emissões para o Qatar, para obter uma visão mais ampla.*/


	

/* 2. Ranking de Países
Quais são os países com as maiores e menores emissões de CO₂ per capita em um determinado ano?*/

SELECT 
    entity, 
    year, 
    annual_co2_per_capita, 
    RANK() OVER (ORDER BY annual_co2_per_capita DESC) AS rank_maior -- Principal conceito de WF, cria uma "janela" onde fazem nossos calculos
FROM 
    co2_emissions
WHERE 
    year = 2023
ORDER BY 
    annual_co2_per_capita DESC;

/* 3. Média Anual Global
Qual é a média de emissões de CO₂ per capita global por ano? (Isso ajuda a identificar se as emissões estão aumentando ou diminuindo globalmente).*/

SELECT ROUND(AVG(annual_co2_per_capita),4) AS "Media", year
FROM co2_emissions 
GROUP BY annual_co2_per_capita, year
ORDER BY year;

/* 4. Picos e Outliers
Existe algum país com emissões extremamente altas ou baixas comparado ao restante no mesmo ano?
Quais anos têm os valores mais discrepantes (emissões muito altas ou muito baixas) para determinados países?*/

/* 5. Comparação Entre Países
Compare dois ou mais países de interesse (por exemplo, países industrializados vs. países em desenvolvimento) para ver como as emissões mudaram ao longo do tempo.
Quais países tiveram trajetórias de emissões semelhantes ao longo dos anos?*/

/* 6. Análise Regional (se aplicável)
Se você pode agrupar países por região ou continente (usando outra fonte de dados para complementar), como as emissões variam por região ao longo do tempo?
Quais regiões têm as maiores e menores emissões médias por ano?*/

/* 7. Ano com Maior Impacto
Qual foi o ano com as emissões de CO₂ per capita mais altas para cada país?
Existe um padrão global de aumento ou redução em determinados períodos históricos 
(por exemplo, eventos como guerras, crises econômicas, avanços tecnológicos)?*/

/* 8. Variação Anual
Qual é a variação média das emissões de CO₂ per capita de um ano para o outro em cada país?
Quais países têm as mudanças mais estáveis ou mais voláteis nas emissões?*/

/* 9. Identificação de Países Líderes ou Atrasados
Quais países consistentemente aparecem entre os maiores emissores de CO₂ per capita?
Quais países têm as menores emissões ao longo do tempo? Algum deles reduziu suas emissões para perto de zero?*/

/* 10. Tendência Global
Existe um padrão claro de aumento ou diminuição nas emissões de CO₂ per capita quando você considera todos os países juntos?
Como os valores médios de emissões globais mudaram por décadas ou por intervalos de tempo mais longos?*/

/* 11. Média por continente encontrado no dataset: */

SELECT 
    entity AS continent, 
    ROUND(AVG(annual_co2_per_capita),4) AS avg_emission
FROM 
    co2_emissions
WHERE 
    entity IN ('Africa', 'Asia', 'Europe', 'North America', 'South America')
GROUP BY 
    entity;

