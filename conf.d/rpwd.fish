if status is-interactive
	function __rpwd --on-variable PWD --description 'Remembers last known PWD and CDs there when new shell is opened'
		set -U __rpwd_known_pwd $PWD
	end

	if set --query __rpwd_known_pwd
    	cd $__rpwd_known_pwd
	end
end

function __rpwd_uninstall --on-event rpwd_uninstall
  set -eU __rpwd_known_pwd
end
