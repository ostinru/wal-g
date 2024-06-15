Feature: Delete mysql tests

  Background: Wait for working infrastructure
    Given prepared infrastructure
    And a working mysql on mysql01
    And a working mysql on mysql01
    And a configured s3 on minio01

  Scenario: Delete end to end test
    When a working mysql on mysql01
    Then test 'testdata/mysql/delete_tests/delete_end_to_end_test.sh' execution finished with result '0'

  Scenario: Delete everything test
    When a working mysql on mysql01
    Then test 'testdata/mysql/delete_tests/delete_everything_w_permanent.sh' execution finished with result '0'

  Scenario: Delete incremental xtrabackup test
    When a working mysql on mysql01
    Then test 'testdata/mysql/delete_tests/delete_incremental_xtrabackup_test.sh' execution finished with result '0'

  Scenario: Mark incremental xtrabackup test
    When a working mysql on mysql01
    Then test 'testdata/mysql/delete_tests/mark_incremental_xtrabackup_test.sh' execution finished with result '0'

  Scenario: Mark no error test
    When a working mysql on mysql01
    Then test 'testdata/mysql/delete_tests/mark_no_error_test.sh' execution finished with result '0'

  Scenario: Mark test
    When a working mysql on mysql01
    Then test 'testdata/mysql/delete_tests/mark_test.sh' execution finished with result '0'