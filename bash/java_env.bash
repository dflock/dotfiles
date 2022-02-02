#!/usr/bin/env bash

#
# Java
#
export CLASSPATH="$CLASSPATH:/usr/share/java/antlr.jar:/usr/share/java/antlr-2.7.7.jar:/usr/share/java/stringtemplate.jar"
export JAVA_HOME=/usr/share/java
export JAVA_TOOL_OPTIONS="-Dfile.encoding=UTF-8"
export MAVEN_OPTS="-Xmx512m -XX:MaxPermSize=128m -Djava.awt.headless=true"
