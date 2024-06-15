Feature: xtrabackup tools tests

  Background: Wait for working infrastructure
    Given prepared infrastructure
    And a working mysql on mysql01
    And a configured s3 on minio01

  @mysql_8
  Scenario: Binlog apply test
    When a working mysql on mysql01
    Then test 'testdata/mysql/xtrabackup_extract.sh' execution finished with result '0'
