FROM webdizz/sonarqube:6.2

MAINTAINER Izzet Mustafaiev "izzet@mustafaiev.com"

#Bundled plugins
ENV JAVA_PLUGIN_VERSION=4.13.0.11627 \
	CSHARP_PLUGIN_VERSION=6.4.0.3347 \
	JS_PLUGIN_VERSION=3.1.1.5128 \
	SVN_PLUGIN_VERSION=1.5.0.715 \
	GIT_PLUGIN_VERSION=1.2

RUN \
	# remove bundled plugins
	ls -la /opt/sonar/lib/bundled-plugins \
	&& rm -rf /opt/sonar/lib/bundled-plugins/sonar-java-*.jar \
	&& rm -rf /opt/sonar/lib/bundled-plugins/sonar-csharp-*.jar \
	&& rm -rf /opt/sonar/lib/bundled-plugins/sonar-scm-svn-*.jar \
	&& rm -rf /opt/sonar/lib/bundled-plugins/sonar-scm-git-*.jar \
	&& rm -rf /opt/sonar/lib/bundled-plugins/sonar-javascript-*.jar

RUN cd /opt/sonar/lib/bundled-plugins && \
	# Java
	curl -sLo ./sonar-java-plugin-${JAVA_PLUGIN_VERSION}.jar \
	https://sonarsource.bintray.com/Distribution/sonar-java-plugin/sonar-java-plugin-${JAVA_PLUGIN_VERSION}.jar \
	# C#
	&& curl -sLo ./sonar-csharp-plugin-${CSHARP_PLUGIN_VERSION}.jar \
	https://sonarsource.bintray.com/Distribution/sonar-csharp-plugin/sonar-csharp-plugin-${CSHARP_PLUGIN_VERSION}.jar \
	# JS
	&& curl -sLo ./sonar-javascript-plugin-${JS_PLUGIN_VERSION}.jar \
    https://sonarsource.bintray.com/Distribution/sonar-javascript-plugin/sonar-javascript-plugin-${JS_PLUGIN_VERSION}.jar \
	# SVN
	&& curl -sLo ./sonar-scm-svn-plugin-${SVN_PLUGIN_VERSION}.jar \
    https://sonarsource.bintray.com/Distribution/sonar-scm-svn-plugin/sonar-scm-svn-plugin-${SVN_PLUGIN_VERSION}.jar \
	# Git
	&& curl -sLo ./sonar-scm-git-plugin-${GIT_PLUGIN_VERSION}.jar \
    https://sonarsource.bintray.com/Distribution/sonar-scm-git-plugin/sonar-scm-git-plugin-${GIT_PLUGIN_VERSION}.jar \
	&& ls -la /opt/sonar/lib/bundled-plugins 

#Plugins
ENV FINDBUGS_PLUGIN_VERSION=3.5.0 \
	LDAP_PLUGIN_VERSION=2.2.0.608 \
	WIDGET_PLUGIN_VERSION=1.8.1 \
	SONARGRAPH_PLUGIN_VERSION=3.5 \
	PMD_PLUGIN_VERSION=2.6 \
	GROOVY_PLUGIN_VERSION=1.5 \
	WEB_PLUGIN_VERSION=2.5-RC1 \
	XML_PLUGIN_VERSION=1.4.3.1017 \
	GITHUB_PLUGIN_VERSION=1.4.1.822 \
	JDEPEND_PLUGIN_VERSION=1.1.1 \
	GITLAB_PLUGIN_VERSION=2.1.0

RUN cd /opt/sonar/extensions/plugins/ && \
	# Findbugs
	curl -sLo ./sonar-findbugs-plugin-${FINDBUGS_PLUGIN_VERSION}.jar \
	https://github.com/SonarQubeCommunity/sonar-findbugs/releases/download/${FINDBUGS_PLUGIN_VERSION}/sonar-findbugs-plugin.jar \
	# LDAP
	&& curl -sLo ./sonar-ldap-plugin-${LDAP_PLUGIN_VERSION}.jar \
    https://sonarsource.bintray.com/Distribution/sonar-ldap-plugin/sonar-ldap-plugin-${LDAP_PLUGIN_VERSION}.jar \
	# Widget lab
	&& curl -sLo sonar-widget-lab-plugin-${WIDGET_PLUGIN_VERSION}.jar \
    https://sonarsource.bintray.com/Distribution/sonar-widget-lab-plugin/sonar-widget-lab-plugin-${WIDGET_PLUGIN_VERSION}.jar \
	# Sonargraph
	&& curl -sLo sonar-sonargraph-plugin-${SONARGRAPH_PLUGIN_VERSION}.jar \
    https://github.com/SonarQubeCommunity/sonar-sonargraph/releases/download/sonar-sonargraph-plugin-${SONARGRAPH_PLUGIN_VERSION}/sonar-sonargraph-plugin-${SONARGRAPH_PLUGIN_VERSION}.jar \
	# PMD
	&& curl -sLo sonar-pmd-plugin-${PMD_PLUGIN_VERSION}.jar \
    https://github.com/SonarQubeCommunity/sonar-pmd/releases/download/${PMD_PLUGIN_VERSION}/sonar-pmd-plugin-${PMD_PLUGIN_VERSION}.jar \
	# Groovy
	&& curl -sLo sonar-groovy-plugin-${GROOVY_PLUGIN_VERSION}.jar \
    https://github.com/SonarQubeCommunity/sonar-groovy/releases/download/${GROOVY_PLUGIN_VERSION}/sonar-groovy-plugin-${GROOVY_PLUGIN_VERSION}.jar \
	# Web
	&& curl -sLo sonar-web-plugin-${WEB_PLUGIN_VERSION}.jar \
    https://github.com/SonarSource/sonar-web/releases/download/${WEB_PLUGIN_VERSION}/sonar-web-plugin-${WEB_PLUGIN_VERSION}.jar \
	# XML
	&& curl -sLo sonar-xml-plugin-${XML_PLUGIN_VERSION}.jar \
    https://github.com/SonarSource/sonar-xml/releases/download/${XML_PLUGIN_VERSION}/sonar-xml-plugin-${XML_PLUGIN_VERSION}.jar \
	# Github
	&& curl -sLo sonar-github-plugin-${GITHUB_PLUGIN_VERSION}.jar \
    https://sonarsource.bintray.com/Distribution/sonar-github-plugin/sonar-github-plugin-${GITHUB_PLUGIN_VERSION}.jar \
	# jDepend
	&& curl -sLo sonar-jdepend-plugin-${JDEPEND_PLUGIN_VERSION}.jar \
    https://github.com/willemsrb/sonar-jdepend-plugin/releases/download/sonar-jdepend-plugin-${JDEPEND_PLUGIN_VERSION}/sonar-jdepend-plugin-${JDEPEND_PLUGIN_VERSION}.jar \
	# gitlab
	&& curl -sLo sonar-gitlab-plugin-${GITLAB_PLUGIN_VERSION}.jar \
    https://github.com/gabrie-allaigre/sonar-gitlab-plugin/releases/download/${GITLAB_PLUGIN_VERSION}/sonar-gitlab-plugin-${GITLAB_PLUGIN_VERSION}.jar \
	&& ls -la /opt/sonar/extensions/plugins/
