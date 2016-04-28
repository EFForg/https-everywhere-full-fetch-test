# HTTPS Everywhere Full Fetch Test

This is a docker wrapper for running a full fetch test which re-enables all rules previously marked as broken via `default_off='failed ruleset test'`, and then uses the fetch test to disable all broken rulesets it finds.

# Running

    docker build -t httpse-fetch .
    docker run -it --rm -v $(pwd)/patch:/patch httpse-fetch

This will dump a patch file named `diff.patch` into the local `patch` directory, which you can then apply and commit separately.
