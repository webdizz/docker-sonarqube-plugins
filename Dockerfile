FROM webdizz/sonarqube:latest

MAINTAINER Izzet Mustafaiev "izzet@mustafaiev.com"

#Plugins
ENV BREAKER_PLUGIN_VERSION 1.1
RUN cd /opt/sonar/extensions/plugins && \
	curl -sLo sonar-build-breaker-plugin-${BREAKER_PLUGIN_VERSION}.jar \
	http://repository.codehaus.org/org/codehaus/sonar-plugins/sonar-build-breaker-plugin/${BREAKER_PLUGIN_VERSION}/sonar-build-breaker-plugin-${BREAKER_PLUGIN_VERSION}.jar

ENV SCMACT_PLUGIN_VERSION 1.8
RUN cd /opt/sonar/extensions/plugins && \
	curl -sLo sonar-scm-activity-plugin-${SCMACT_PLUGIN_VERSION}.jar \
	http://repository.codehaus.org/org/codehaus/sonar-plugins/scm-activity/sonar-scm-activity-plugin/${SCMACT_PLUGIN_VERSION}/sonar-scm-activity-plugin-${SCMACT_PLUGIN_VERSION}.jar

ENV ISSUES_PLUGIN_VERSION 1.3
RUN cd /opt/sonar/extensions/plugins && \
	curl -sLo sonar-issue-assign-plugin-${ISSUES_PLUGIN_VERSION}.jar \
	http://repository.codehaus.org/org/codehaus/sonar-plugins/sonar-issue-assign-plugin/${ISSUES_PLUGIN_VERSION}/sonar-issue-assign-plugin-${ISSUES_PLUGIN_VERSION}.jar

ENV USELESS_CODE_PLUGIN_VERSION 1.0
RUN cd /opt/sonar/extensions/plugins && \
	curl -sLo sonar-useless-code-tracker-plugin-${USELESS_CODE_PLUGIN_VERSION}.jar \
    http://repository.codehaus.org/org/codehaus/sonar-plugins/sonar-useless-code-tracker-plugin/${USELESS_CODE_PLUGIN_VERSION}/sonar-useless-code-tracker-plugin-${USELESS_CODE_PLUGIN_VERSION}.jar

ENV LDAP_PLUGIN_VERSION 1.4
RUN cd /opt/sonar/extensions/plugins && \
	curl -sLo sonar-ldap-plugin-${LDAP_PLUGIN_VERSION}.jar \
    http://repository.codehaus.org/org/codehaus/sonar-plugins/sonar-ldap-plugin/${LDAP_PLUGIN_VERSION}/sonar-ldap-plugin-${LDAP_PLUGIN_VERSION}.jar

ENV SCMSTAT_PLUGIN_VERSION 0.3.1
RUN cd /opt/sonar/extensions/plugins && \
	curl -sLo sonar-scm-stats-plugin-${SCMSTAT_PLUGIN_VERSION}.jar \
    http://repository.codehaus.org/org/codehaus/sonar-plugins/sonar-scm-stats-plugin/${SCMSTAT_PLUGIN_VERSION}/sonar-scm-stats-plugin-${SCMSTAT_PLUGIN_VERSION}.jar

ENV TIMELINE_PLUGIN_VERSION 1.4
RUN cd /opt/sonar/extensions/plugins && \
	curl -sLo sonar-timeline-plugin-${TIMELINE_PLUGIN_VERSION}.jar \
    http://repository.codehaus.org/org/codehaus/sonar-plugins/sonar-timeline-plugin/${TIMELINE_PLUGIN_VERSION}/sonar-timeline-plugin-${TIMELINE_PLUGIN_VERSION}.jar

ENV WIDGET_PLUGIN_VERSION 1.5
RUN cd /opt/sonar/extensions/plugins && \
	curl -sLo sonar-widget-lab-plugin-${WIDGET_PLUGIN_VERSION}.jar \
    http://repository.codehaus.org/org/codehaus/sonar-plugins/sonar-widget-lab-plugin/${WIDGET_PLUGIN_VERSION}/sonar-widget-lab-plugin-${WIDGET_PLUGIN_VERSION}.jar

ENV SONARGRAPH_PLUGIN_VERSION 3.3
RUN cd /opt/sonar/extensions/plugins && \
	curl -sLo sonar-sonargraph-plugin-${SONARGRAPH_PLUGIN_VERSION}.jar \
    http://repository.codehaus.org/org/codehaus/sonar-plugins/sonar-sonargraph-plugin/${SONARGRAPH_PLUGIN_VERSION}/sonar-sonargraph-plugin-${SONARGRAPH_PLUGIN_VERSION}.jar

ENV JS_PLUGIN_VERSION 2.0
RUN cd /opt/sonar/extensions/plugins && \
	curl -sLo sonar-javascript-plugin-${JS_PLUGIN_VERSION}.jar \
    http://repository.codehaus.org/org/codehaus/sonar-plugins/javascript/sonar-javascript-plugin/${JS_PLUGIN_VERSION}/sonar-javascript-plugin-${JS_PLUGIN_VERSION}.jar

