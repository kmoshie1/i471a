-module(fn_server).

% the function started by spawn needs to be exported, else erlang
% seems to remove it.  It is easiest to simply export all functions.
-compile(export_all).


% start computational server which returns Fn(...Args) for
% each client request of the form { ClientPid, Args }
% where Args is a list of the arguments.
start(Fn) -> 
	spawn(fn_server, server, [Fn]).


% stop fn server with PID ServerPid.
stop(ServerPid) -> 
	ServerPid ! stop.

% return next random number from server at ServerPid
compute(ServerPid, Args) ->
	ServerPid ! { self(), Args},
	receive
		{ _, Result } -> Result
	end.

% TODO: auxiliary functions...

server(Fn) ->
	receive
		{ ClientPid, Args } ->
			Result = apply(Fn, Args),
			ClientPid ! { self(), Result },
			server(Fn);
		stop ->
			true
	end.

