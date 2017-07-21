package ru.sbt.openapi.billing

import org.slf4j.{Logger, LoggerFactory}
import org.springframework.boot.SpringApplication

object Main {

  val logger: Logger = LoggerFactory.getLogger(Main.getClass)

  def main(args: Array[String]): Unit = {
    logger.debug("Start billing application")
    SpringApplication.run(Array[AnyRef](classOf[Application]), args)
  }
}
