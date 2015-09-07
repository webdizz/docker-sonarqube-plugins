FROM webdizz/sonarqube:5.1.2

MAINTAINER Izzet Mustafaiev "izzet@mustafaiev.com"

#Bundled plugins

# remove bundled plugins
RUN ls -la /opt/sonar/lib/bundled-plugins
RUN rm -rf /opt/sonar/lib/bundled-plugins/sonar-java-plugin-*.jar

#Plugins

ENV JAVA_PLUGIN_VERSION 3.5
RUN curl -sLo /opt/sonar/extensions/plugins/sonar-java-plugin-${JAVA_PLUGIN_VERSION}.jar \
	https://sonarsource.bintray.com/Distribution/sonar-java-plugin/sonar-java-plugin-${JAVA_PLUGIN_VERSION}.jar

ENV FINDBUGS_PLUGIN_VERSION 3.5
RUN curl -sLo /opt/sonar/extensions/plugins/sonar-findbugs-plugin-${FINDBUGS_PLUGIN_VERSION}.jar \
	https://sonarsource.bintray.com/Distribution/sonar-findbugs-plugin/sonar-findbugs-plugin.jar

ENV LDAP_PLUGIN_VERSION 1.4
RUN cd /opt/sonar/extensions/plugins && \
	curl -sLo sonar-ldap-plugin-${LDAP_PLUGIN_VERSION}.jar \
    http://downloads.sonarsource.com/plugins/org/codehaus/sonar-plugins/sonar-ldap-plugin/${LDAP_PLUGIN_VERSION}/sonar-ldap-plugin-${LDAP_PLUGIN_VERSION}.jar

ENV SCMSTAT_PLUGIN_VERSION 0.3.1
RUN cd /opt/sonar/extensions/plugins && \
	curl -sLo sonar-scm-stats-plugin-${SCMSTAT_PLUGIN_VERSION}.jar \
    http://downloads.sonarsource.com/plugins/org/codehaus/sonar-plugins/sonar-scm-stats-plugin/${SCMSTAT_PLUGIN_VERSION}/sonar-scm-stats-plugin-${SCMSTAT_PLUGIN_VERSION}.jar

ENV TIMELINE_PLUGIN_VERSION 1.5
RUN cd /opt/sonar/extensions/plugins && \
	curl -sLo sonar-timeline-plugin-${TIMELINE_PLUGIN_VERSION}.jar \
    http://downloads.sonarsource.com/plugins/org/codehaus/sonar-plugins/sonar-timeline-plugin/${TIMELINE_PLUGIN_VERSION}/sonar-timeline-plugin-${TIMELINE_PLUGIN_VERSION}.jar

ENV WIDGET_PLUGIN_VERSION 1.7
RUN cd /opt/sonar/extensions/plugins && \
	curl -sLo sonar-widget-lab-plugin-${WIDGET_PLUGIN_VERSION}.jar \
    http://downloads.sonarsource.com/plugins/org/codehaus/sonar-plugins/sonar-widget-lab-plugin/${WIDGET_PLUGIN_VERSION}/sonar-widget-lab-plugin-${WIDGET_PLUGIN_VERSION}.jar

ENV SONARGRAPH_PLUGIN_VERSION 3.4.2
RUN cd /opt/sonar/extensions/plugins && \
	curl -sLo sonar-sonargraph-plugin-${SONARGRAPH_PLUGIN_VERSION}.jar \
    http://downloads.sonarsource.com/plugins/org/codehaus/sonar-plugins/sonar-sonargraph-plugin/${SONARGRAPH_PLUGIN_VERSION}/sonar-sonargraph-plugin-${SONARGRAPH_PLUGIN_VERSION}.jar

ENV JS_PLUGIN_VERSION 2.8
RUN cd /opt/sonar/extensions/plugins && \
	curl -sLo sonar-javascript-plugin-${JS_PLUGIN_VERSION}.jar \
    https://sonarsource.bintray.com/Distribution/sonar-javascript-plugin/sonar-javascript-plugin-${JS_PLUGIN_VERSION}.jar

ENV ISSUE_ASSIGN_PLUGIN_VERSION 1.6
RUN cd /opt/sonar/extensions/plugins && \
	curl -sLo sonar-issue-assign-plugin-${ISSUE_ASSIGN_PLUGIN_VERSION}.jar \
    http://downloads.sonarsource.com/plugins/org/codehaus/sonar-plugins/sonar-issue-assign-plugin/${ISSUE_ASSIGN_PLUGIN_VERSION}/sonar-issue-assign-plugin-${ISSUE_ASSIGN_PLUGIN_VERSION}.jar

ENV BUILD_BREAKER_PLUGIN_VERSION 1.1
RUN cd /opt/sonar/extensions/plugins && \
	curl -sLo sonar-build-breaker-plugin-${BUILD_BREAKER_PLUGIN_VERSION}.jar \
    http://downloads.sonarsource.com/plugins/org/codehaus/sonar-plugins/sonar-build-breaker-plugin/${BUILD_BREAKER_PLUGIN_VERSION}/sonar-build-breaker-plugin-${BUILD_BREAKER_PLUGIN_VERSION}.jar

ENV ISSUES_DENSITY_PLUGIN_VERSION 1.0
RUN cd /opt/sonar/extensions/plugins && \
	curl -sLo sonar-issues-density-plugin-${ISSUES_DENSITY_PLUGIN_VERSION}.jar \
    http://downloads.sonarsource.com/plugins/org/codehaus/sonar-plugins/sonar-issues-density-plugin/${ISSUES_DENSITY_PLUGIN_VERSION}/sonar-issues-density-plugin-${ISSUES_DENSITY_PLUGIN_VERSION}.jar

ENV PMD_PLUGIN_VERSION 2.4.1
RUN cd /opt/sonar/extensions/plugins && \
	curl -sLo sonar-pmd-plugin-${PMD_PLUGIN_VERSION}.jar \
    http://downloads.sonarsource.com/plugins/org/codehaus/sonar-plugins/java/sonar-pmd-plugin/${PMD_PLUGIN_VERSION}/sonar-pmd-plugin-${PMD_PLUGIN_VERSION}.jar

ENV BUILD_STABILITY_PLUGIN_VERSION 1.3
RUN cd /opt/sonar/extensions/plugins && \
	curl -sLo sonar-build-stability-plugin-${BUILD_STABILITY_PLUGIN_VERSION}.jar \
    http://downloads.sonarsource.com/plugins/org/codehaus/sonar-plugins/sonar-build-stability-plugin/${BUILD_STABILITY_PLUGIN_VERSION}/sonar-build-stability-plugin-${BUILD_STABILITY_PLUGIN_VERSION}.jar

ENV GENERIC_COVERAGE_PLUGIN_VERSION 1.1
RUN cd /opt/sonar/extensions/plugins && \
	curl -sLo sonar-generic-coverage-plugin-${GENERIC_COVERAGE_PLUGIN_VERSION}.jar \
    http://downloads.sonarsource.com/plugins/org/codehaus/sonar-plugins/sonar-generic-coverage-plugin/${GENERIC_COVERAGE_PLUGIN_VERSION}/sonar-generic-coverage-plugin-${GENERIC_COVERAGE_PLUGIN_VERSION}.jar

ENV GROOVY_PLUGIN_VERSION 1.2
RUN cd /opt/sonar/extensions/plugins && \
	curl -sLo sonar-groovy-plugin-${GROOVY_PLUGIN_VERSION}.jar \
    https://sonarsource.bintray.com/Distribution/org.sonarsource.sonar-groovy-plugin/sonar-groovy-plugin-${GROOVY_PLUGIN_VERSION}.jar

ENV MOTION_CHART_PLUGIN_VERSION 1.7
RUN cd /opt/sonar/extensions/plugins && \
	curl -sLo sonar-motion-chart-plugin-${MOTION_CHART_PLUGIN_VERSION}.jar \
    http://downloads.sonarsource.com/plugins/org/codehaus/sonar-plugins/sonar-motion-chart-plugin/${MOTION_CHART_PLUGIN_VERSION}/sonar-motion-chart-plugin-${MOTION_CHART_PLUGIN_VERSION}.jar

ENV WEB_PLUGIN_VERSION 2.4
RUN cd /opt/sonar/extensions/plugins && \
	curl -sLo sonar-web-plugin-${WEB_PLUGIN_VERSION}.jar \
    https://sonarsource.bintray.com/Distribution/sonar-web-plugin/sonar-web-plugin-${WEB_PLUGIN_VERSION}.jar

ENV XML_PLUGIN_VERSION 1.3
RUN cd /opt/sonar/extensions/plugins && \
	curl -sLo sonar-xml-plugin-${XML_PLUGIN_VERSION}.jar \
    https://sonarsource.bintray.com/Distribution/sonar-xml-plugin/sonar-xml-plugin-${XML_PLUGIN_VERSION}.jar
