--
-- Copyright 2010-2015 Axel Fontaine
--
-- Licensed under the Apache License, Version 2.0 (the "License");
-- you may not use this file except in compliance with the License.
-- You may obtain a copy of the License at
--
--         http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.
--

CREATE TABLE `${schema}`.`${table}` (
    `version_rank` INT NOT NULL,
    `installed_rank` INT NOT NULL,
    `version` VARCHAR(50) NOT NULL,
    `description` VARCHAR(200) NOT NULL,
    `type` VARCHAR(20) NOT NULL,
    `script` VARCHAR(1000) NOT NULL,
    `checksum` INT,
    `installed_by` VARCHAR(100) NOT NULL,
    `installed_on` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `execution_time` INT NOT NULL,
    `success` BOOL NOT NULL,
    `sql_output` VARCHAR(1000)
) ENGINE=InnoDB;
ALTER TABLE `${schema}`.`${table}` ADD CONSTRAINT `${table}_pk` PRIMARY KEY (`version`);

CREATE INDEX `${table}_vr_idx` ON `${schema}`.`${table}` (`version_rank`);
CREATE INDEX `${table}_ir_idx` ON `${schema}`.`${table}` (`installed_rank`);
CREATE INDEX `${table}_s_idx` ON `${schema}`.`${table}` (`success`);
