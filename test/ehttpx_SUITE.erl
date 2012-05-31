
-module(ehttpx_SUITE).
-compile(export_all).
suite() ->
	[].

init_per_suite(Config) ->
	Config.

end_per_suite(Config) ->
	ok.

init_per_testcase(_TestCase, Config) ->
	Config.
end_per_testcase(_TestCase, _Config) ->
	ok.

all() ->
	[
	 my_test,
	 my_test2
	].
	
	
my_test(_) ->
	ok.
my_test2(_) ->
	1=1,
	ok.