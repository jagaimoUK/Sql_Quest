select program.name, season.season, episode.episode, episode.title, episode.views from episode
join season
on episode.fk_program_id = season.fk_program_id
join program
on season.fk_program_id = program.id \G
order by episode.views desc
limit 3;
