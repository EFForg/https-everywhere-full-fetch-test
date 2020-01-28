#!/bin/bash
git clone --depth=1 https://github.com/EFForg/https-everywhere.git /opt
cd /opt
find rules/ -type f -exec sed -i "s/ default_off='failed ruleset test'//g" {} \;
python3.6 test/rules/src/https_everywhere_checker/check_rules.py test/rules/disable-broken-rulesets.checker.config
git diff > /patch/diff.patch
