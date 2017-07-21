package ru.sbt.openapi.billing

import org.slf4j.{Logger, LoggerFactory}

object Main {

  val logger: Logger = LoggerFactory.getLogger(Main.getClass)

  def main(args: Array[String]): Unit = {
    logger.debug("Hello, billing")
  }
}
