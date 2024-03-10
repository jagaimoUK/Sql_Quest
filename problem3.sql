select p4.channel_name, p3.start_time, p3.end_time, p2.season, p1.episode, p1.title, p1.episode_content from episode as p1
join season as p2
on p1.fk_program_id = p2.fk_program_id
join program_in_channel as p3
on p2.fk_program_id = p3.fk_program_id
join channel as p4
on p3.fk_channel_code = p4.channel_code\G;
