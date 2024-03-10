select p3.name, p5.channel_name, p4.start_time, p4.end_time, p2.season, p1.episode, p1.title, p1.episode_content from episode as p1
join season as p2
on p1.fk_program_id = p2.fk_program_id
join program as p3
on p2.fk_program_id = p3.id
join program_in_channel as p4
on p3.id = p4.fk_program_id
join channel as p5
on p4.fk_channel_code = p5.channel_code\G
where p3.name = 'ドラマ'
and CURRENT_DATE <= p4.start_time and p4.start_time <= CURRENT_DATE + INTERVAL '7 DAY';
