//resolvers += "Local Maven Repository" at "file://"+Path.userHome.absolutePath+"/.ivy2/local"

//addSbtPlugin("com.foursquare.lint" % "linterplugin" % "0.1-SNAPSHOT")

resolvers += "Twitter" at "http://maven.twttr.com/"

addSbtPlugin("com.typesafe.sbteclipse" % "sbteclipse-plugin" % "2.0.0")

addSbtPlugin("net.virtual-void" % "sbt-dependency-graph" % "0.7.0")

libraryDependencies += Defaults.sbtPluginExtra("org.ensime" % "ensime-sbt-cmd" % "0.0.7", "0.11.2", "2.9.1")

libraryDependencies += Defaults.sbtPluginExtra("com.twitter" % "sbt-package-dist" % "1.0.6", "0.11.2", "2.9.1")
