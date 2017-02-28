--
--  Copyright (c) 2016, WSO2 Inc. (http://www.wso2.org) All Rights Reserved.
--
--    WSO2 Inc. licenses this file to you under the Apache License,
--    Version 2.0 (the "License"); you may not use this file except
--    in compliance with the License.
--    You may obtain a copy of the License at
--
--       http://www.apache.org/licenses/LICENSE-2.0
--
--    Unless required by applicable law or agreed to in writing,
--    software distributed under the License is distributed on an
--    "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
--    KIND, either express or implied.  See the License for the
--    specific language governing permissions and limitations
--    under the License.
--

-- MySQL Script generated by MySQL Workbench
-- Mon Feb  1 17:54:10 2016
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema AppCloudDB
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema AppCloudDB
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `AppCloudDB` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `AppCloudDB` ;

-- -----------------------------------------------------
-- Table `AppCloudDB`.`AC_APP_TYPE`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AppCloudDB`.`AC_APP_TYPE` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `description` VARCHAR(1000) NULL,
  `buildable` int(1) DEFAULT '1',
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Populate Data to `AppCloudDB`.`AC_APP_TYPE`
-- -----------------------------------------------------
INSERT INTO `AC_APP_TYPE` (`id`, `name`, `description`) VALUES
(1, 'war', 'Allows you to create dynamic websites using Servlets and JSPs and deploy web services.'),
(2, 'mss', 'Allows you to create microservices in Java, using an annotation-based programming model. MSF4J stands for Microservices Framework for Java.'),
(3, 'php', 'Allows you to create dynamic web pages and complete server applications using PHP web applications.'),
(4, 'jaggery', 'Allows you to write all parts of web applications, services and APIs in a completely JavaScript way.'),
(5, 'wso2dataservice', 'Allows you to deploy a data service that is supported in WSO2 Data Services Server.'),
(6, 'wso2esb', 'Allows you to deploy an ESB configuration that is supported by WSO2 Enterprise Service Bus'),
(7, 'custom', 'Allows you to deploy applications using custom Docker images'),
(8, 'ballerina', 'Allows you to deploy Ballerina service. Ballerina is a general purpose, concurrent and strongly typed programming language with both textual and graphical syntaxes.');

-- -----------------------------------------------------
-- Table `AppCloudDB`.`AC_RUNTIME`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AppCloudDB`.`AC_RUNTIME` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `image_name` VARCHAR(100) NULL,
  `tag` VARCHAR(45) NOT NULL,
  `description` VARCHAR(1000) NULL,
  PRIMARY KEY (`id`, `name`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Populate Data to `AppCloudDB`.`ApplicationRuntime`
-- -----------------------------------------------------

INSERT INTO `AC_RUNTIME` (`id`, `name`, `image_name`, `tag`, `description`) VALUES
(1, 'Apache Tomcat 8.0.28 / WSO2 Application Server 6.0.0-M1 - Deprecated', 'wso2as', '6.0.0-m1', 'OS:alpine-java, Oracle JDK:8u102'),
(2, 'OracleJDK 8 + WSO2 MSF4J 1.0.0 - Deprecated', 'msf4j', '1.0.0', 'OS:alpine-java, Oracle JDK:8u102'),
(3, 'Apache 2.4.10 (PHP Version 7.0.5)', 'php', '5.6', 'OS:Debian, PHP Version:5.6.20'),
(4, 'Carbon 4.2.0', 'carbon','4.2.0', 'OS:alpine-java, Oracle JDK:8u102'),
(5, 'Jaggery 0.11.0', 'jaggery', '0.11.0', 'OS:alpine-java, Oracle JDK:8u102'),
(6, 'Apache Tomcat 8.0.28 / WSO2 Application Server 6.0.0-M2 - Deprecated', 'wso2as', '6.0.0-m2', 'OS:alpine-java, Oracle JDK:8u102'),
(7, 'WSO2 Data Services Server - 3.5.0', 'wso2dataservice', '3.5.0', 'OS:alpine-java, Oracle JDK:8u102'),
(8, 'OracleJDK 8 + WSO2 MSF4J 2.0.0', 'msf4j', '2.0.0', 'OS:alpine-java, Oracle JDK:8u102'),
(9, 'WSO2 Enterprise Service Bus - 5.0.0', 'wso2esb', '5.0.0', 'OS:Debian, Oracle JDK:8u102'),
(10, 'Apache Tomcat 8.0.36 / WSO2 Application Server 6.0.0-M3 - Deprecated', 'wso2as', '6.0.0-m3', 'OS:alpine-java, Oracle JDK:8u102'),
(11, 'Custom Docker http-9443 https-9763', 'custom', 'customtag', 'OS:Custom, JAVA Version:custom'),
(12, 'WSO2 Data Services Server - 3.5.1', 'wso2dataservice', '3.5.1', 'OS:alpine-java, Oracle JDK:8u102'),
(13, 'Apache Tomcat 8.5.5 (Alpine 3.4/Oracle JDK 1.8.0_112)', 'tomcat', '8.5.5-alpine3.4-oracle-jdk1.8.0', 'OS:Alpine 3.4, Oracle JDK 1.8.0_112'),
(14, 'Apache Tomcat 8.5.5 (Ubuntu 16.04/Oracle JDK 1.8.0_112)', 'tomcat', '8.5.5-ubuntu16.04-oracle-jdk1.8.0', 'OS:Ubuntu 16.04, Oracle JDK 1.8.0_112'),
(15, 'Apache Tomcat 8.5.5 (Alpine 3.4/Open JDK 1.8.0_92)', 'tomcat', '8.5.5-alpine3.4-open-jdk1.8.0', 'OS:Alpine 3.4, Open JDK 1.8.0_92'),
(16, 'Apache Tomcat 8.5.5 (Ubuntu 16.04/Open JDK 1.8.0_91)', 'tomcat', '8.5.5-ubuntu16.04-open-jdk1.8.0', 'OS:Ubuntu 16.04, Open JDK 1.8.0_91'),
(17, 'OracleJDK 8 + WSO2 MSF4J 2.1.0', 'msf4j', '2.0.0', 'OS:alpine-java, Oracle JDK:8u102'),
(18, 'Custom Docker http-8080 https-8443', 'custom', 'customtag', 'OS:Custom, JAVA Version:custom'),
(19, 'Ballerina 0.8.0 (Alpine 3.4/Oracle JDK 1.8.0_112)', 'ballerina', '0.8.0', 'OS:Alpine 3.4, Oracle JDK 1.8.0_112');


-- -----------------------------------------------------
-- Table `AppCloudDB`.`AC_APPLICATION`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AppCloudDB`.`AC_APPLICATION` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `hash_id` VARCHAR(24) NULL,
  `description` VARCHAR(1000) NULL,
  `tenant_id` INT NOT NULL,
  `default_version` varchar(24) DEFAULT NULL,
  `app_type_id` INT NULL,
  `custom_domain` VARCHAR(200) NULL,
  `cloud_id` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT uk_Application_NAME_TID_REV UNIQUE(`name`, `tenant_id`),
  CONSTRAINT `fk_Application_ApplicationType1`
    FOREIGN KEY (`app_type_id`)
    REFERENCES `AppCloudDB`.`AC_APP_TYPE` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AppCloudDB`.`AC_DEPLOYMENT`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AppCloudDB`.`AC_DEPLOYMENT` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NULL,
  `replicas` INT NULL,
  `tenant_id` INT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AppCloudDB`.`AC_VERSION`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AppCloudDB`.`AC_VERSION` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(60) NULL,
  `hash_id` VARCHAR(24) NULL,
  `application_id` INT NOT NULL,
  `runtime_id` INT NOT NULL,
  `status` VARCHAR(45) NULL,
  `deployment_id` INT NULL,
  `tenant_id` INT NULL,
  `con_spec_cpu` VARCHAR(10) NOT NULL,
  `con_spec_memory` VARCHAR(10) NOT NULL,
  `timestamp` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_white_listed` TINYINT unsigned NOT NULL DEFAULT 0,
  `exposure_level` varchar(24) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_AC_VERSION_AC_APPLICATION1`
    FOREIGN KEY (`application_id`)
    REFERENCES `AppCloudDB`.`AC_APPLICATION` (`id`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_AC_VERSION_ApplicationRuntime1`
    FOREIGN KEY (`runtime_id`)
    REFERENCES `AppCloudDB`.`AC_RUNTIME` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_AC_VERSION_ApplicationDeployment1`
    FOREIGN KEY (`deployment_id`)
    REFERENCES `AppCloudDB`.`AC_DEPLOYMENT` (`id`)
    ON DELETE SET NULL
    ON UPDATE NO ACTION)
ENGINE = InnoDB;






-- -----------------------------------------------------
-- Table `AppCloudDB`.`AC_TAG`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AppCloudDB`.`AC_TAG` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `value` VARCHAR(100) NULL,
  `version_id` INT NOT NULL,
  `description` VARCHAR(1000) NULL,
  `tenant_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_AC_TAG_AC_VERSION1`
    FOREIGN KEY (`version_id`)
    REFERENCES `AppCloudDB`.`AC_VERSION` (`id`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AppCloudDB`.`AC_RUNTIME_PROPERTY`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AppCloudDB`.`AC_RUNTIME_PROPERTY` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(200) NOT NULL,
  `value` VARCHAR(2000) NULL,
  `version_id` INT NOT NULL,
  `description` VARCHAR(1000) NULL,
  `tenant_id` INT NOT NULL,
  `is_secured` BIT(1) NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_AC_RUNTIME_PROPERTY_AC_VERSION1`
    FOREIGN KEY (`version_id`)
    REFERENCES `AppCloudDB`.`AC_VERSION` (`id`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB;





-- -----------------------------------------------------
-- Table `AppCloudDB`.`AC_TENANT_APP_TYPE`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AppCloudDB`.`AC_TENANT_APP_TYPE` (
  `tenant_id` INT NOT NULL,
  `app_type_id` INT NOT NULL,
  CONSTRAINT `fk_TenantAppType_ApplicationType1`
    FOREIGN KEY (`app_type_id`)
    REFERENCES `AppCloudDB`.`AC_APP_TYPE` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AppCloudDB`.`AC_APP_TYPE_RUNTIME`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AppCloudDB`.`AC_APP_TYPE_RUNTIME` (
  `app_type_id` INT NOT NULL,
  `runtime_id` INT NOT NULL,
  CONSTRAINT `fk_ApplicationType_has_ApplicationRuntime_ApplicationType1`
    FOREIGN KEY (`app_type_id`)
    REFERENCES `AppCloudDB`.`AC_APP_TYPE` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ApplicationType_has_ApplicationRuntime_ApplicationRuntime1`
    FOREIGN KEY (`runtime_id`)
    REFERENCES `AppCloudDB`.`AC_RUNTIME` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Populate Data to `AppCloudDB`.`ApplicationTypeRuntime`
-- -----------------------------------------------------
INSERT INTO `AC_APP_TYPE_RUNTIME` (`app_type_id`, `runtime_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 5),
(1, 6),
(5, 7),
(2, 8),
(6, 9),
(1, 10),
(4, 10),
(7, 11),
(5, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(2, 17),
(7, 18),
(8, 19);


-- -----------------------------------------------------
-- Table `AppCloudDB`.`AC_TENANT_RUNTIME`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AppCloudDB`.`AC_TENANT_RUNTIME` (
  `tenant_id` INT NOT NULL,
  `runtime_id` INT NOT NULL,
  CONSTRAINT `fk_TenanntRuntime_ApplicationRuntime1`
    FOREIGN KEY (`runtime_id`)
    REFERENCES `AppCloudDB`.`AC_RUNTIME` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AppCloudDB`.`AC_EVENT`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AppCloudDB`.`AC_EVENT` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `status` VARCHAR(45) NULL,
  `version_id` INT NOT NULL,
  `timestamp` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `description` VARCHAR(1000) NULL,
  `tenant_id` INT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AppCloudDB`.`AC_CONTAINER`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AppCloudDB`.`AC_CONTAINER` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NULL,
  `version` VARCHAR(100) NULL,
  `deployment_id` INT NOT NULL,
  `tenant_id` INT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_ApplicationContainer_ApplicationDeployment1`
    FOREIGN KEY (`deployment_id`)
    REFERENCES `AppCloudDB`.`AC_DEPLOYMENT` (`id`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AppCloudDB`.`AC_CONTAINER_SERVICE_PROXY`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AppCloudDB`.`AC_CONTAINER_SERVICE_PROXY` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NULL,
  `protocol` VARCHAR(20) NULL,
  `port` INT NULL,
  `backend_port` VARCHAR(45) NULL,
  `container_id` INT NOT NULL,
  `tenant_id` INT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_ApplicationServiceProxy_ApplicationContainer1`
    FOREIGN KEY (`container_id`)
    REFERENCES `AppCloudDB`.`AC_CONTAINER` (`id`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AppCloudDB`.`AC_APP_ICON`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AppCloudDB`.`AC_APP_ICON` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `icon` MEDIUMBLOB DEFAULT NULL,
  `application_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `application_id_UNIQUE` (`application_id` ASC),
  CONSTRAINT `fk_AC_APPLICATION_ICON_AC_APPLICATION1`
    FOREIGN KEY (`application_id`)
    REFERENCES `AppCloudDB`.`AC_APPLICATION` (`id`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AppCloudDB`.`AC_TRANSPORT`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AppCloudDB`.`AC_TRANSPORT` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(20) NOT NULL,
  `port` INT NOT NULL,
  `protocol` VARCHAR(4) NOT NULL,
  `service_prefix` VARCHAR(3) NOT NULL,
  `description` VARCHAR(1000) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AppCloudDB`.`AC_RUNTIME_TRANSPORT`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AppCloudDB`.`AC_RUNTIME_TRANSPORT` (
  `transport_id` INT NOT NULL,
  `runtime_id` INT NOT NULL,
  CONSTRAINT `fk_Service_id`
    FOREIGN KEY (`transport_id`)
    REFERENCES `AppCloudDB`.`AC_TRANSPORT` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ApplicationRuntime_id`
    FOREIGN KEY (`runtime_id`)
    REFERENCES `AppCloudDB`.`AC_RUNTIME` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS AC_SUBSCRIPTION_PLANS (
    PLAN_ID	INTEGER NOT NULL AUTO_INCREMENT,
    PLAN_NAME   VARCHAR(200) NOT NULL,	
    MAX_APPLICATIONS	INT NOT NULL,
    MAX_DATABASES INT NOT NULL,
    CLOUD_ID VARCHAR(50) NOT NULL,
    MAX_REPLICA_COUNT INT(11) NOT NULL,
    PRIMARY KEY (PLAN_ID),
    CONSTRAINT uk_SubscriptionPlans_PlanName_CloudId UNIQUE(PLAN_NAME, CLOUD_ID))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS AC_CONTAINER_SPECIFICATIONS (
    CON_SPEC_ID     INTEGER NOT NULL AUTO_INCREMENT,
    CON_SPEC_NAME   VARCHAR(200) NOT NULL,
    CPU              INT NOT NULL,	
    MEMORY	     INT NOT NULL,
    COST_PER_HOUR    INT NOT NULL,
    PRIMARY KEY (CON_SPEC_ID))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS AC_RUNTIME_CONTAINER_SPECIFICATIONS (
  id int(11) NOT NULL,
  CON_SPEC_ID int(11) NOT NULL,
  PRIMARY KEY (id,CON_SPEC_ID),
  KEY CON_SPEC_ID (CON_SPEC_ID))
ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `AppCloudDB`.`AC_WHITE_LISTED_TENANTS` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `tenant_id` INT NOT NULL,
  `max_app_count` INT(11) DEFAULT -1,
  `max_database_count` INT(11) DEFAULT -1,
  `cloud_id` VARCHAR(50) NOT NULL,
  `max_replica_count` INT(11) NOT NULL DEFAULT 4,
  PRIMARY KEY (`id`, `tenant_id`),
  CONSTRAINT uk_WhiteListedTenants UNIQUE (tenant_id, cloud_id))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `AppCloudDB`.`AC_APPLICAION_CONTEXTS` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `tenant_id` INT NOT NULL,
  `version_id` INT NOT NULL,
  `context` VARCHAR(200) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE (`version_id`))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Populate Data to `AppCloudDB`.`ApplicationRuntime`
-- -----------------------------------------------------

INSERT INTO `AC_TRANSPORT` (`id`, `name`, `port`, `protocol`, `service_prefix`, `description`) VALUES
(1, 'http', 80, 'TCP', 'htp', 'HTTP Protocol'),
(2, 'https', 443, 'TCP', 'hts', 'HTTPS Protocol'),
(3, 'http-alt', 8080, 'TCP', 'htp', 'HTTP Alternate Protocol'),
(4, 'https-alt', 8443, 'TCP', 'hts', 'HTTPS Alternate Protocol'),
(5, 'http', 9763, 'TCP', 'htp', 'HTTP servlet transport for carbon products'),
(6, 'https', 9443, 'TCP', 'hts', 'HTTPS servlet transport for carbon products'),
(7, 'http', 8280, 'TCP', 'htp', 'HTTP Protocol'),
(8, 'https', 8243, 'TCP', 'hts', 'HTTPS Protocol'),
(9, 'http', 9090, 'TCP', 'htp', 'HTTPS Protocol for Ballerina'),
(10, 'https', 9092, 'TCP', 'hts', 'HTTPS Protocol for Ballerina');

-- -----------------------------------------------------
-- Populate Data to `AppCloudDB`.`ApplicationRuntimeService`
-- -----------------------------------------------------
INSERT INTO `AC_RUNTIME_TRANSPORT` (`transport_id`, `runtime_id`) VALUES
(4, 1),
(4, 2),
(1, 3),
(4, 4),
(3, 1),
(3, 2),
(2, 3),
(3, 4),
(6, 5),
(5, 5),
(3, 6),
(4, 6),
(5, 7),
(6, 7),
(3, 8),
(4, 8),
(7, 9),
(8, 9),
(3, 10),
(4, 10),
(5, 11),
(6, 11),
(5, 12),
(6, 12),
(3, 13),
(4, 13),
(3, 14),
(4, 14),
(3, 15),
(3, 16),
(4, 15),
(4, 16),
(3, 17),
(4, 17),
(3, 18),
(4, 18),
(9, 19),
(10, 19);

INSERT INTO `AC_CONTAINER_SPECIFICATIONS` (`CON_SPEC_NAME`, `CPU`, `MEMORY`, `COST_PER_HOUR`) VALUES
('128MB RAM and 0.1x vCPU', 100, 128, 1),
('256MB RAM and 0.2x vCPU', 200, 256, 2),
('512MB RAM and 0.3x vCPU', 300, 512, 3),
('1024MB RAM and 0.5x vCPU', 500, 1024, 4),
('2048MB RAM and 1x vCPU', 1000, 2048, 5);

INSERT INTO `AC_SUBSCRIPTION_PLANS` (`PLAN_ID`, `PLAN_NAME`, `MAX_APPLICATIONS`, `MAX_DATABASES`, `CLOUD_ID`, `MAX_REPLICA_COUNT`) VALUES
(1, 'FREE', 3, 3, 'app_cloud', 2),
(2, 'PAID', 10, 6, 'app_cloud', 4),
(3, 'FREE', 3, 3, 'integration_cloud', 2),
(4, 'PAID', 10, 6, 'integration_cloud', 4);

INSERT INTO `AC_RUNTIME_CONTAINER_SPECIFICATIONS` (`id`, `CON_SPEC_ID`) VALUES
(1, 3),
(2, 2),
(2, 3),
(3, 1),
(3, 2),
(3, 3),
(5, 3),
(6, 3),
(7, 3),
(1, 4),
(7, 4),
(2, 4),
(8, 2),
(8, 3),
(8, 4),
(5, 4),
(6, 4),
(9, 4),
(10, 3),
(10, 4),
(11, 3),
(11, 4),
(12, 3),
(12, 4),
(13, 3),
(13, 4),
(14, 3),
(14, 4),
(15, 3),
(15, 4),
(16, 3),
(16, 4),
(17, 2),
(17, 3),
(17, 4),
(18, 4),
(19, 5),
(19, 7);

-- -----------------------------------------------------
-- Table `AppCloudDB`.`AC_CLOUD_APP_TYPE`
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS `AppCloudDB`.`AC_CLOUD_APP_TYPE` (
  `cloud_id` VARCHAR(50) NOT NULL,
  `app_type_id` INT NOT NULL,
  CONSTRAINT `fk_cloud_has_cloudAppType_appType`
    FOREIGN KEY (`app_type_id`)
    REFERENCES `AppCloudDB`.`AC_APP_TYPE` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Populate Data to `AppCloudDB`.`AC_CLOUD_APP_TYPE`
-- -----------------------------------------------------

INSERT INTO `AC_CLOUD_APP_TYPE` (`cloud_id`, `app_type_id`) VALUES
('app_cloud', 1),
('app_cloud', 2),
('app_cloud', 3),
('app_cloud', 4),
('app_cloud', 5),
('app_cloud', 6),
('app_cloud', 7),
('integration_cloud', 1),
('integration_cloud', 2),
('integration_cloud', 3),
('integration_cloud', 4),
('integration_cloud', 5),
('integration_cloud', 6),
('integration_cloud', 7),
('integration_cloud', 8);

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- --------------------------------------------------
-- CUSTOM DOCKER IMAGE TABLE
-- --------------------------------------------------
CREATE TABLE IF NOT EXISTS `AppCloudDB`.`AC_CUSTOM_DOCKER_IMAGES` (
  `image_id` VARCHAR(500) NOT NULL,
  `tenant_id` INT NOT NULL,
  `remote_url` VARCHAR(500) NULL,
  `test_results_json` VARCHAR(500) NULL,
  `status` VARCHAR(10) NULL,
  `last_updated` DATETIME NULL,
  PRIMARY KEY (`image_id`))
ENGINE = InnoDB;

