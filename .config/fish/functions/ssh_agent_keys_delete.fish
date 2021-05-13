function ssh_agent_keys_delete -e fish_exit
	ssh-add -D
end
