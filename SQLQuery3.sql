Select Location,MAX(cast(total_deaths as int)) As Death_Count
from Project_2..CovidDeaths$
where continent is null 
and location not in('World','European Union','International')
group by location
order by Death_Count desc;

Select Location,population,MAX(Total_Cases) As Highest_InfectionCount,Max(Cases_Percent) As Maximum_Percent_Affected
from Project_2..CovidDeaths$
group by Location,population
order by Maximum_Percent_Affected desc;

Select Location,population,date, MAX(Total_Cases) As Highest_InfectionCount,Max(Cases_Percent) As Maximum_Percent_Affected
from Project_2..CovidDeaths$
group by Location,population, date
order by Maximum_Percent_Affected desc;