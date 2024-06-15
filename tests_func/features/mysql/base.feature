Feature: Base mysql tests

  Background: Wait for working infrastructure
    Given prepared infrastructure
    And a working mysql on mysql01
    And a working mysql on mysql01
    And a configured s3 on minio01

  Scenario: Binlog apply test
    When a working mysql on mysql01
    Then test 'testdata/mysql/base_tests/binlog_apply_until_test.sh' execution finished with result '0'

  Scenario: Binlog push/fetch test
    When a working mysql on mysql01
    Then test 'testdata/mysql/base_tests/binlog_push_fetch_test.sh' execution finished with result '0'

  Scenario: conf-only-test
    When a working mysql on mysql01
    Then test 'testdata/mysql/base_tests/conf-only-test.sh' execution finished with result '0'

  Scenario: Full mysqldump test
    When a working mysql on mysql01
    Then test 'testdata/mysql/base_tests/full_mysqldump_test.sh' execution finished with result '0'

  Scenario: Full xtrabackup test
    When a working mysql on mysql01
    Then test 'testdata/mysql/base_tests/full_xtrabackup_test.sh' execution finished with result '0'

  Scenario: Full xtrabackup test with ranges
    When a working mysql on mysql01
    Then test 'testdata/mysql/base_tests/full_xtrabackup_test_with_ranges.sh' execution finished with result '0'

  Scenario: Incremental backup test
    When a working mysql on mysql01
    Then test 'testdata/mysql/base_tests/incremental_xtrabackup_test.sh' execution finished with result '0'

  Scenario: Live replay test
    When a working mysql on mysql01
    Then test 'testdata/mysql/base_tests/live_replay.sh' execution finished with result '0'

  Scenario: Permanent backup test
    When a working mysql on mysql01
    Then test 'testdata/mysql/base_tests/permanent_backup_test.sh' execution finished with result '0'

  Scenario: PiTR binlog-server test
    When a working mysql on mysql01
    Then test 'testdata/mysql/base_tests/pitr_binlog_server_test.sh' execution finished with result '0'

  Scenario: PiTR with mysqldump test
    When a working mysql on mysql01
    Then test 'testdata/mysql/base_tests/pitr_mysqldump_test.sh' execution finished with result '0'

  Scenario: PiTR with xtrabackup test
    When a working mysql on mysql01
    Then test 'testdata/mysql/base_tests/pitr_xtrabackup_test.sh' execution finished with result '0'

  Scenario: Split/Merge stream test
    When a working mysql on mysql01
    Then test 'testdata/mysql/base_tests/split_file_stream.sh' execution finished with result '0'