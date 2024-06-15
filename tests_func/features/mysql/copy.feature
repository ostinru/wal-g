Feature: Copy mysql tests

  Background: Wait for working infrastructure
    Given prepared infrastructure
    And a working mysql on mysql01
    And a working mysql on mysql01
    And a configured s3 on minio01

  Scenario: Copy backup test
    When a working mysql on mysql01
    Then test 'testdata/mysql/copy_tests/copy_backup.sh' execution finished with result '0'

  Scenario: Copy between different accounts storage test
    When a working mysql on mysql01
    Then test 'testdata/mysql/copy_tests/copy_between_different_accounts_storage.sh' execution finished with result '0'

  Scenario: copy prefix test
    When a working mysql on mysql01
    Then test 'testdata/mysql/copy_tests/copy_prefix-test.sh' execution finished with result '0'