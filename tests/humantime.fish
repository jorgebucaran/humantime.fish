functions --query humantime || exit

@test "milliseconds" (humantime 1) = 1ms
@test "scale=1 seconds" (humantime 60) = 0.1s
@test "seconds" (humantime 1000) = 1s
@test "minutes" (humantime 60000) = 1m
@test "hours" (humantime 3600000) = 1h
@test "hours seconds" (humantime 3601000) = "1h 1s"
@test "hours minutes" (humantime 3660000) = "1h 1m"
@test "hours minutes seconds" (humantime 3661000) = "1h 1m 1s"
@test "pie" (humantime 11655900) = "3h 14m 15.9s"