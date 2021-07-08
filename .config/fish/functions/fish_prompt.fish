function fish_prompt --description 'Write out the prompt'
	set	-l	prompt (set_color green)"$USER@"(prompt_hostname)(set_color $fish_color_normal)
	set	-la	prompt (set_color blue)(basename (prompt_pwd))(set_color $fish_color_normal)
	set	-la	prompt ": "

	echo $prompt
end
