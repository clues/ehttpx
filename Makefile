
PREFIX:=../
DEST:=$(PREFIX)$(PROJECT)

REBAR=./rebar

all:
	@rm -rf ./deps
	@$(REBAR) get-deps	
	@$(REBAR)  compile

edoc:
	@$(REBAR) doc

compile:
	@$(REBAR) compile

test: clean \
	compile
	@$(REBAR) ct

clean:
	@$(REBAR) clean
	@rm -rf ./test/*.beam
	@rm -f skyFS-storage.zip

build_plt:
	@$(REBAR) skyFS-storage-plt

dialyzer:
	@$(REBAR) dialyze

get_deps:	del_deps
	@$(REBAR) get-deps

del_deps:
	@rm -rf ./deps

test-compile:
	@erlc -I include  -W0 -DTEST=true -o ./ebin src/*.erl

test_suite:clean \
	compile
	@$(REBAR) ct suite=ct_group
	

	
