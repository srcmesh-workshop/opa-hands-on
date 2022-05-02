# opa eval -i input.json -d policy.rego "data.play"
# http://hk.noobyard.com/article/p-etbaqwrd-dm.html

package play

import future.keywords.every
import future.keywords.in

default test_1 = false
default test_2 = false
default test_3 = false
default test_4 = false

no_bitcoin_miners_using_every {
    every app in input.apps {
        app.name != "bitcoin-miner"
    }
}

test_1 {
  no_bitcoin_miners_using_every
}

test_2 {
  not no_bitcoin_miners_using_every
}

no_bitcoin_miners {
    app := input.apps[_]
    app.name != "bitcoin-miner"  # THIS IS NOT CORRECT.
}

test_3 {
  no_bitcoin_miners
}

test_4 {
  not no_bitcoin_miners
}