# include .env file and export its env vars
# (-include to ignore error if it does not exist)
-include .env

.PHONY: test

# deps
install  :; forge install
update   :; forge update

# Build & test
build    :; forge build
test     :; forge test
trace    :; forge test -vvv
clean    :; forge clean
coverage :; forge coverage
snapshot :; forge snapshot
fmt      :; forge fmt
