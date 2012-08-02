failing_features() {
  if [ -z $NOTHS_CI_SERVER ]; then
    echo "Please specify environment variable \$NOTHS_CI_SERVER"
    return 1
  fi
  if [ -z $2 ]; then
    echo "Usage: failing_features JOB_NAME BUILD_NUMBER"
    return 1
  fi
  ssh $NOTHS_CI_SERVER "grep features/ /var/lib/jenkins/jobs/$1/builds/$2/junitResult.xml | grep -v '\./' | awk 'BEGIN { FS=\":\"; OFS=\"\" } ; { print \$1, \":\", \$2 }' | uniq"
}
