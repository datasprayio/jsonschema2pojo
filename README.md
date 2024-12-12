> [!IMPORTANT]
> This is a fork from [joelittlejohn/jsonschema2pojo](https://github.com/joelittlejohn/jsonschema2pojo) that adds [de-duplication of identical classes](https://github.com/joelittlejohn/jsonschema2pojo/pull/1655).

# jsonschema2pojo [![Build Status](https://github.com/datasprayio/jsonschema2pojo/actions/workflows/ci.yml/badge.svg?query=branch%3Amaster)](https://github.com/datasprayio/jsonschema2pojo/actions/workflows/ci.yml?query=branch%3Amaster) [![Maven Central](https://maven-badges.herokuapp.com/maven-central/io.dataspray/jsonschema2pojo/badge.svg)](http://search.maven.org/#search%7Cga%7C1%7Cg%3A%22io.dataspray%22)

_jsonschema2pojo_ generates Java types from JSON Schema (or example JSON) and can annotate those types for data-binding with Jackson 2.x or Gson.

### [Try jsonschema2pojo online](http://jsonschema2pojo.org/)<br>or `brew install jsonschema2pojo`

You can use jsonschema2pojo as a Maven plugin, an Ant task, a command line utility, a Gradle plugin or embedded within your own Java app. The [Getting Started](https://github.com/joelittlejohn/jsonschema2pojo/wiki/Getting-Started) guide will show you how.

A very simple Maven example:
```xml
<plugin>
    <groupId>io.dataspray</groupId>
    <artifactId>jsonschema2pojo-maven-plugin</artifactId>
    <version>1.2.8</version>
    <configuration>
        <sourceDirectory>${basedir}/src/main/resources/schema</sourceDirectory>
        <targetPackage>com.example.types</targetPackage>
    </configuration>
    <executions>
        <execution>
            <goals>
                <goal>generate</goal>
            </goals>
        </execution>
    </executions>
</plugin>
```

A very simple Gradle example:

```groovy
plugins {
  id "java"
  id "io.dataspray" version "1.2.8"
}

repositories {
  mavenCentral()
}

jsonSchema2Pojo {
  targetPackage = 'com.example'
}
```

Useful pages:
  * **[Getting started](https://github.com/joelittlejohn/jsonschema2pojo/wiki/Getting-Started)**
  * **[How to contribute](https://github.com/joelittlejohn/jsonschema2pojo/blob/master/CONTRIBUTING.md)**
  * [Reference](https://github.com/joelittlejohn/jsonschema2pojo/wiki/Reference)
  * [Latest Javadocs](https://joelittlejohn.github.io/jsonschema2pojo/javadocs/1.2.2/)
  * [Documentation for the Maven plugin](https://joelittlejohn.github.io/jsonschema2pojo/site/1.2.2/generate-mojo.html)
  * [Documentation for the Gradle plugin](https://github.com/joelittlejohn/jsonschema2pojo/tree/master/jsonschema2pojo-gradle-plugin#usage)
  * [Documentation for the Ant task](https://joelittlejohn.github.io/jsonschema2pojo/site/1.2.2/Jsonschema2PojoTask.html)

Project resources:
  * [Downloads](https://github.com/joelittlejohn/jsonschema2pojo/releases)
  * [Mailing list](https://groups.google.com/forum/#!forum/jsonschema2pojo-users)

Special thanks:
* unkish
* Thach Hoang
* Dan Cruver
* Ben Manes
* Sam Duke
* Duane Zamrok
* Christian Trimble
* YourKit, who support this project through a free license for the [YourKit Java Profiler](https://www.yourkit.com/java/profiler).

Licensed under the [Apache License, Version 2.0](http://www.apache.org/licenses/LICENSE-2.0).
