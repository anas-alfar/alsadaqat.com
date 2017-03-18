# ************************************************************
# 
# == DOMAINS ==
# - check baytelmal i 9/3
# - almasakeen.com
# - shaqtamra.com
# - shaqtamrah.com
# - baitelmal.org
# - baytelmal.org
# - mohajereen.com
# - almohajereen.com
# - zakatelmal.*
# - zakatmal.*
# 
# ****** Database Changes ******
# 
# - Its not clear that data must be alpha, numeric, alphanumeric, or mixed with special characters!
# - Maximum characters count should meet the max in the filed description. For example, if the field varchar(255) then validation should be maximum 255, not 50
#
#
# === DONE ===
# - All fields with data type DropDown list should be changed into ENUM with the full list of options
# - Convert all DropDown fields (which is not 'Yes', 'No') into loockup tables
# - Add default values for loockups tables for each organization
# - Add published/visibility for common tables
# - Handle subtype_id on posts
# - Remove locale_id from original tbales
# - Replace fullname with first, middle, third, and last name
# - Remove text columns from original tables
# - Rename XXX_id to something better!
# - Add beneficiary_profile_wizard table
# - Add beneficiary media categories for each media type
#   - or beneficiary profile media categories for each media type
# - Add pages/posts tables
# - Add beneficiary signup table for self signup
# - Add beneficiary medical table
# - Make all lookup tables configured per country
# - Make all locale tables has the original entity id, not only the parent id primary key
# - Add assets table
# - Add payment tables
# - Add beneficiary emergency table
#   => jsut adad a new profile
# - Add refugees table
#   => jsut adad a new profile
# - Add booking tables
# - Add Donor Asset tracking or history table / view
#   - M. Mousa suggest to remove it since all assets already exist in the org_liabilities
# - Add many to many table to connect donors with family
# - Add file_number == sequence as an auto increment for each organization i beneficiary and projects
# - Move evnets as a standalone entity
# - Add configuration table
# - Add asset_type_unit_type many to many table
# - Add asset_type_storage_type many to many table
# - Add currency table
# - Add currency_exchange_rate table
# - Add admin_authorization_organization_relation table
# - Add admin_authorization_organization_relation_role table
# - Add asset_type_condition many to many table
# - Handle asset transfer within the same organization between different branches
# - Add many to many table to connect donors wiht projects
# 
# 
# === TODO ===
# - Where should I charge donors for the delivery? In the cache on delivery payment method itself? 
#   or as part of the PPF? Check with Iskandar.
# - Check with Ramamaneh if we need to add "Collected" status to the payment method!
#   How would I know that a payment has been collected? check the COD for example!
# - Add gl_account_activities
#   - List all activities
#   - List each activity actinos
#     - Send payment to agent
#     - Pay for proect expenses
#     - Send payment to beneficiary
#   - List each activity action mapping to its accounts with payment distribution. 
#     Anas to check if the mapping should take place with the activity itself, 
#     or with the action within the activity! 
# - Example
#   + Liability
#   - Equity
#     - Programs
#       - Sadaqat
#       - Ada7e 
#     + Events
#     + Benefciary
#   + Expenses
#   
#   - New Program -> Eftar Saiem
#     - Equity
#       -> Eftar Saiem Equity
#     - Expenses
#       -> Eftar Saiem Expenses
#
# - Add subscription plans table
# - Add packages table for extra pakacges like SMS
# - Add table organization subscription tracking
# - Add organization_group table
# - Add organization_group_XXX for each orgsnization where XXX = organization_id as many-to-many table
# - Handle organization subscription payment?
# - Add "Description == البيان == نايبلا" for donations
# - Add slip number on assets_received or asset_liabilities
# - Change project? cause? program?
# - Change beneficiary status
#   - Under study
#   - Donored مكفولة
#   - Rejected
#   - Looking for Donor
# - Add Organization Bank/financial Details
#   - Bank account details
#   - PayPal details
# - AdminArea::PaymentsRefund
# - AdminArea::PaymentsAccept
# - AdminArea::PaymentsCancel
# - Add Project Asset tables same a benificiary
# - Add asset_media_gallery tables
# - Add payment details when beneficiary receives payment
#   - What did you spend your second transfer on?
#   - How is your life different than it would have been if you never received the transfer?
#   - In your opinion, what does GiveDirectly do well, and what does it not do well?
# - Add tabels for the homepage (features, ...etc)
# - Should we add tax anywhere? for projects? donations? on payments? or on booking/accounting?
# - Add album tables for all media tables
# - Handle shipments for donors who wants to donate assets and can't dropp off the assets. 
#   We need them to pay for the transportation and we can pick up asstes from them.
# 
# == Setup New Organization ==
# - Create default Role + Rules
# - Create default Accounts
# - Create default projects
# 
# == Phase II ==
# - How can the organization donate to other organizaitons, projects, or cause???
# 
# == Cron Jobs ==
# - Accounting statment, auto release money for organizations
# - Renewal organization subscription
# - Assets to be expired
# - Currency exchange rate
# - Reprocess failed payments
# - Projects/Events 
#   - Reminders
#   - Auto open, Auto close
# 
# == Payment Gateway ==
# - http://www.payfort.com/
# - http://www.paypal.com/
# 
# == Payment Admin Tools ==
# - reports per payment method
# - reports per daily transaction
# - reports per payment status
# 
# == Homepage sections ==
#   - Signup
#     - Donor
#     - Beneficiary
#     - Organization
#   - Login link
#     - Site Authentication
#   - Donate now
#   - List of projects/project_events
#   - List of beneficiaries
#   - List of requested assets
#     - Organization
#     - Beneficiary
#     - Project
#   - Header / optinoal
#     - Top menu
#     - Logo
#   - Qoute box
#   - Clients
#   - Client Testimonials
#   - Projects
#   - News
#   - Events Calendar
#   - Teams
#   - Announcement
#   - Photo gallery
#   - Donation Box
#   - Our organization bank account number
#   - Emergency help required / SOS
#   - Partners
#   - Footer
#   - Main Menu
#     - Poor
#     - Refugees
#     - Orphan
#     - ....etc
#     - Projects
#     - Causes
# 
# == Database Changes ==
# - Add social media integration to signup as donor
#   - Google, FB, 
# - Add social media profiles for org, donor, benefiacry, and agents
# - Add social media integration for communication
#   - WhatsApp, Twitter, FB, SnapChat, Instagram, Google [YouTube Channel]
# - Add communication channel
#   - Create groups
#   - Add people to groups
#

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

# ////////////////////////////////////////////////////////////
# 
# Lookup Tables
# 
# \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

# Dump of table configuration
# - type / category
#   - global website config
#   - system config
#   - organization config
#   - Beneficiary
# ------------------------------------------------------------

DROP TABLE IF EXISTS `configuration`;

CREATE TABLE `configuration` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL DEFAULT '' COMMENT 'Optional, Text Field, Min:0, Max: 2048',
  `config_key` varchar(512) NOT NULL,
  `config_value` varchar(2048) NOT NULL,
  `config_type` enum('System', 'Website', 'Organization', 'Beneficiary', 'Donor', 'Payment', 'Agent', 'Project', 'Post') NOT NULL DEFAULT 'System',
  `allow_override` enum('Yes', 'No') NOT NULL DEFAULT 'No',
  `force` enum('Yes', 'No') NOT NULL DEFAULT 'No',
  `published` enum('Yes', 'No') NOT NULL DEFAULT 'No',
  `environment` enum('DEV', 'STG', 'LIVE') NOT NULL DEFAULT 'LIVE',
  `organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table menu_category
# - Top menu
# - Main menu
# - Footer menu
# - Organization homepage site menu
# - Organization admin area menu
# - Organization user menu
# - Agent user menu
# - Donor user menu
# - Benefieary user menu
# ------------------------------------------------------------

DROP TABLE IF EXISTS `menu_category`;

CREATE TABLE `menu_category` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `published` enum('Yes', 'No') NOT NULL DEFAULT 'No',
  `status` enum('Draft', 'Pending', 'Active', 'Inactive', 'Deleted') NOT NULL DEFAULT 'Draft',
  `sequence` int(11) unsigned NOT NULL DEFAULT '0',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table menu_category_locale
# ------------------------------------------------------------

DROP TABLE IF EXISTS `menu_category_locale`;

CREATE TABLE `menu_category_locale` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL DEFAULT '' COMMENT 'Optional, Text Field, Min:0, Max: 2048',
  `locale_id` int(11) unsigned NOT NULL,
  `menu_category_id` int(11) unsigned NOT NULL COMMENT 'From Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table menu
# - In case we want to grant organizations permission
# to customize their own menu
# ------------------------------------------------------------

DROP TABLE IF EXISTS `menu`;

CREATE TABLE `menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `status` enum('Draft', 'Pending', 'Active', 'Blocked', 'Deleted') NOT NULL DEFAULT 'Draft',
  `sequence` int(11) unsigned NOT NULL DEFAULT '0',
  `published` enum('Yes', 'No') NOT NULL DEFAULT 'No',
  `menu_category_id` int(11) unsigned NOT NULL,
  `country_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `organization_branch_id` int(11) unsigned NOT NULL,
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table menu_item
# ------------------------------------------------------------

DROP TABLE IF EXISTS `menu_item`;

CREATE TABLE `menu_item` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) unsigned NOT NULL,
  `parent_id` int(11) unsigned NOT NULL DEFAULT '0',
  `published` enum('Yes', 'No') NOT NULL DEFAULT 'No',
  `sequence` int(11) unsigned DEFAULT '0',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table menu_item_locale
# ------------------------------------------------------------

DROP TABLE IF EXISTS `menu_item_locale`;

CREATE TABLE `menu_item_locale` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `link` mediumtext NOT NULL,
  `locale_id` int(11) unsigned NOT NULL,
  `menu_item_id` int(11) unsigned NOT NULL COMMENT 'From Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table marital_status
# - Married
# - Widowed
# - Separated
# - Divorced
# - Single
# ------------------------------------------------------------

DROP TABLE IF EXISTS `marital_status`;

CREATE TABLE `marital_status` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `published` enum('Yes', 'No') COLLATE utf8_bin NOT NULL DEFAULT 'Yes' COMMENT 'Required, DropDownList',
  `country_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table marital_status_locale
# ------------------------------------------------------------

DROP TABLE IF EXISTS `marital_status_locale`;

CREATE TABLE `marital_status_locale` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT 'Required, Text Field, Min:3, Max:100',
  `description` mediumtext NOT NULL DEFAULT '' COMMENT 'Optional, Text Field, Min:0, Max: 2048',
  `locale_id` int(11) unsigned NOT NULL,
  `marital_status_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table education_level
# - Illiterate
# - KG
# - School
# - High School
# - Diploma
# - High Diploma
# - Bachelour
# - Master
# - PHD
# ------------------------------------------------------------

DROP TABLE IF EXISTS `education_level`;

CREATE TABLE `education_level` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `published` enum('Yes', 'No') COLLATE utf8_bin NOT NULL DEFAULT 'Yes' COMMENT 'Required, DropDownList',
  `country_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table education_level_locale
# ------------------------------------------------------------

DROP TABLE IF EXISTS `education_level_locale`;

CREATE TABLE `education_level_locale` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT 'Required, Text Field, Min:3, Max:100',
  `description` mediumtext NOT NULL DEFAULT '' COMMENT 'Optional, Text Field, Min:0, Max: 2048',
  `locale_id` int(11) unsigned NOT NULL,
  `education_level_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table medical_condition
# - Healthy
# - Sick
# - Helpless
# - Speical Need
# - NA
# ------------------------------------------------------------

DROP TABLE IF EXISTS `medical_condition`;

CREATE TABLE `medical_condition` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `published` enum('Yes', 'No') COLLATE utf8_bin NOT NULL DEFAULT 'Yes' COMMENT 'Required, DropDownList',
  `country_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table medical_condition_locale
# ------------------------------------------------------------

DROP TABLE IF EXISTS `medical_condition_locale`;

CREATE TABLE `medical_condition_locale` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT 'Required, Text Field, Min:3, Max:100',
  `description` mediumtext NOT NULL DEFAULT '' COMMENT 'Optional, Text Field, Min:0, Max: 2048',
  `locale_id` int(11) unsigned NOT NULL,
  `medical_condition_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table death_reason
# - Accident
# - Army Forces
# - Medical Condition
# - Other
# ------------------------------------------------------------

DROP TABLE IF EXISTS `death_reason`;

CREATE TABLE `death_reason` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `published` enum('Yes', 'No') COLLATE utf8_bin NOT NULL DEFAULT 'Yes' COMMENT 'Required, DropDownList',
  `country_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table death_reason_locale
# ------------------------------------------------------------

DROP TABLE IF EXISTS `death_reason_locale`;

CREATE TABLE `death_reason_locale` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT 'Required, Text Field, Min:3, Max:100',
  `description` mediumtext NOT NULL DEFAULT '' COMMENT 'Optional, Text Field, Min:0, Max: 2048',
  `locale_id` int(11) unsigned NOT NULL,
  `death_reason_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table media_filetype
# - Photo
# - Video
# - PDF
# ------------------------------------------------------------

DROP TABLE IF EXISTS `media_filetype`;

CREATE TABLE `media_filetype` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `published` enum('Yes', 'No') COLLATE utf8_bin NOT NULL DEFAULT 'Yes' COMMENT 'Required, DropDownList',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table media_filetype_locale
# ------------------------------------------------------------

DROP TABLE IF EXISTS `media_filetype_locale`;

CREATE TABLE `media_filetype_locale` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT 'Required, Text Field, Min:3, Max:100',
  `description` mediumtext NOT NULL DEFAULT '' COMMENT 'Optional, Text Field, Min:0, Max: 2048',
  `locale_id` int(11) unsigned NOT NULL,
  `media_filetype_id` int(11) unsigned NOT NULL,
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table media_status
# - Draft
# - Pending
# - Active
# - Blocked
# - Deleted
# ------------------------------------------------------------

DROP TABLE IF EXISTS `media_status`;

CREATE TABLE `media_status` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table media_status_locale
# ------------------------------------------------------------

DROP TABLE IF EXISTS `media_status_locale`;

CREATE TABLE `media_status_locale` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT 'Required, Text Field, Min:3, Max:100',
  `description` mediumtext NOT NULL DEFAULT '' COMMENT 'Optional, Text Field, Min:0, Max: 2048',
  `locale_id` int(11) unsigned NOT NULL,
  `media_status_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table media_category
# - Beneficiary
# - Organization
# - Project
# - Post / Article
# - Donor
# - Massege
# - Agents
# - Asset
#   - Photo
# - Project
#     - Logo
#     - Contract
#     - Progress
#   - Masjed
#   - Event
#   - Well
# ------------------------------------------------------------

DROP TABLE IF EXISTS `media_category`;

CREATE TABLE `media_category` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT 'Required, Text Field, Min:3, Max:100',
  `published` enum('Yes', 'No') NOT NULL DEFAULT 'No',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table media_type
# - Personal photo
# - Beneficiary photo
# - Family photo
# - Death certificate for father
# - Death certificate for mother
# - Death certificate for relative
# - Personal ID
# - Family book
# - Passport
# - Land Authority
# - UN Supplies Card
# - Social / Daman 
# - Property
# - National Aid Fund
# - Zakat Fund
# - Charity Fund
# - Education Certificate_file
# - Education Payment_slip_file
# - Medical report
# - Contract Photo, projects
# - Personal Photo, agent, donor, org user, beneficiary
# - Passport Photo
# - Contract Photo
# ------------------------------------------------------------

DROP TABLE IF EXISTS `media_type`;

CREATE TABLE `media_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `media_category_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `published` enum('Yes', 'No') NOT NULL DEFAULT 'No',
  `country_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table media_type_locale
# ------------------------------------------------------------

DROP TABLE IF EXISTS `media_type_locale`;

CREATE TABLE `media_type_locale` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT 'Required, Text Field, Min:3, Max:100',
  `description` mediumtext NOT NULL DEFAULT '' COMMENT 'Optional, Text Field, Min:0, Max: 2048',
  `locale_id` int(11) unsigned NOT NULL,
  `media_type_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table city
# ------------------------------------------------------------

DROP TABLE IF EXISTS `city`;

CREATE TABLE `city` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `country_id` int(11) unsigned NOT NULL COMMENT 'Required, DropDownList',
  `population_count` int(11) unsigned DEFAULT NULL COMMENT 'Optional: Text Field, Min:1',
  `houses_count` int(11) unsigned DEFAULT NULL COMMENT 'Optional: Text Field, Min:1',
  `distance_to_capital` int(11) unsigned DEFAULT NULL COMMENT 'Optional: Text Field, Min:1',
  `published` enum('Yes', 'No') COLLATE utf8_bin NOT NULL DEFAULT 'Yes' COMMENT 'Required, DropDownList',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`),
  KEY `country_id` (`country_id`),
  CONSTRAINT `city_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table city_locale
# ------------------------------------------------------------

DROP TABLE IF EXISTS `city_locale`;

CREATE TABLE `city_locale` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `locale_id` int(11) unsigned NOT NULL,
  `city_id` int(11) unsigned NOT NULL COMMENT 'From Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table country
# ------------------------------------------------------------

DROP TABLE IF EXISTS `country`;

CREATE TABLE `country` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `iso_code_2` varchar(2) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT 'Optional, Text Field, Min:2, Max:2',
  `iso_code_3` varchar(3) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT 'Required, Text Field, Min:3, Max:3',
  `default_currency` varchar(3) COLLATE utf8_bin NOT NULL DEFAULT 'USD',
  `published` enum('Yes', 'No') COLLATE utf8_bin NOT NULL DEFAULT 'Yes' COMMENT 'Required, DropDownList',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


# Dump of table country_locale
# ------------------------------------------------------------

DROP TABLE IF EXISTS `country_locale`;

CREATE TABLE `country_locale` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `locale_id` int(11) unsigned NOT NULL,
  `country_id` int(11) unsigned NOT NULL COMMENT 'From Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table currency
# ------------------------------------------------------------

DROP TABLE IF EXISTS `currency`;

CREATE TABLE `currency` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `currency` varchar(3) NOT NULL COMMENT 'currency short code like JOD, USD',
  `name` varchar(255) NOT NULL COMMENT 'Language representation in English language only like US Dollar',
  `currency_title` varchar(255) DEFAULT NULL COMMENT 'Language representation in orginal language like دينار أردني',
  `published` enum('Yes', 'No') NOT NULL DEFAULT 'No',
  `sequence` int(11) unsigned NOT NULL DEFAULT '0',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table currency_exchange_rate
# ------------------------------------------------------------

DROP TABLE IF EXISTS `currency_exchange_rate`;

CREATE TABLE `currency_exchange_rate` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `from_currency` varchar(3) NOT NULL COMMENT 'currency_exchange_rate short code like JOD, USD',
  `to_currency` varchar(255) DEFAULT NULL COMMENT 'Language representation in orginal language like دينار أردني',
  `exchange_rate` float unsigned NOT NULL COMMENT 'Optional, Text Field, Min:0.1',
  `status` enum('Active', 'Inactive') NOT NULL DEFAULT 'Active',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table locale
# ------------------------------------------------------------

DROP TABLE IF EXISTS `locale`;

CREATE TABLE `locale` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `locale` varchar(6) NOT NULL COMMENT 'Locale short code like ar-SA',
  `name` varchar(255) NOT NULL COMMENT 'Language representation in English language only like Arabic - Saudi Arabia',
  `locale_title` varchar(255) DEFAULT NULL COMMENT 'Language representation in orginal language like العربية',
  `published` enum('Yes', 'No') NOT NULL DEFAULT 'No',
  `status` enum('Draft', 'Pending', 'Active', 'Blocked', 'Deleted') NOT NULL DEFAULT 'Draft',
  `sequence` int(11) unsigned NOT NULL DEFAULT '0',
  `country_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `icon` varchar(1024) NOT NULL DEFAULT '',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table translation
# ------------------------------------------------------------

DROP TABLE IF EXISTS `translation`;

CREATE TABLE `translation` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `label` varchar(255) NOT NULL,
  `translation`  mediumtext NOT NULL,
  `locale_id` int(11) unsigned NOT NULL,
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table asset
# - Cash
# - Bank Check
# - Wire Transfer
# - VISA/CC/Master
# - Online transaction
# - Fool cans
# - Bantaloon
# - Kartoon Tamer
# - Sobah
# ------------------------------------------------------------

DROP TABLE IF EXISTS `asset`;

CREATE TABLE `asset` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `asset_type_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `cost` float unsigned NOT NULL COMMENT 'Optional, Text Field, Min:0.1',
  `tax_type` enum('Fixed', 'Percent', 'None') NOT NULL DEFAULT 'None' COMMENT 'Required, DropDownList',
  `tax_value` float unsigned NOT NULL COMMENT 'Optional, Text Field, Min:0.1',
  `currency` varchar(3) COLLATE utf8_bin NOT NULL DEFAULT 'USD',
  `currency_exchange_rate_id` int(11) unsigned NOT NULL COMMENT 'Required, DropDownList',
  `published` enum('Yes', 'No') NOT NULL DEFAULT 'No',
  `country_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`),
  KEY `owner_organization_user_id` (`owner_organization_user_id`),
  CONSTRAINT `asset_ibfk_2` FOREIGN KEY (`owner_organization_user_id`) REFERENCES `organization_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table asset_locale
# ------------------------------------------------------------

DROP TABLE IF EXISTS `asset_locale`;

CREATE TABLE `asset_locale` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Optional, Text Field, Min:3, Max: 50',
  `description` mediumtext NOT NULL DEFAULT '' COMMENT 'Optional, Text Field, Min:3, Max: 50',
  `photo` varchar(1024) NOT NULL DEFAULT '' COMMENT 'Optional, Text Field, Min:3, Max: 50',
  `locale_id` int(11) unsigned NOT NULL,
  `asset_id` int(11) unsigned NOT NULL COMMENT 'From Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# Dump of table asset_type
# - Money
# - Meat
# - Frozen Food
# - Canned Food
# - Daily Meals
# - Stationary
# - Fashion
# - Moblie And It
# - Home Appliances
# - Kitchen Equipments
# - Toys
# - Drugs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `asset_type`;

CREATE TABLE `asset_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `has_tax` enum('Yes', 'No') NOT NULL DEFAULT 'No',
  `has_sku` enum('Yes', 'No') NOT NULL DEFAULT 'No',
  `has_serial` enum('Yes', 'No') NOT NULL DEFAULT 'No',
  `has_expiry_date` enum('Yes', 'No') NOT NULL DEFAULT 'No',
  `published` enum('Yes', 'No') NOT NULL DEFAULT 'No',
  `country_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table asset_type_locale
# ------------------------------------------------------------

DROP TABLE IF EXISTS `asset_type_locale`;

CREATE TABLE `asset_type_locale` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT 'Required, Text Field, Min:3, Max:100',
  `description` mediumtext NOT NULL DEFAULT '' COMMENT 'Optional, Text Field, Min:0, Max: 2048',
  `locale_id` int(11) unsigned NOT NULL,
  `asset_type_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `asset_type`;


# Dump of table asset_storage_type
# - Safety
# - Cold
# - Warm
# - Freez
# - Dry
# - Inside
# - Outside
# - Packed
# - Hazard
# - Fast Burn
# ------------------------------------------------------------

DROP TABLE IF EXISTS `asset_storage_type`;

CREATE TABLE `asset_storage_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `published` enum('Yes', 'No') NOT NULL DEFAULT 'No',
  `country_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table asset_storage_type_locale
# ------------------------------------------------------------

DROP TABLE IF EXISTS `asset_storage_type_locale`;

CREATE TABLE `asset_storage_type_locale` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT 'Required, Text Field, Min:3, Max:100',
  `description` mediumtext NOT NULL DEFAULT '' COMMENT 'Optional, Text Field, Min:0, Max: 2048',
  `locale_id` int(11) unsigned NOT NULL,
  `asset_storage_type_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table asset_type_storage_type
# - Money > Safety
# - Frozen Food > Freezing
# - Stationary > Warm
# ------------------------------------------------------------

DROP TABLE IF EXISTS `asset_type_storage_type`;

CREATE TABLE `asset_type_storage_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `asset_type_id` int(11) unsigned NOT NULL,
  `asset_storage_type_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table asset_unit_type
# - KiloGram
# - Gram
# - Liter
# - Piece
# - Thabee7a
# ------------------------------------------------------------

DROP TABLE IF EXISTS `asset_unit_type`;

CREATE TABLE `asset_unit_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `published` enum('Yes', 'No') NOT NULL DEFAULT 'No',
  `country_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table asset_unit_type_locale
# ------------------------------------------------------------

DROP TABLE IF EXISTS `asset_unit_type_locale`;

CREATE TABLE `asset_unit_type_locale` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT 'Required, Text Field, Min:3, Max:100',
  `description` mediumtext NOT NULL DEFAULT '' COMMENT 'Optional, Text Field, Min:0, Max: 2048',
  `locale_id` int(11) unsigned NOT NULL,
  `asset_unit_type_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table asset_type_unit_type
# - Money > Currency
# - Frozen Food > KG
# - Frozen Food > Pack
# - Stationary > Dozen
# - Stationary > Piece
# ------------------------------------------------------------

DROP TABLE IF EXISTS `asset_type_unit_type`;

CREATE TABLE `asset_type_unit_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `asset_type_id` int(11) unsigned NOT NULL,
  `asset_unit_type_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table asset_condition
# - New
# - Used
# - Referbished
# - Live
# - Dead
# - Need Replacement
# - Not Functioning
# ------------------------------------------------------------

DROP TABLE IF EXISTS `asset_condition`;

CREATE TABLE `asset_condition` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `published` enum('Yes', 'No') NOT NULL DEFAULT 'No',
  `country_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table asset_condition_locale
# ------------------------------------------------------------

DROP TABLE IF EXISTS `asset_condition_locale`;

CREATE TABLE `asset_condition_locale` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT 'Required, Text Field, Min:3, Max:100',
  `description` mediumtext NOT NULL DEFAULT '' COMMENT 'Optional, Text Field, Min:0, Max: 2048',
  `locale_id` int(11) unsigned NOT NULL,
  `asset_condition_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table asset_type_condition
# 
# The condition will depend on the asset type as well
# For example:
# - One day old
# - Collected after banquet
# - Certified meals / from restaurants or hotels
# ------------------------------------------------------------

DROP TABLE IF EXISTS `asset_type_condition`;

CREATE TABLE `asset_type_condition` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `asset_type_id` int(11) unsigned NOT NULL,
  `asset_condition_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# ////////////////////////////////////////////////////////////
# 
# beneficiary Tables
# 
# \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

# Dump of table beneficiary

DROP TABLE IF EXISTS `beneficiary`;

CREATE TABLE `beneficiary` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sequence` varchar(32) NOT NULL DEFAULT '' COMMENT 'Required, Text Field, Min:9, Max: 12',
  `family_book_number` varchar(32) NOT NULL DEFAULT '' COMMENT 'Required, Text Field, Min:9, Max: 12',
  `status` enum('New', 'Data Collection', 'In Review', 'Approved', 'Duplicate', 'Deleted') NOT NULL DEFAULT 'New' COMMENT 'Required, DropDownList',
  `country_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `notes` varchar(1024) NOT NULL DEFAULT '' COMMENT 'Optional, Textarea, Min:10, Max:500',
  `options` varchar(1024) NOT NULL DEFAULT '' COMMENT 'Optional, Any other-future info will be saved serialize array key=>value',
  PRIMARY KEY (`id`),
  KEY `beneficiary_owner_organization_id` (`owner_organization_id`),
  KEY `beneficiary_owner_organization_user_id` (`owner_organization_user_id`),
  CONSTRAINT `beneficiary_ibfk_1` FOREIGN KEY (`owner_organization_id`) REFERENCES `organization` (`id`),
  CONSTRAINT `beneficiary_ibfk_2` FOREIGN KEY (`owner_organization_user_id`) REFERENCES `organization_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table beneficiary_locale
# ------------------------------------------------------------

DROP TABLE IF EXISTS `beneficiary_locale`;

CREATE TABLE `beneficiary_locale` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `family_name` varchar(255) NOT NULL DEFAULT '',
  `intro_text` mediumtext NOT NULL DEFAULT '',
  `locale_id` int(11) unsigned NOT NULL,
  `beneficiary_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table beneficiary_has_profile
# ------------------------------------------------------------

DROP TABLE IF EXISTS `beneficiary_has_profile`;

CREATE TABLE `beneficiary_has_profile` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `beneficiary_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `beneficiary_profile_id` int(11) unsigned NOT NULL COMMENT 'Required, DropDownList',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`),
  KEY `beneficiary_has_profile_owner_organization_id` (`owner_organization_id`),
  KEY `beneficiary_has_profile_owner_organization_user_id` (`owner_organization_user_id`),
  CONSTRAINT `beneficiary_has_profile_ibfk_1` FOREIGN KEY (`owner_organization_id`) REFERENCES `organization` (`id`),
  CONSTRAINT `beneficiary_has_profile_ibfk_2` FOREIGN KEY (`beneficiary_id`) REFERENCES `beneficiary` (`id`),
  CONSTRAINT `beneficiary_has_profile_ibfk_3` FOREIGN KEY (`owner_organization_user_id`) REFERENCES `organization_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table beneficiary_profile
# - Self Signup
# - Education
# - Orphan
# - Poor
# - Widow
# - Disabled
# - Teacher
# - Medical Care
# - Emergency
# - Asset
# - Other
# - Refugees
# ------------------------------------------------------------

DROP TABLE IF EXISTS `beneficiary_profile`;

CREATE TABLE `beneficiary_profile` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `details` enum('Yes', 'No') NOT NULL DEFAULT 'No' COMMENT 'Optional, DropDownList',
  `family` enum('Yes', 'No') NOT NULL DEFAULT 'No' COMMENT 'Optional, DropDownList',
  `family_flag` enum('Yes', 'No') NOT NULL DEFAULT 'No' COMMENT 'Optional, DropDownList',
  `income` enum('Yes', 'No') NOT NULL DEFAULT 'No' COMMENT 'Optional, DropDownList',
  `spending` enum('Yes', 'No') NOT NULL DEFAULT 'No' COMMENT 'Optional, DropDownList',
  `home` enum('Yes', 'No') NOT NULL DEFAULT 'No' COMMENT 'Optional, DropDownList',
  `asset` enum('Yes', 'No') NOT NULL DEFAULT 'No' COMMENT 'Optional, DropDownList',
  `asset_required` enum('Yes', 'No') NOT NULL DEFAULT 'No' COMMENT 'Optional, DropDownList',
  `profile_medical` enum('Yes', 'No') NOT NULL DEFAULT 'No' COMMENT 'Optional, DropDownList',
  `profile_medical_examination` enum('Yes', 'No') NOT NULL DEFAULT 'No' COMMENT 'Optional, DropDownList',
  `research_notes` enum('Yes', 'No') NOT NULL DEFAULT 'No' COMMENT 'Optional, DropDownList',
  `visibility` enum('Yes', 'No') COLLATE utf8_bin NOT NULL DEFAULT 'Yes' COMMENT 'Required, DropDownList',
  `beneficiary_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `country_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`),
  KEY `beneficiary_profile_owner_organization_id` (`owner_organization_id`),
  KEY `beneficiary_profile_owner_organization_user_id` (`owner_organization_user_id`),
  CONSTRAINT `beneficiary_profile_ibfk_1` FOREIGN KEY (`owner_organization_id`) REFERENCES `organization` (`id`),
  CONSTRAINT `beneficiary_profile_ibfk_2` FOREIGN KEY (`beneficiary_id`) REFERENCES `beneficiary` (`id`),
  CONSTRAINT `beneficiary_profile_ibfk_3` FOREIGN KEY (`owner_organization_user_id`) REFERENCES `organization_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table beneficiary_profile_locale
# ------------------------------------------------------------

DROP TABLE IF EXISTS `beneficiary_profile_locale`;

CREATE TABLE `beneficiary_profile_locale` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL DEFAULT '' COMMENT 'Optional, Text Field, Min:0, Max: 2048',
  `locale_id` int(11) unsigned NOT NULL,
  `beneficiary_profile_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table beneficiary_profile_details
# ------------------------------------------------------------

DROP TABLE IF EXISTS `beneficiary_profile_details`;

CREATE TABLE `beneficiary_profile_details` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `has_paterfamilias` enum('Yes', 'No') NOT NULL DEFAULT 'Yes' COMMENT 'Required, DropDownList',
  `has_family_members` enum('Yes', 'No') NOT NULL DEFAULT 'Yes' COMMENT 'Required, DropDownList',
  `is_father_alive` enum('Yes', 'No') NOT NULL DEFAULT 'Yes' COMMENT 'Required, DropDownList',
  `is_mother_alive` enum('Yes', 'No') NOT NULL DEFAULT 'Yes' COMMENT 'Required, DropDownList',
  `number_of_sons` tinyint(3) unsigned DEFAULT '0' COMMENT 'Required: Text Field, Min:0, Max:255',
  `number_of_daughters` tinyint(3) unsigned DEFAULT '0' COMMENT 'Required: Text Field, Min:0, Max:255',
  `has_supplies_card` enum('Yes', 'No') NOT NULL DEFAULT 'No' COMMENT 'Required, DropDownList',
  `income_total` float unsigned NOT NULL COMMENT 'Optional, Text Field, Min:1',
  `spending_total` float unsigned NOT NULL COMMENT 'Optional, Text Field, Min:1',
  `beneficiary_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`),
  KEY `beneficiary_profile_details_owner_organization_id` (`owner_organization_id`),
  KEY `beneficiary_profile_details_owner_organization_user_id` (`owner_organization_user_id`),
  CONSTRAINT `beneficiary_profile_details_ibfk_1` FOREIGN KEY (`owner_organization_id`) REFERENCES `organization` (`id`),
  CONSTRAINT `beneficiary_profile_details_ibfk_2` FOREIGN KEY (`beneficiary_id`) REFERENCES `beneficiary` (`id`),
  CONSTRAINT `beneficiary_profile_details_ibfk_3` FOREIGN KEY (`owner_organization_user_id`) REFERENCES `organization_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table beneficiary_profile_disabled
# ------------------------------------------------------------

DROP TABLE IF EXISTS `beneficiary_profile_disabled`;

CREATE TABLE `beneficiary_profile_disabled` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `beneficiary_profile_disabled_type_id` int(11) unsigned NOT NULL COMMENT 'Required',
  `beneficiary_profile_disabled_reason_id` int(11) unsigned NOT NULL COMMENT 'Required',
  `beneficiary_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`),
  KEY `beneficiary_profile_disabled_beneficiary_id` (`beneficiary_id`),
  KEY `beneficiary_profile_disabled_owner_organization_user_id` (`owner_organization_user_id`),
  CONSTRAINT `beneficiary_profile_disabled_ibfk_1` FOREIGN KEY (`beneficiary_id`) REFERENCES `beneficiary` (`id`),
  CONSTRAINT `beneficiary_profile_disabled_ibfk_2` FOREIGN KEY (`owner_organization_user_id`) REFERENCES `organization_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table beneficiary_profile_disabled_type
# - Physical
# - Mental
# - Social
# ------------------------------------------------------------

DROP TABLE IF EXISTS `beneficiary_profile_disabled_type`;

CREATE TABLE `beneficiary_profile_disabled_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `published` enum('Yes', 'No') COLLATE utf8_bin NOT NULL DEFAULT 'Yes' COMMENT 'Required, DropDownList',
  `country_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`),
  KEY `beneficiary_profile_disabled_type_owner_organization_user_id` (`owner_organization_user_id`),
  CONSTRAINT `beneficiary_profile_disabled_type_ibfk_1` FOREIGN KEY (`owner_organization_user_id`) REFERENCES `organization_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table beneficiary_profile_disabled_type_locale
# ------------------------------------------------------------

DROP TABLE IF EXISTS `beneficiary_profile_disabled_type_locale`;

CREATE TABLE `beneficiary_profile_disabled_type_locale` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT 'Required, Text Field, Min:3, Max:100',
  `description` mediumtext NOT NULL DEFAULT '' COMMENT 'Optional, Text Field, Min:0, Max: 2048',
  `locale_id` int(11) unsigned NOT NULL,
  `beneficiary_profile_disabled_type_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table beneficiary_profile_disabled_reason
# - Genetic
# - Pregnancy defect
# - Childbirth defect
# - Infection
# - Accident
# - Environmental
# - Other
# ------------------------------------------------------------

DROP TABLE IF EXISTS `beneficiary_profile_disabled_reason`;

CREATE TABLE `beneficiary_profile_disabled_reason` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `published` enum('Yes', 'No') COLLATE utf8_bin NOT NULL DEFAULT 'Yes' COMMENT 'Required, DropDownList',
  `country_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`),
  KEY `beneficiary_profile_disabled_reason_owner_organization_user_id` (`owner_organization_user_id`),
  CONSTRAINT `beneficiary_profile_disabled_reason_ibfk_1` FOREIGN KEY (`owner_organization_user_id`) REFERENCES `organization_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table beneficiary_profile_disabled_reason_locale
# ------------------------------------------------------------

DROP TABLE IF EXISTS `beneficiary_profile_disabled_reason_locale`;

CREATE TABLE `beneficiary_profile_disabled_reason_locale` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT 'Required, Text Field, Min:3, Max:100',
  `description` mediumtext NOT NULL DEFAULT '' COMMENT 'Optional, Text Field, Min:0, Max: 2048',
  `locale_id` int(11) unsigned NOT NULL,
  `beneficiary_profile_disabled_reason_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table beneficiary_profile_family
# ------------------------------------------------------------

DROP TABLE IF EXISTS `beneficiary_profile_family`;

CREATE TABLE `beneficiary_profile_family` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ssn` varchar(32) NOT NULL DEFAULT '' COMMENT 'Required, Text Field, Min:9, Max:12',
  `phone_number` varchar(17) NOT NULL DEFAULT '' COMMENT 'Optional, Text Field, Min:12, Max: 14',
  `mobile_number` varchar(17) NOT NULL DEFAULT '' COMMENT 'Required, Text Field, Min:12, Max: 14',
  `email` varchar(255) NOT NULL DEFAULT '' COMMENT 'Required, Text Field, Min:3, Max:254',
  `nationality_id` int(11) unsigned NOT NULL COMMENT 'Required, DropDownList',
  `country_id` int(11) unsigned NOT NULL COMMENT 'Required, DropDownList',
  `city_id` int(11) unsigned NOT NULL COMMENT 'Required, DropDownList',
  `date_of_birth` date DEFAULT NULL COMMENT 'Required, Calender',
  `avatar` varchar(1024) NOT NULL DEFAULT '',
  `beneficiary_relation_id` int(11) unsigned NOT NULL COMMENT 'Required, DropDownList',
  `marital_status_id` tinyint(3) unsigned DEFAULT '0' COMMENT 'Required: Text Field, Min:0, Max:255',
  `education_level_id` tinyint(3) unsigned DEFAULT '0' COMMENT 'Required: Text Field, Min:0, Max:255',
  `medical_condition_id` tinyint(3) unsigned DEFAULT '0' COMMENT 'Required, DropDownList',
  `beneficiary_profile_family_profession_id` tinyint(3) unsigned DEFAULT '0' COMMENT 'Required, DropDownList',
  `death_date` date DEFAULT NULL COMMENT 'Optional, Calender',
  `death_reason_id` tinyint(3) unsigned DEFAULT '0' COMMENT 'Required, DropDownList',
  `donor_id` int(11) unsigned NOT NULL COMMENT 'Required, DropDownList',
  `beneficiary_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ssn` (`ssn`),
  KEY `beneficiary_profile_family_beneficiary_id` (`beneficiary_id`),
  KEY `beneficiary_profile_family_owner_organization_user_id` (`owner_organization_user_id`),
  KEY `beneficiary_profile_family_beneficiary_relation_id` (`beneficiary_relation_id`),
  CONSTRAINT `beneficiary_profile_family_ibfk_1` FOREIGN KEY (`beneficiary_relation_id`) REFERENCES `beneficiary_relation` (`id`),
  CONSTRAINT `beneficiary_profile_family_ibfk_2` FOREIGN KEY (`beneficiary_id`) REFERENCES `beneficiary` (`id`),
  CONSTRAINT `beneficiary_profile_family_ibfk_3` FOREIGN KEY (`owner_organization_user_id`) REFERENCES `organization_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table beneficiary_profile_family_locale
# ------------------------------------------------------------

DROP TABLE IF EXISTS `beneficiary_profile_family_locale`;

CREATE TABLE `beneficiary_profile_family_locale` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Required, Text Field, Min:3, Max: 50',
  `second_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Required, Text Field, Min:3, Max: 50',
  `third_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Required, Text Field, Min:3, Max: 50',
  `last_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Required, Text Field, Min:3, Max: 50',
  `address` varchar(255) NOT NULL DEFAULT '' COMMENT 'Required, Textarea, Min:3, Max: 50',
  `locale_id` int(11) unsigned NOT NULL,
  `beneficiary_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `beneficiary_family_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table beneficiary_profile_family_sponsorship
# ------------------------------------------------------------

DROP TABLE IF EXISTS `beneficiary_profile_family_sponsorship`;

CREATE TABLE `beneficiary_profile_family_sponsorship` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `beneficiary_profile_family_id` tinyint(3) unsigned DEFAULT '0' COMMENT 'Required, DropDownList',
  `beneficiary_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `donor_id` int(11) unsigned NOT NULL COMMENT 'Required, DropDownList',
  `currency` varchar(3) COLLATE utf8_bin NOT NULL DEFAULT 'USD',
  `currency_exchange_rate_id` int(11) unsigned NOT NULL COMMENT 'Required, DropDownList',
  `amount` float unsigned NOT NULL COMMENT 'Optional, Text Field, Min:0.1',
  `status` enum('Active', 'Inactive') DEFAULT 'Active',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`),
  KEY `beneficiary_profile_family_sponsorship_beneficiary_id` (`beneficiary_id`),
  KEY `beneficiary_profile_family_sponsorship_owner_organization_user_id` (`owner_organization_user_id`),
  CONSTRAINT `beneficiary_profile_family_sponsorship_ibfk_2` FOREIGN KEY (`beneficiary_id`) REFERENCES `beneficiary` (`id`),
  CONSTRAINT `beneficiary_profile_family_sponsorship_ibfk_3` FOREIGN KEY (`owner_organization_user_id`) REFERENCES `organization_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table beneficiary_profile_family_has_flag
# ------------------------------------------------------------

DROP TABLE IF EXISTS `beneficiary_profile_family_has_flag`;

CREATE TABLE `beneficiary_profile_family_has_flag` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `beneficiary_profile_family_flag_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `flag_value` enum('Yes', 'No') NOT NULL DEFAULT 'Yes' COMMENT 'Required, DropDownList',
  `beneficiary_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`),
  KEY `beneficiary_profile_family_has_flag_organization_id` (`owner_organization_id`),
  KEY `beneficiary_profile_family_has_flag_owner_organization_user_id` (`owner_organization_user_id`),
  CONSTRAINT `beneficiary_profile_family_has_flag_ibfk_1` FOREIGN KEY (`owner_organization_id`) REFERENCES `organization` (`id`),
  CONSTRAINT `beneficiary_profile_family_has_flag_ibfk_2` FOREIGN KEY (`owner_organization_user_id`) REFERENCES `organization_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table beneficiary_profile_family_flag
# - Is Main contact
# - Is Alive
# - Is Paterfamilias
# - Is Orphan
# - Is Widow
# - Is Military
# - Is Shaheed
# - Is Pregnant
# - Is In Prison
# ------------------------------------------------------------

DROP TABLE IF EXISTS `beneficiary_profile_family_flag`;

CREATE TABLE `beneficiary_profile_family_flag` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `published` enum('Yes', 'No') COLLATE utf8_bin NOT NULL DEFAULT 'Yes' COMMENT 'Required, DropDownList',
  `country_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`),
  KEY `beneficiary_profile_family_flag_owner_organization_user_id` (`owner_organization_user_id`),
  CONSTRAINT `beneficiary_profile_family_flag_ibfk_1` FOREIGN KEY (`owner_organization_user_id`) REFERENCES `organization_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table beneficiary_profile_family_flag_locale
# ------------------------------------------------------------

DROP TABLE IF EXISTS `beneficiary_profile_family_flag_locale`;

CREATE TABLE `beneficiary_profile_family_flag_locale` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `flag_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Required, Text Field, Min:3, Max: 50',
  `locale_id` int(11) unsigned NOT NULL,
  `beneficiary_profile_family_flag_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table beneficiary_profile_family_profession
# - In prison
# - Internship
# - Kid
# - School Student
# - Under Graduate Student
# - Looking for Job
# - Employee
# - Business Owner
# ------------------------------------------------------------

DROP TABLE IF EXISTS `beneficiary_profile_family_profession`;

CREATE TABLE `beneficiary_profile_family_profession` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `published` enum('Yes', 'No') COLLATE utf8_bin NOT NULL DEFAULT 'Yes' COMMENT 'Required, DropDownList',
  `country_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table beneficiary_profile_family_profession_locale
# ------------------------------------------------------------

DROP TABLE IF EXISTS `beneficiary_profile_family_profession_locale`;

CREATE TABLE `beneficiary_profile_family_profession_locale` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT 'Required, Text Field, Min:3, Max:100',
  `description` mediumtext NOT NULL DEFAULT '' COMMENT 'Optional, Text Field, Min:0, Max: 2048',
  `locale_id` int(11) unsigned NOT NULL,
  `beneficiary_profile_family_profession_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table beneficiary_profile_income
# ------------------------------------------------------------

DROP TABLE IF EXISTS `beneficiary_profile_income`;

CREATE TABLE `beneficiary_profile_income` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `beneficiary_profile_income_type_id` float unsigned NOT NULL COMMENT 'Optional, Text Field, Min:1',
  `amount` float unsigned NOT NULL COMMENT 'Optional, Text Field, Min:1',
  `frequent` enum('Daily', 'Weekly', 'Monthly', 'Quarterly', 'Annual') DEFAULT 'Monthly',
  `status` enum('Active', 'Inactive') DEFAULT 'Active',
  `beneficiary_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`),
  KEY `beneficiary_profile_income_beneficiary_id` (`beneficiary_id`),
  KEY `beneficiary_profile_income_owner_organization_user_id` (`owner_organization_user_id`),
  CONSTRAINT `beneficiary_profile_income_ibfk_1` FOREIGN KEY (`beneficiary_id`) REFERENCES `beneficiary` (`id`),
  CONSTRAINT `beneficiary_profile_income_ibfk_2` FOREIGN KEY (`owner_organization_user_id`) REFERENCES `organization_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table beneficiary_profile_income_type
# - Has Supplies Card
# - Paterfamilias
# - Beneficiary Business
# - Beneficiary Family Business
# - Social Security
# - Retirement
# - Lands
# - Property
# - Agriculture
# - National Aid Fund
# - Zakat Fund
# - Charity Fund
# - Other Sources
# ------------------------------------------------------------

DROP TABLE IF EXISTS `beneficiary_profile_income_type`;

CREATE TABLE `beneficiary_profile_income_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `published` enum('Yes', 'No') COLLATE utf8_bin NOT NULL DEFAULT 'Yes' COMMENT 'Required, DropDownList',
  `country_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table beneficiary_profile_income_type_locale
# ------------------------------------------------------------

DROP TABLE IF EXISTS `beneficiary_profile_income_type_locale`;

CREATE TABLE `beneficiary_profile_income_type_locale` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT 'Required, Text Field, Min:3, Max:100',
  `description` mediumtext NOT NULL DEFAULT '' COMMENT 'Optional, Text Field, Min:0, Max: 2048',
  `locale_id` int(11) unsigned NOT NULL,
  `beneficiary_profile_income_type_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table beneficiary_profile_spending
# ------------------------------------------------------------

DROP TABLE IF EXISTS `beneficiary_profile_spending`;

CREATE TABLE `beneficiary_profile_spending` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `beneficiary_profile_spending_type_id` float unsigned NOT NULL COMMENT 'Optional, Text Field, Min:1',
  `frequent` enum('Daily', 'Weekly', 'Monthly', 'Quarterly', 'Annual') DEFAULT 'Monthly',
  `amount` float unsigned NOT NULL COMMENT 'Optional, Text Field, Min:1',
  `beneficiary_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`),
  KEY `beneficiary_profile_spending_beneficiary_id` (`beneficiary_id`),
  KEY `beneficiary_profile_spending_owner_organization_user_id` (`owner_organization_user_id`),
  CONSTRAINT `beneficiary_profile_spending_ibfk_1` FOREIGN KEY (`beneficiary_id`) REFERENCES `beneficiary` (`id`),
  CONSTRAINT `beneficiary_profile_spending_ibfk_2` FOREIGN KEY (`owner_organization_user_id`) REFERENCES `organization_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table beneficiary_profile_spending_type
# - Home Rent
# - Food
# - Clothes
# - Medication
# - Smoking
# - Education
# - Transportation
# - Gas Invoice
# - Water Invoice
# - Elctricity Invoice
# - Kerosene
# - Other Spendings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `beneficiary_profile_spending_type`;

CREATE TABLE `beneficiary_profile_spending_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `published` enum('Yes', 'No') COLLATE utf8_bin NOT NULL DEFAULT 'Yes' COMMENT 'Required, DropDownList',
  `country_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table beneficiary_profile_spending_type_locale
# ------------------------------------------------------------

DROP TABLE IF EXISTS `beneficiary_profile_spending_type_locale`;

CREATE TABLE `beneficiary_profile_spending_type_locale` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT 'Required, Text Field, Min:3, Max:100',
  `description` mediumtext NOT NULL DEFAULT '' COMMENT 'Optional, Text Field, Min:0, Max: 2048',
  `locale_id` int(11) unsigned NOT NULL,
  `beneficiary_profile_spending_type_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table beneficiary_profile_asset
# ------------------------------------------------------------

DROP TABLE IF EXISTS `beneficiary_profile_asset`;

CREATE TABLE `beneficiary_profile_asset` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `asset_type_id` int(11) unsigned NOT NULL COMMENT 'Required, DropDownList',
  `asset_id` int(11) unsigned NOT NULL COMMENT 'Required, DropDownList',
  `asset_condition_id` int(11) unsigned NOT NULL COMMENT 'Required, DropDownList',
  `beneficiary_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`),
  KEY `beneficiary_profile_asset_beneficiary_id` (`beneficiary_id`),
  KEY `beneficiary_profile_asset_owner_organization_user_id` (`owner_organization_user_id`),
  CONSTRAINT `beneficiary_profile_asset_ibfk_1` FOREIGN KEY (`beneficiary_id`) REFERENCES `beneficiary` (`id`),
  CONSTRAINT `beneficiary_profile_asset_ibfk_2` FOREIGN KEY (`owner_organization_user_id`) REFERENCES `organization_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table beneficiary_profile_asset_received
# ------------------------------------------------------------

DROP TABLE IF EXISTS `beneficiary_profile_asset_received`;

CREATE TABLE `beneficiary_profile_asset_received` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(11) unsigned NOT NULL COMMENT 'Required, Drop Down',
  `asset_type_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `asset_unit_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `asset_quantity` float unsigned NOT NULL COMMENT 'Optional, Text Field, Min:0.1',
  `asset_condition_id` int(11) unsigned NOT NULL COMMENT 'Required, DropDownList',
  `asset_value` float unsigned NOT NULL COMMENT 'Optional, Text Field, Min:0.1',
  `status` enum('Waiting', 'Out For Delivery', 'Received') DEFAULT 'Waiting',
  `donor_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `beneficiary_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`),
  KEY `beneficiary_profile_asset_received_beneficiary_id` (`beneficiary_id`),
  KEY `beneficiary_profile_asset_received_owner_organization_user_id` (`owner_organization_user_id`),
  CONSTRAINT `beneficiary_profile_asset_received_ibfk_1` FOREIGN KEY (`beneficiary_id`) REFERENCES `beneficiary` (`id`),
  CONSTRAINT `beneficiary_profile_asset_received_ibfk_2` FOREIGN KEY (`owner_organization_user_id`) REFERENCES `organization_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table beneficiary_profile_asset_required
# ------------------------------------------------------------

DROP TABLE IF EXISTS `beneficiary_profile_asset_required`;

CREATE TABLE `beneficiary_profile_asset_required` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(11) unsigned NOT NULL COMMENT 'Required, Drop Down',
  `asset_type_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `asset_unit_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `asset_condition_id` int(11) unsigned NOT NULL COMMENT 'Required, DropDownList',
  `asset_quantity` float unsigned NOT NULL COMMENT 'Optional, Text Field, Min:0.1',
  `status` enum('Waiting', 'Approved', 'Rejected', 'Out of Stock', 'Received') DEFAULT 'Waiting',
  `beneficiary_profile_asset_received_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `beneficiary_profile_asset_received_date` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `beneficiary_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`),
  KEY `beneficiary_profile_asset_required_beneficiary_id` (`beneficiary_id`),
  KEY `beneficiary_profile_asset_required_owner_organization_user_id` (`owner_organization_user_id`),
  CONSTRAINT `beneficiary_profile_asset_required_ibfk_1` FOREIGN KEY (`beneficiary_id`) REFERENCES `beneficiary` (`id`),
  CONSTRAINT `beneficiary_profile_asset_required_ibfk_2` FOREIGN KEY (`owner_organization_user_id`) REFERENCES `organization_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table beneficiary_profile_home
# ------------------------------------------------------------

DROP TABLE IF EXISTS `beneficiary_profile_home`;

CREATE TABLE `beneficiary_profile_home` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `owner_phone_number` varchar(17) NOT NULL DEFAULT '' COMMENT 'Required, Text Field, Min:8, Max: 50',
  `beneficiary_profile_home_construction_type_id` int(11) unsigned NOT NULL COMMENT 'Required, DropDownList',
  `beneficiary_profile_home_contract_type_id` int(11) unsigned NOT NULL COMMENT 'Required, DropDownList',
  `construction_area_in_square_meter` float unsigned NOT NULL COMMENT 'Required, Text Field, Min: 4, Max:1024',
  `number_of_floors` tinyint(3) unsigned NOT NULL COMMENT 'Required: Text Field, Min:0, Max:255',
  `number_of_rooms` tinyint(3) unsigned NOT NULL COMMENT 'Required: Text Field, Min:0, Max:255',
  `number_of_residents` tinyint(3) unsigned NOT NULL COMMENT 'Required: Text Field, Min:0, Max:255',
  `beneficiary_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`),
  KEY `beneficiary_profile_home_beneficiary_id` (`beneficiary_id`),
  KEY `beneficiary_profile_home_owner_organization_user_id` (`owner_organization_user_id`),
  CONSTRAINT `beneficiary_profile_home_ibfk_1` FOREIGN KEY (`beneficiary_id`) REFERENCES `beneficiary` (`id`),
  CONSTRAINT `beneficiary_profile_home_ibfk_2` FOREIGN KEY (`owner_organization_user_id`) REFERENCES `organization_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table beneficiary_profile_home_locale
# ------------------------------------------------------------

DROP TABLE IF EXISTS `beneficiary_profile_home_locale`;

CREATE TABLE `beneficiary_profile_home_locale` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `description` mediumtext NOT NULL DEFAULT '' COMMENT 'Optional, Text Field, Min:0, Max: 2048',
  `owner_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Required, Text Field, Min:8, Max: 50',
  `locale_id` int(11) unsigned NOT NULL,
  `beneficiary_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `beneficiary_profile_home_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table beneficiary_profile_home_construction_type
# - Tent
# - Wood
# - Rock
# - Zinko
# - Roof
# - Old Basement
# ------------------------------------------------------------

DROP TABLE IF EXISTS `beneficiary_profile_home_construction_type`;

CREATE TABLE `beneficiary_profile_home_construction_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `published` enum('Yes', 'No') COLLATE utf8_bin NOT NULL DEFAULT 'Yes' COMMENT 'Required, DropDownList',
  `country_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table beneficiary_profile_home_construction_type_locale
# ------------------------------------------------------------

DROP TABLE IF EXISTS `beneficiary_profile_home_construction_type_locale`;

CREATE TABLE `beneficiary_profile_home_construction_type_locale` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT 'Required, Text Field, Min:3, Max:100',
  `description` mediumtext NOT NULL DEFAULT '' COMMENT 'Optional, Text Field, Min:0, Max: 2048',
  `locale_id` int(11) unsigned NOT NULL,
  `beneficiary_profile_home_construction_type_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table beneficiary_profile_home_contract_type
# - Rental
# - Owned
# - Donation / Free
# - Shared Rental
# ------------------------------------------------------------

DROP TABLE IF EXISTS `beneficiary_profile_home_contract_type`;

CREATE TABLE `beneficiary_profile_home_contract_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `published` enum('Yes', 'No') COLLATE utf8_bin NOT NULL DEFAULT 'Yes' COMMENT 'Required, DropDownList',
  `country_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table beneficiary_profile_home_contract_type_locale
# ------------------------------------------------------------

DROP TABLE IF EXISTS `beneficiary_profile_home_contract_type_locale`;

CREATE TABLE `beneficiary_profile_home_contract_type_locale` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT 'Required, Text Field, Min:3, Max:100',
  `description` mediumtext NOT NULL DEFAULT '' COMMENT 'Optional, Text Field, Min:0, Max: 2048',
  `locale_id` int(11) unsigned NOT NULL,
  `beneficiary_profile_home_contract_type_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table beneficiary_relation
# ------------------------------------------------------------

DROP TABLE IF EXISTS `beneficiary_relation`;

CREATE TABLE `beneficiary_relation` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `allow_recurrence` enum('Yes', 'No') NOT NULL DEFAULT 'Yes' COMMENT 'Optional, DropDownList. For example, the father should not be allowed to be repeated for the same beneficiary',
  `published` enum('Yes', 'No') COLLATE utf8_bin NOT NULL DEFAULT 'Yes' COMMENT 'Required, DropDownList',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`),
  KEY `beneficiary_relation_owner_organization_user_id` (`owner_organization_user_id`),
  CONSTRAINT `beneficiary_relation_ibfk_1` FOREIGN KEY (`owner_organization_user_id`) REFERENCES `organization_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table beneficiary_relation_locale
# ------------------------------------------------------------

DROP TABLE IF EXISTS `beneficiary_relation_locale`;

CREATE TABLE `beneficiary_relation_locale` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT 'Required, Text Field, Min:3, Max:100',
  `locale_id` int(11) unsigned NOT NULL,
  `beneficiary_relation_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table beneficiary_profile_research_notes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `beneficiary_profile_research_notes`;

CREATE TABLE `beneficiary_profile_research_notes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `support_type` enum('Frequent', 'Emergency', 'Medical', 'Educational', 'Other') NOT NULL DEFAULT 'Frequent' COMMENT 'Required, DropDownList',
  `support_period` enum('Permanent', 'Once', 'Until healing', 'Until graduate') NOT NULL DEFAULT 'Permanent' COMMENT 'Required, DropDownList',
  `expected_support_period` enum('Permanent', 'Once', 'Until healing', 'Until graduate') NOT NULL DEFAULT 'Permanent' COMMENT 'Required, DropDownList',
  `support_modality` enum('Money', 'In-kind', 'Money and in-kind', 'Volunteer', 'By hand', 'Educate a family member', 'Employ a family member', 'Other') NOT NULL DEFAULT 'Money' COMMENT 'Required, DropDownList',
  `information_source` enum('Official documents', 'Work visit', 'Home visit', 'Trusted neighbors') NOT NULL DEFAULT 'Official documents' COMMENT 'Required, DropDownList',
  `has_small_business_idea` enum('Yes', 'No') NOT NULL DEFAULT 'No' COMMENT 'Optional, DropDownList',
  `beneficiary_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`),
  KEY `beneficiary_profile_research_notes_beneficiary_id` (`beneficiary_id`),
  KEY `beneficiary_profile_research_notes_owner_organization_user_id` (`owner_organization_user_id`),
  CONSTRAINT `beneficiary_profile_research_notes_ibfk_1` FOREIGN KEY (`beneficiary_id`) REFERENCES `beneficiary` (`id`),
  CONSTRAINT `beneficiary_profile_research_notes_ibfk_2` FOREIGN KEY (`owner_organization_user_id`) REFERENCES `organization_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table beneficiary_profile_research_notes_locale
# ------------------------------------------------------------

DROP TABLE IF EXISTS `beneficiary_profile_research_notes_locale`;

CREATE TABLE `beneficiary_profile_research_notes_locale` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `small_business_idea_description` varchar(255) NOT NULL DEFAULT '' COMMENT 'Optional, Text Field, Min:3, Max: 100',
  `researcher_recommendations` varchar(512) NOT NULL DEFAULT '' COMMENT 'Required, Textarea, Min:10, Max: 250',
  `researcher_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Required, Text Field, Min:8, Max: 50',
  `notes` varchar(512) NOT NULL DEFAULT '' COMMENT 'Optional, Textarea, Min:10, Max: 250',
  `committee_recommendations` varchar(512) NOT NULL DEFAULT '' COMMENT 'Optional, Textarea, Min:10, Max: 250',
  `committee_member_name` varchar(512) NOT NULL DEFAULT '' COMMENT 'Optional, Text Field, Min:8, Max: 50',
  `committee_manager_name` varchar(512) NOT NULL DEFAULT '' COMMENT 'Optional, Text Field, Min:8, Max: 50',
  `beneficiary_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `beneficiary_profile_research_notes_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`),
  KEY `beneficiary_locale_beneficiary_id` (`beneficiary_id`),
  KEY `beneficiary_locale_owner_organization_user_id` (`owner_organization_user_id`),
  CONSTRAINT `beneficiary_locale_ibfk_1` FOREIGN KEY (`beneficiary_id`) REFERENCES `beneficiary` (`id`),
  CONSTRAINT `beneficiary_locale_ibfk_2` FOREIGN KEY (`owner_organization_user_id`) REFERENCES `organization_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table beneficiary_profile_education_level
# ------------------------------------------------------------

DROP TABLE IF EXISTS `beneficiary_profile_education_level`;

CREATE TABLE `beneficiary_profile_education_level` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `school_type` enum('Pre KG', 'KG', 'Elementary School', 'Intermediate School', 'High School', 'Industrial Education', 'Diploma', 'University', 'Academy') NOT NULL DEFAULT 'Diploma' COMMENT 'Required, DropDownList',
  `start_at` date NOT NULL COMMENT 'Optional, Calender',
  `end_at` date NOT NULL COMMENT 'Optional, Calender',
  `beneficiary_profile_family_id` int(11) unsigned NOT NULL COMMENT 'Required',
  `beneficiary_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`),
  KEY `beneficiary_profile_education_level_beneficiary_id` (`beneficiary_id`),
  KEY `beneficiary_profile_education_level_owner_organization_user_id` (`owner_organization_user_id`),
  CONSTRAINT `beneficiary_profile_education_level_ibfk_1` FOREIGN KEY (`beneficiary_id`) REFERENCES `beneficiary` (`id`),
  CONSTRAINT `beneficiary_profile_education_level_ibfk_2` FOREIGN KEY (`owner_organization_user_id`) REFERENCES `organization_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table beneficiary_profile_education_level_locale
# ------------------------------------------------------------

DROP TABLE IF EXISTS `beneficiary_profile_education_level_locale`;

CREATE TABLE `beneficiary_profile_education_level_locale` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `school_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Required, Text Field, Min:3, Max: 50',
  `level` varchar(255) NOT NULL DEFAULT '' COMMENT 'Required, Text Field, Min:3, Max: 50',
  `major_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Optional, Text Field, Min:3, Max: 50',
  `class_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Optional, Text Field, Min:3, Max: 50',
  `address` varchar(255) NOT NULL DEFAULT '' COMMENT 'Optional, Textarea, Min:3, Max: 50',
  `beneficiary_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `beneficiary_profile_education_level_id` int(11) unsigned NOT NULL COMMENT 'Required',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`),
  KEY `beneficiary_education_level_locale_beneficiary_id` (`beneficiary_id`),
  KEY `beneficiary_education_level_locale_owner_organization_user_id` (`owner_organization_user_id`),
  CONSTRAINT `beneficiary_education_level_locale_ibfk_1` FOREIGN KEY (`beneficiary_id`) REFERENCES `beneficiary` (`id`),
  CONSTRAINT `beneficiary_education_level_locale_ibfk_2` FOREIGN KEY (`owner_organization_user_id`) REFERENCES `organization_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table beneficiary_profile_teacher
# ------------------------------------------------------------

DROP TABLE IF EXISTS `beneficiary_profile_teacher`;

CREATE TABLE `beneficiary_profile_teacher` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `school_type` enum('High School', 'Diploma', 'University') NOT NULL DEFAULT 'University' COMMENT 'Required, DropDownList',
  `beneficiary_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`),
  KEY `beneficiary_profile_teacher_beneficiary_id` (`beneficiary_id`),
  KEY `beneficiary_profile_teacher_owner_organization_user_id` (`owner_organization_user_id`),
  CONSTRAINT `beneficiary_profile_teacher_ibfk_1` FOREIGN KEY (`beneficiary_id`) REFERENCES `beneficiary` (`id`),
  CONSTRAINT `beneficiary_profile_teacher_ibfk_2` FOREIGN KEY (`owner_organization_user_id`) REFERENCES `organization_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table beneficiary_profile_teacher_locale
# ------------------------------------------------------------

DROP TABLE IF EXISTS `beneficiary_profile_teacher_locale`;

CREATE TABLE `beneficiary_profile_teacher_locale` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `school_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Required, Text Field, Min:3, Max: 50',
  `level` varchar(255) NOT NULL DEFAULT '' COMMENT 'Required, Text Field, Min:3, Max: 50',
  `major_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Optional, Text Field, Min:3, Max: 50',
  `address` varchar(255) NOT NULL DEFAULT '' COMMENT 'Optional, Textarea, Min:3, Max: 50',
  `locale_id` int(11) unsigned NOT NULL,
  `beneficiary_id` int(11) unsigned NOT NULL COMMENT 'From Session',
  `beneficiary_profile_teacher_id` int(11) unsigned NOT NULL COMMENT 'From Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table beneficiary_profile_medical
# ------------------------------------------------------------

DROP TABLE IF EXISTS `beneficiary_profile_medical`;

CREATE TABLE `beneficiary_profile_medical` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `beneficiary_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`),
  KEY `beneficiary_profile_medical_beneficiary_id` (`beneficiary_id`),
  KEY `beneficiary_profile_medical_owner_organization_user_id` (`owner_organization_user_id`),
  CONSTRAINT `beneficiary_profile_medical_ibfk_1` FOREIGN KEY (`beneficiary_id`) REFERENCES `beneficiary` (`id`),
  CONSTRAINT `beneficiary_profile_medical_ibfk_2` FOREIGN KEY (`owner_organization_user_id`) REFERENCES `organization_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table beneficiary_profile_medical_locale
# ------------------------------------------------------------

DROP TABLE IF EXISTS `beneficiary_profile_medical_locale`;

CREATE TABLE `beneficiary_profile_medical_locale` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `medical_history` mediumtext NOT NULL DEFAULT '' COMMENT 'Optional, Text Field, Min:3, Max: 50',
  `surgical_history` mediumtext NOT NULL DEFAULT '' COMMENT 'Optional, Text Field, Min:3, Max: 50',
  `family_history` mediumtext NOT NULL DEFAULT '' COMMENT 'Optional, Text Field, Min:3, Max: 50',
  `treatment_history` mediumtext NOT NULL DEFAULT '' COMMENT 'Optional, Text Field, Min:3, Max: 50',
  `lab_results_history` mediumtext NOT NULL DEFAULT '' COMMENT 'Optional, Text Field, Min:3, Max: 50',
  `prescription_history` mediumtext NOT NULL DEFAULT '' COMMENT 'Optional, Text Field, Min:3, Max: 50',
  `locale_id` int(11) unsigned NOT NULL,
  `beneficiary_id` int(11) unsigned NOT NULL COMMENT 'From Session',
  `beneficiary_profile_medical_id` int(11) unsigned NOT NULL COMMENT 'From Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table beneficiary_profile_medical_examination
# ------------------------------------------------------------

DROP TABLE IF EXISTS `beneficiary_profile_medical_examination`;

CREATE TABLE `beneficiary_profile_medical_examination` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `doctor_mobile_number` varchar(17) NOT NULL DEFAULT '' COMMENT 'Optional, Textarea, Min:3, Max: 50',
  `doctor_phone_number` varchar(17) NOT NULL DEFAULT '' COMMENT 'Optional, Textarea, Min:3, Max: 50',
  `beneficiary_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`),
  KEY `beneficiary_medical_examination_beneficiary_id` (`beneficiary_id`),
  KEY `beneficiary_medical_examination_owner_organization_user_id` (`owner_organization_user_id`),
  CONSTRAINT `beneficiary_medical_examination_ibfk_1` FOREIGN KEY (`beneficiary_id`) REFERENCES `beneficiary` (`id`),
  CONSTRAINT `beneficiary_medical_examination_ibfk_2` FOREIGN KEY (`owner_organization_user_id`) REFERENCES `organization_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table beneficiary_profile_medical_examination_locale
# ------------------------------------------------------------

DROP TABLE IF EXISTS `beneficiary_profile_medical_examination_locale`;

CREATE TABLE `beneficiary_profile_medical_examination_locale` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `doctor_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Required, Text Field, Min:3, Max: 50',
  `doctor_address` varchar(1024) NOT NULL DEFAULT '' COMMENT 'Optional, Textarea, Min:3, Max: 50',
  `complaint` mediumtext NOT NULL DEFAULT '' COMMENT 'Required, Text Field, Min:3, Max: 50',
  `examination` mediumtext NOT NULL DEFAULT '' COMMENT 'Optional, Text Field, Min:3, Max: 50',
  `treatment` mediumtext NOT NULL DEFAULT '' COMMENT 'Optional, Text Field, Min:3, Max: 50',
  `lab_results` mediumtext NOT NULL DEFAULT '' COMMENT 'Optional, Text Field, Min:3, Max: 50',
  `prescription` mediumtext NOT NULL DEFAULT '' COMMENT 'Optional, Text Field, Min:3, Max: 50',
  `procedure` mediumtext NOT NULL DEFAULT '' COMMENT 'Optional, Text Field, Min:3, Max: 50',
  `comment` mediumtext NOT NULL DEFAULT '' COMMENT 'Optional, Text Field, Min:3, Max: 50',
  `locale_id` int(11) unsigned NOT NULL,
  `beneficiary_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `beneficiary_profile_medical_examination_id` int(11) unsigned NOT NULL COMMENT 'From Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table beneficiary_media_gallery
# ------------------------------------------------------------

DROP TABLE IF EXISTS `beneficiary_media_gallery`;

CREATE TABLE `beneficiary_media_gallery` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `size` int(11) unsigned NOT NULL,
  `mime_type` varchar(32) NOT NULL,
  `path` varchar(1024) NOT NULL DEFAULT '',
  `media_type_id` tinyint(3) unsigned DEFAULT '0' COMMENT 'Required: Text Field, Min:0, Max:255',
  `media_filetype_id` tinyint(3) unsigned DEFAULT '0' COMMENT 'Required: Text Field, Min:0, Max:255',
  `published` enum('Yes', 'No') NOT NULL DEFAULT 'No',
  `media_status_id` tinyint(3) unsigned DEFAULT '0' COMMENT 'Required: Text Field, Min:0, Max:255',
  `sequence` int(11) unsigned NOT NULL DEFAULT '0',
  `beneficiary_id` int(11) unsigned NOT NULL COMMENT 'FROM Session'
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table beneficiary_media_gallery_locale
# ------------------------------------------------------------

DROP TABLE IF EXISTS `beneficiary_media_gallery_locale`;

CREATE TABLE `beneficiary_media_gallery_locale` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `intro_text` mediumtext NOT NULL DEFAULT '',
  `locale_id` int(11) unsigned NOT NULL,
  `beneficiary_media_gallery_id` int(11) unsigned NOT NULL COMMENT 'From Session',
  `beneficiary_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table beneficiary_media_youtube_gallery
# ------------------------------------------------------------

DROP TABLE IF EXISTS `beneficiary_media_youtube_gallery`;

CREATE TABLE `beneficiary_media_youtube_gallery` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `youtube_link` varchar(255) NOT NULL,
  `published` enum('Yes', 'No') NOT NULL DEFAULT 'No',
  `media_status_id` tinyint(3) unsigned DEFAULT '0' COMMENT 'Required: Text Field, Min:0, Max:255',
  `sequence` int(11) unsigned NOT NULL DEFAULT '0',
  `beneficiary_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table beneficiary_media_youtube_gallery_locale
# ------------------------------------------------------------

DROP TABLE IF EXISTS `beneficiary_media_youtube_gallery_locale`;

CREATE TABLE `beneficiary_media_youtube_gallery_locale` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `intro_text` mediumtext NOT NULL DEFAULT '',
  `locale_id` int(11) unsigned NOT NULL,
  `beneficiary_media_youtube_gallery_id` int(11) unsigned NOT NULL COMMENT 'From Session',
  `beneficiary_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# ////////////////////////////////////////////////////////////
# 
# Organization Tables
# 
# \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

# Dump of table organization
# ------------------------------------------------------------

DROP TABLE IF EXISTS `organization`;

CREATE TABLE `organization` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `organization_type_id` int(11) unsigned NOT NULL COMMENT 'Required, DropDownList',
  `status` enum('Draft', 'Approved', 'In Review', 'Duplicate', 'Deleted') NOT NULL DEFAULT 'Draft' COMMENT 'Required, DropDownList',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `notes` varchar(1024) NOT NULL DEFAULT '' COMMENT 'Optional, Textarea, Min:10, Max:500',
  `options` varchar(1024) NOT NULL DEFAULT '' COMMENT 'Optional, Any other-future info will be saved serialize array key=>value',
  PRIMARY KEY (`id`),
  KEY `organization_type_id` (`organization_type_id`),
  CONSTRAINT `organization_ibfk_1` FOREIGN KEY (`organization_type_id`) REFERENCES `organization_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table organization_locale
# ------------------------------------------------------------

DROP TABLE IF EXISTS `organization_locale`;

CREATE TABLE `organization_locale` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT 'Required, Text Field, Min:3, Max:100',
  `description` mediumtext NOT NULL DEFAULT '' COMMENT 'Optional, Text Field, Min:0, Max: 2048',
  `logo` varchar(1024) NOT NULL DEFAULT '',
  `locale_id` int(11) unsigned NOT NULL,
  `organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table organization_has_flag
# ------------------------------------------------------------

DROP TABLE IF EXISTS `organization_has_flag`;

CREATE TABLE `organization_has_flag` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `organization_flag_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `flag_value` enum('Yes', 'No') NOT NULL DEFAULT 'Yes' COMMENT 'Required, DropDownList',
  `organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`),
  KEY `organization_has_flag_organization_id` (`organization_id`),
  KEY `organization_has_flag_owner_organization_user_id` (`owner_organization_user_id`),
  CONSTRAINT `organization_has_flag_ibfk_2` FOREIGN KEY (`organization_id`) REFERENCES `organization` (`id`),
  CONSTRAINT `organization_has_flag_ibfk_3` FOREIGN KEY (`owner_organization_user_id`) REFERENCES `organization_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table organization_flag
# - Is Zakat Charity
# - Is Masjed Charity
# - Is Local Charity
# - Is Islamic Charity
# - Is Christean Charity
# - Is Military Charity
# - Is Naqaba Charity
# - Is Society Charity
# - etc...
# ------------------------------------------------------------

DROP TABLE IF EXISTS `organization_flag`;

CREATE TABLE `organization_flag` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `published` enum('Yes', 'No') COLLATE utf8_bin NOT NULL DEFAULT 'Yes' COMMENT 'Required, DropDownList',
  `country_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`),
  KEY `organization_flag_owner_organization_id` (`owner_organization_id`),
  KEY `organization_flag_owner_organization_user_id` (`owner_organization_user_id`),
  CONSTRAINT `organization_flag_ibfk_2` FOREIGN KEY (`owner_organization_id`) REFERENCES `organization` (`id`),
  CONSTRAINT `organization_flag_ibfk_3` FOREIGN KEY (`owner_organization_user_id`) REFERENCES `organization_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table organization_flag_locale
# ------------------------------------------------------------

DROP TABLE IF EXISTS `organization_flag_locale`;

CREATE TABLE `organization_flag_locale` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `flag_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Required, Text Field, Min:3, Max: 50',
  `locale_id` int(11) unsigned NOT NULL,
  `organization_flag_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table organization_branch
# ------------------------------------------------------------

DROP TABLE IF EXISTS `organization_branch`;

CREATE TABLE `organization_branch` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `mobile_number` varchar(17) NOT NULL DEFAULT '' COMMENT 'Required, Text Field, Min:12, Max: 14',
  `mobile_number_2` varchar(17) NOT NULL DEFAULT '' COMMENT 'Optional, Text Field, Min:12, Max: 14',
  `phone_number` varchar(17) NOT NULL DEFAULT '' COMMENT 'Required, Text Field, Min:12, Max: 14',
  `fax` varchar(17) NOT NULL DEFAULT '' COMMENT 'Optional, Text Field, Min:12, Max: 14',
  `country_id` int(11) unsigned NOT NULL COMMENT 'Required, DropDownList',
  `city_id` int(11) unsigned NOT NULL COMMENT 'Required, DropDownList',
  `manager_id` int(11) unsigned NOT NULL COMMENT 'Required, DropDownList',
  `work_days` varchar(255) NOT NULL DEFAULT '' COMMENT 'Required, DropDownList',
  `work_hours` varchar(255) NOT NULL DEFAULT '' COMMENT 'Required',
  `break_hours` varchar(255) NOT NULL DEFAULT '' COMMENT 'Optional',
  `geo_location` varchar(1024) NOT NULL DEFAULT '' COMMENT 'Optional',
  `is_main_branch` enum('Yes', 'No') NOT NULL DEFAULT 'No' COMMENT 'Required, DropDownList',
  `published` enum('Yes', 'No') COLLATE utf8_bin NOT NULL DEFAULT 'Yes' COMMENT 'Required, DropDownList',
  `organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`),
  KEY `organization_branch_organization_id` (`organization_id`),
  KEY `organization_branch_country_id` (`country_id`),
  KEY `organization_branch_city_id` (`city_id`),
  KEY `organization_branch_manager_id` (`manager_id`),
  KEY `organization_branch_owner_organization_user_id` (`owner_organization_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table organization_branch_locale
# ------------------------------------------------------------

DROP TABLE IF EXISTS `organization_branch_locale`;

CREATE TABLE `organization_branch_locale` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Required, Text Field, Min:3, Max: 50',
  `description` mediumtext NOT NULL DEFAULT '' COMMENT 'Optional, Text Field, Min:0, Max: 2048',
  `address` varchar(255) NOT NULL DEFAULT '' COMMENT 'Required, Textarea, Min:3, Max: 50',
  `website` varchar(255) NOT NULL DEFAULT '' COMMENT 'Optional, Text Field, Min:5, Max:255',
  `locale_id` int(11) unsigned NOT NULL,
  `organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `organization_branch_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table organization_branch_committee
# ------------------------------------------------------------

DROP TABLE IF EXISTS `organization_branch_committee`;

CREATE TABLE `organization_branch_committee` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `published` enum('Yes', 'No') COLLATE utf8_bin NOT NULL DEFAULT 'Yes' COMMENT 'Required, DropDownList',
  `organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `organization_branch_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`),
  KEY `organization_branch_committee_organization_user_id` (`organization_user_id`),
  KEY `organization_branch_committee_organization_branch_id` (`organization_branch_id`),
  KEY `organization_branch_committee_organization_id` (`organization_id`),
  CONSTRAINT `organization_branch_committee_ibfk_1` FOREIGN KEY (`organization_branch_id`) REFERENCES `organization_branch` (`id`),
  CONSTRAINT `organization_branch_committee_ibfk_2` FOREIGN KEY (`organization_id`) REFERENCES `organization` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table organization_branch_committee_locale
# ------------------------------------------------------------

DROP TABLE IF EXISTS `organization_branch_committee_locale`;

CREATE TABLE `organization_branch_committee_locale` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Required, Text Field, Min:3, Max: 100',
  `description` mediumtext NOT NULL DEFAULT '' COMMENT 'Optional, Text Field, Min:0, Max: 2048',
  `agenda` varchar(1024) NOT NULL DEFAULT '' COMMENT 'Optional, Textarea, Min:10, Max: 500',
  `annual_plan` varchar(1024) NOT NULL DEFAULT '' COMMENT 'Optional, Textarea, Min:10, Max: 500',
  `locale_id` int(11) unsigned NOT NULL,
  `organization_branch_committee_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table organization_branch_committee_user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `organization_branch_committee_user`;

CREATE TABLE `organization_branch_committee_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `organization_user_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `organization_user_position_id` int(11) unsigned NOT NULL COMMENT 'Required, DropDownList',
  `organization_branch_id` int(11) unsigned NOT NULL COMMENT 'Required, DropDownList',
  `organization_branch_committee_id` int(11) unsigned NOT NULL COMMENT 'Required, DropDownList',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`),
  KEY `organization_branch_committee_position_id` (`organization_user_position_id`),
  KEY `organization_branch_committee_user_id` (`organization_user_id`),
  KEY `organization_branch_committee_branch_committee_id` (`organization_branch_committee_id`),
  CONSTRAINT `organization_branch_committee_user_ibfk_1` FOREIGN KEY (`organization_branch_committee_id`) REFERENCES `organization_branch_committee` (`id`),
  CONSTRAINT `organization_branch_committee_user_ibfk_2` FOREIGN KEY (`organization_user_position_id`) REFERENCES `organization_user_position` (`id`),
  CONSTRAINT `organization_branch_committee_user_ibfk_3` FOREIGN KEY (`organization_user_id`) REFERENCES `organization_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table organization_user_position
# ------------------------------------------------------------

DROP TABLE IF EXISTS `organization_user_position`;

CREATE TABLE `organization_user_position` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`),
  KEY `organization_user_position_organization_id` (`organization_id`),
  CONSTRAINT `organization_user_position_ibfk_1` FOREIGN KEY (`organization_id`) REFERENCES `organization` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table organization_user_position_locale
# ------------------------------------------------------------

DROP TABLE IF EXISTS `organization_user_position_locale`;

CREATE TABLE `organization_user_position_locale` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT 'Required, Text Field, Min:3, Max: 100',
  `description` mediumtext NOT NULL DEFAULT '' COMMENT 'Optional, Text Field, Min:0, Max: 2048',
  `qualifications` varchar(255) NOT NULL DEFAULT '' COMMENT 'Optional, Textarea, Min:3, Max: 100',
  `responsibilities` varchar(255) NOT NULL DEFAULT '' COMMENT 'Required, Textarea, Min:3, Max: 100',
  `locale_id` int(11) unsigned NOT NULL,
  `organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `organization_user_position_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table organization_type
# ------------------------------------------------------------

DROP TABLE IF EXISTS `organization_type`;

CREATE TABLE `organization_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `published` enum('Yes', 'No') COLLATE utf8_bin NOT NULL DEFAULT 'Yes' COMMENT 'Required, DropDownList',
  `country_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table organization_type_locale
# ------------------------------------------------------------

DROP TABLE IF EXISTS `organization_type_locale`;

CREATE TABLE `organization_type_locale` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT 'Required, Text Field, Min:3, Max:100',
  `description` mediumtext NOT NULL DEFAULT '' COMMENT 'Optional, Text Field, Min:0, Max: 2048',
  `locale_id` int(11) unsigned NOT NULL,
  `organization_user_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `organization_type_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table organization_user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `organization_user`;

CREATE TABLE `organization_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ssn` varchar(32) NOT NULL DEFAULT '' COMMENT 'Required, Text Field, Min:9, Max: 12',
  `title` enum('Mr.', 'Mrs.', 'Miss', 'Ms.') NOT NULL DEFAULT 'Mr.' COMMENT 'Required, DropDownList',
  `gender` enum('Male', 'Female') NOT NULL DEFAULT 'Male' COMMENT 'Required, DropDownList',
  `email` varchar(255) NOT NULL DEFAULT '' COMMENT 'Required, Text Field, Min:3, Max:254',
  `date_of_birth` date NOT NULL COMMENT 'Required, Calender',
  `mobile_number` varchar(17) NOT NULL DEFAULT '' COMMENT 'Required, Text Field, Min:12, Max: 14',
  `mobile_number_2` varchar(17) NOT NULL DEFAULT '' COMMENT 'Optional, Text Field, Min:12, Max: 14',
  `phone_number` varchar(17) NOT NULL DEFAULT '' COMMENT 'Optional, Text Field, Min:12, Max: 14',
  `nationality_id` int(11) unsigned NOT NULL COMMENT 'Required, DropDownList',
  `avatar` varchar(1024) NOT NULL DEFAULT '',
  `organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `organization_branch_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`),
  UNIQUE KEY `organization_user_ssn` (`ssn`),
  KEY `organization_user_nationality_id` (`nationality_id`),
  KEY `organization_user_organization_id` (`organization_id`),
  KEY `organization_user_organization_branch_id` (`organization_branch_id`),
  CONSTRAINT `organization_user_ibfk_1` FOREIGN KEY (`organization_id`) REFERENCES `organization` (`id`),
  CONSTRAINT `organization_user_ibfk_2` FOREIGN KEY (`organization_branch_id`) REFERENCES `organization_branch` (`id`),
  CONSTRAINT `organization_user_ibfk_3` FOREIGN KEY (`nationality_id`) REFERENCES `country` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table organization_user_locale
# ------------------------------------------------------------

DROP TABLE IF EXISTS `organization_user_locale`;

CREATE TABLE `organization_user_locale` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Required, Text Field, Min:3, Max: 50',
  `second_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Required, Text Field, Min:3, Max: 50',
  `third_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Required, Text Field, Min:3, Max: 50',
  `last_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Required, Text Field, Min:3, Max: 50',
  `address` varchar(255) NOT NULL DEFAULT '' COMMENT 'Required, Textarea, Min:3, Max: 50',
  `locale_id` int(11) unsigned NOT NULL,
  `organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `organization_user_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table organization_asset
# ------------------------------------------------------------

DROP TABLE IF EXISTS `organization_asset`;

CREATE TABLE `organization_asset` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(11) unsigned NOT NULL COMMENT 'Required, Drop Down',
  `asset_type_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `asset_unit_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `cost` float unsigned NOT NULL COMMENT 'Optional, Text Field, Min:0.1',
  `tax_value` float unsigned NOT NULL COMMENT 'Optional, Text Field, Min:0.1',
  `tax_type` enum('Fixed', 'Percent', 'None') NOT NULL DEFAULT 'None' COMMENT 'Required, DropDownList',
  `currency` varchar(3) COLLATE utf8_bin NOT NULL DEFAULT 'USD',
  `currency_exchange_rate_id` int(11) unsigned NOT NULL COMMENT 'Required, DropDownList',
  `organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `organization_branch_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `status` enum('Active', 'Inactive') DEFAULT 'Active',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`),
  KEY `organization_asset_organization_user_id` (`owner_organization_user_id`),
  CONSTRAINT `organization_asset_ibfk_1` FOREIGN KEY (`owner_organization_user_id`) REFERENCES `organization_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table organization_asset_liability
# ------------------------------------------------------------

DROP TABLE IF EXISTS `organization_asset_liability`;

CREATE TABLE `organization_asset_liability` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `organization_asset_id` int(11) unsigned NOT NULL COMMENT 'Required, Drop Down',
  `asset_type_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `asset_unit_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `quantity` float unsigned NOT NULL COMMENT 'Optional, Text Field, Min:0.1',
  `quantity_original` float unsigned NOT NULL COMMENT 'Optional, Text Field, Min:0.1',
  `cost` float unsigned NOT NULL COMMENT 'Optional, Text Field, Min:0.1',
  `total_value` float unsigned NOT NULL COMMENT 'Optional, Text Field, Min:0.1',
  `tax_value` float unsigned NOT NULL COMMENT 'Optional, Text Field, Min:0.1',
  `tax_type` enum('Fixed', 'Percent', 'None') NOT NULL DEFAULT 'None' COMMENT 'Required, DropDownList',
  `currency` varchar(3) COLLATE utf8_bin NOT NULL DEFAULT 'USD',
  `currency_exchange_rate_id` int(11) unsigned NOT NULL COMMENT 'Required, DropDownList',
  `date_expire` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `sku` varchar(255) DEFAULT NULL COMMENT 'FROM Session',
  `serial` varchar(255) DEFAULT NULL COMMENT 'FROM Session',
  `asset_condition_id` int(11) unsigned NOT NULL COMMENT 'Required, DropDownList',
  `organization_asset_location_id` int(11) unsigned NOT NULL COMMENT 'Required, DropDownList',
  `donor_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `organization_branch_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`),
  KEY `organization_asset_liability_organization_user_id` (`owner_organization_user_id`),
  CONSTRAINT `organization_asset_liability_ibfk_1` FOREIGN KEY (`owner_organization_user_id`) REFERENCES `organization_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table organization_asset_location
# ------------------------------------------------------------

DROP TABLE IF EXISTS `organization_asset_location`;

CREATE TABLE `organization_asset_location` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `geo_location` varchar(1024) NOT NULL DEFAULT '' COMMENT 'Optional',
  `published` enum('Yes', 'No') COLLATE utf8_bin NOT NULL DEFAULT 'Yes' COMMENT 'Required, DropDownList',
  `organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `organization_branch_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table organization_asset_location_locale
# ------------------------------------------------------------

DROP TABLE IF EXISTS `organization_asset_location_locale`;

CREATE TABLE `organization_asset_location_locale` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT 'Required, Text Field, Min:3, Max:100',
  `description` mediumtext NOT NULL DEFAULT '' COMMENT 'Optional, Text Field, Min:0, Max: 2048',
  `locale_id` int(11) unsigned NOT NULL,
  `organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `organization_branch_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `organization_asset_location_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table organization_asset_received
# ------------------------------------------------------------

DROP TABLE IF EXISTS `organization_asset_received`;

CREATE TABLE `organization_asset_received` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `organization_asset_id` int(11) unsigned NOT NULL COMMENT 'Required, Drop Down',
  `asset_type_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `asset_unit_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `asset_quantity` float unsigned NOT NULL COMMENT 'Optional, Text Field, Min:0.1',
  `asset_condition_id` int(11) unsigned NOT NULL COMMENT 'Required, DropDownList',
  `asset_value` float unsigned NOT NULL COMMENT 'Optional, Text Field, Min:0.1',
  `donor_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `organization_user_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `organization_branch_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`),
  KEY `organization_asset_received_organization_user_id` (`organization_user_id`),
  CONSTRAINT `organization_asset_received_ibfk_1` FOREIGN KEY (`organization_user_id`) REFERENCES `organization_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table organization_asset_required
# ------------------------------------------------------------

DROP TABLE IF EXISTS `organization_asset_required`;

CREATE TABLE `organization_asset_required` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `organization_asset_id` int(11) unsigned NOT NULL COMMENT 'Required, Drop Down',
  `asset_type_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `asset_unit_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `asset_condition_id` int(11) unsigned NOT NULL COMMENT 'Required, DropDownList',
  `asset_quantity` float unsigned NOT NULL COMMENT 'Optional, Text Field, Min:0.1',
  `status` enum('Waiting', 'Received') DEFAULT 'Waiting',
  `organization_asset_received_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `organization_asset_received_date` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `organization_branch_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`),
  KEY `organization_asset_required_organization_user_id` (`owner_organization_user_id`),
  CONSTRAINT `organization_asset_required_ibfk_1` FOREIGN KEY (`owner_organization_user_id`) REFERENCES `organization_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table organization_media_gallery
# ------------------------------------------------------------

DROP TABLE IF EXISTS `organization_media_gallery`;

CREATE TABLE `organization_media_gallery` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `size` int(11) unsigned NOT NULL,
  `mime_type` varchar(32) NOT NULL,
  `path` varchar(1024) NOT NULL DEFAULT '',
  `media_type_id` tinyint(3) unsigned DEFAULT '0' COMMENT 'Required: Text Field, Min:0, Max:255',
  `media_filetype_id` tinyint(3) unsigned DEFAULT '0' COMMENT 'Required: Text Field, Min:0, Max:255',
  `published` enum('Yes', 'No') NOT NULL DEFAULT 'No',
  `media_status_id` tinyint(3) unsigned DEFAULT '0' COMMENT 'Required: Text Field, Min:0, Max:255',
  `sequence` int(11) unsigned NOT NULL DEFAULT '0',
  `organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `organization_user_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `organization_branch_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table organization_media_gallery_locale
# ------------------------------------------------------------

DROP TABLE IF EXISTS `organization_media_gallery_locale`;

CREATE TABLE `organization_media_gallery_locale` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `intro_text` mediumtext NOT NULL DEFAULT '',
  `locale_id` int(11) unsigned NOT NULL,
  `organization_media_gallery_id` int(11) unsigned NOT NULL COMMENT 'From Session',
  `organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table organization_media_youtube_gallery
# ------------------------------------------------------------

DROP TABLE IF EXISTS `organization_media_youtube_gallery`;

CREATE TABLE `organization_media_youtube_gallery` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `youtube_link` varchar(255) NOT NULL,
  `published` enum('Yes', 'No') NOT NULL DEFAULT 'No',
  `media_status_id` tinyint(3) unsigned DEFAULT '0' COMMENT 'Required: Text Field, Min:0, Max:255',
  `sequence` int(11) unsigned NOT NULL DEFAULT '0',
  `organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `organization_user_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `organization_branch_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table organization_media_youtube_gallery_locale
# ------------------------------------------------------------

DROP TABLE IF EXISTS `organization_media_youtube_gallery_locale`;

CREATE TABLE `organization_media_youtube_gallery_locale` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `intro_text` mediumtext NOT NULL DEFAULT '',
  `locale_id` int(11) unsigned NOT NULL,
  `organization_media_youtube_gallery_id` int(11) unsigned NOT NULL COMMENT 'From Session',
  `organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table organization_task
# ------------------------------------------------------------

DROP TABLE IF EXISTS `organization_task`;

CREATE TABLE `organization_task` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `assignee_id` int(11) unsigned NOT NULL COMMENT 'Required, DropDownList',
  `status` enum('Draft', 'Accepted', 'In Progress', 'Completed', 'Canceled') NOT NULL DEFAULT 'Draft' COMMENT 'Required, DropDownList',
  `start_at` datetime DEFAULT NULL COMMENT 'Required, Calender',
  `end_at` datetime DEFAULT NULL COMMENT 'Required, Calender',
  `organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `organization_user_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `organization_branch_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`),
  KEY `organization_task_organization_id` (`organization_id`),
  KEY `organization_task_organization_user_id` (`organization_user_id`),
  KEY `organization_task_assignee_id` (`assignee_id`),
  KEY `organization_task_organization_branch_id` (`organization_branch_id`),
  CONSTRAINT `organization_task_ibfk_1` FOREIGN KEY (`organization_id`) REFERENCES `organization` (`id`),
  CONSTRAINT `organization_task_ibfk_2` FOREIGN KEY (`organization_user_id`) REFERENCES `organization_user` (`id`),
  CONSTRAINT `organization_task_ibfk_3` FOREIGN KEY (`assignee_id`) REFERENCES `organization_user` (`id`),
  CONSTRAINT `organization_task_ibfk_4` FOREIGN KEY (`organization_branch_id`) REFERENCES `organization_branch` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table organization_task_locale
# ------------------------------------------------------------

DROP TABLE IF EXISTS `organization_task_locale`;

CREATE TABLE `organization_task_locale` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT 'Required, Text Field, Min:3, Max:100',
  `description` mediumtext NOT NULL DEFAULT '' COMMENT 'Optional, Text Field, Min:0, Max: 2048',
  `locale_id` int(11) unsigned NOT NULL,
  `organization_task_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# ////////////////////////////////////////////////////////////
# 
# Posts Tables
# 
# \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\


# Dump of table post_category
# - Article
# - Project
# - Service
# - Site Homepage
# - Admin Area
# ------------------------------------------------------------

DROP TABLE IF EXISTS `post_category`;

CREATE TABLE `post_category` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `status` enum('Draft', 'Pending', 'Active', 'Blocked', 'Deleted') NOT NULL DEFAULT 'Draft',
  `sequence` int(11) unsigned NOT NULL DEFAULT '0',
  `published` enum('Yes', 'No') NOT NULL DEFAULT 'No',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table post_category_locale
# ------------------------------------------------------------

DROP TABLE IF EXISTS `post_category_locale`;

CREATE TABLE `post_category_locale` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL DEFAULT '' COMMENT 'Optional, Text Field, Min:0, Max: 2048',
  `locale_id` int(11) unsigned NOT NULL,
  `post_category_id` int(11) unsigned NOT NULL COMMENT 'From Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table post_type
# 
# Article Types
# - News
# - Post
# - Page
# - Photo
# - Map
# - Number
# - Calender
# 
# Homepage Types
# - Service
# - Client
# - Client Testimonials
# - Project
# - News
# - Event
# - Team
# - Announcement
# ------------------------------------------------------------

DROP TABLE IF EXISTS `post_type`;

CREATE TABLE `post_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `post_category_id` int(11) unsigned NOT NULL,
  `parent_id` int(11) unsigned NOT NULL,
  `sequence` int(11) unsigned NOT NULL DEFAULT '0',
  `published` enum('Yes', 'No') COLLATE utf8_bin NOT NULL DEFAULT 'Yes' COMMENT 'Required, DropDownList',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table post_type_locale
# ------------------------------------------------------------

DROP TABLE IF EXISTS `post_type_locale`;

CREATE TABLE `post_type_locale` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT 'Content title',
  `description` mediumtext NOT NULL DEFAULT '' COMMENT 'Optional, Text Field, Min:0, Max: 2048',
  `post_type_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table post_author
# ------------------------------------------------------------

DROP TABLE IF EXISTS `post_author`;

CREATE TABLE `post_author` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table post_author_locale
# ------------------------------------------------------------

DROP TABLE IF EXISTS `post_author_locale`;

CREATE TABLE `post_author_locale` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` longtext NOT NULL,
  `locale_id` int(11) unsigned NOT NULL,
  `post_author_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table post_metadata
# ------------------------------------------------------------

DROP TABLE IF EXISTS `post_metadata`;

CREATE TABLE `post_metadata` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `page_title` varchar(100) NOT NULL COMMENT 'Page meta title',
  `page_description` varchar(200) NOT NULL COMMENT 'Page meta description',
  `page_keywords` varchar(200) NOT NULL COMMENT 'Page meta keywords',
  `locale_id` int(11) unsigned NOT NULL,
  `post_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table post_media_gallery
# ------------------------------------------------------------

DROP TABLE IF EXISTS `post_media_gallery`;

CREATE TABLE `post_media_gallery` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `size` int(11) unsigned NOT NULL,
  `mime_type` varchar(32) NOT NULL,
  `path` varchar(1024) NOT NULL DEFAULT '',
  `media_type_id` tinyint(3) unsigned DEFAULT '0' COMMENT 'Required: Text Field, Min:0, Max:255',
  `media_filetype_id` tinyint(3) unsigned DEFAULT '0' COMMENT 'Required: Text Field, Min:0, Max:255',
  `published` enum('Yes', 'No') NOT NULL DEFAULT 'No',
  `media_status_id` tinyint(3) unsigned DEFAULT '0' COMMENT 'Required: Text Field, Min:0, Max:255',
  `sequence` int(11) unsigned NOT NULL DEFAULT '0',
  `post_id` int(11) unsigned NOT NULL COMMENT 'Required',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `owner_organization_branch_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table post_media_gallery_locale
# ------------------------------------------------------------

DROP TABLE IF EXISTS `post_media_gallery_locale`;

CREATE TABLE `post_media_gallery_locale` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `intro_text` mediumtext NOT NULL DEFAULT '',
  `locale_id` int(11) unsigned NOT NULL,
  `post_media_gallery_id` int(11) unsigned NOT NULL COMMENT 'From Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table post_media_youtube_gallery
# ------------------------------------------------------------

DROP TABLE IF EXISTS `post_media_youtube_gallery`;

CREATE TABLE `post_media_youtube_gallery` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `youtube_link` varchar(255) NOT NULL,
  `published` enum('Yes', 'No') NOT NULL DEFAULT 'No',
  `media_status_id` tinyint(3) unsigned DEFAULT '0' COMMENT 'Required: Text Field, Min:0, Max:255',
  `sequence` int(11) unsigned NOT NULL DEFAULT '0',
  `post_id` int(11) unsigned NOT NULL COMMENT 'Required',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `owner_organization_branch_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table post_media_youtube_gallery_locale
# ------------------------------------------------------------

DROP TABLE IF EXISTS `post_media_youtube_gallery_locale`;

CREATE TABLE `post_media_youtube_gallery_locale` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `intro_text` mediumtext NOT NULL DEFAULT '',
  `locale_id` int(11) unsigned NOT NULL,
  `post_media_youtube_gallery_id` int(11) unsigned NOT NULL COMMENT 'From Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table post
# ------------------------------------------------------------

DROP TABLE IF EXISTS `post`;

CREATE TABLE `post` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sequence` int(11) unsigned NOT NULL,
  `post_author_id` int(11) unsigned NOT NULL,
  `post_category_id` int(11) unsigned NOT NULL DEFAULT '0',
  `published` enum('Yes', 'No') COLLATE utf8_bin NOT NULL DEFAULT 'Yes' COMMENT 'Required, DropDownList',
  `status` enum('Draft', 'Active', 'Deleted') NOT NULL DEFAULT 'Draft',
  `guid` varchar(255) NOT NULL DEFAULT '' COMMENT 'Hashed UID',
  `post_type_id` int(11) unsigned NOT NULL DEFAULT '0',
  `subtype_id` int(11) unsigned NOT NULL DEFAULT '0',
  `feature_image_url` varchar(1024) NOT NULL COMMENT 'FROM Session',
  `feature_image_link` varchar(1024) NOT NULL COMMENT 'FROM Session',
  `feature_video_url` varchar(1024) NOT NULL COMMENT 'FROM Session',
  `feature_video_link` varchar(1024) NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `owner_organization_branch_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
 PRIMARY KEY (`id`),
 KEY `post_owner_organization_user_id` (`owner_organization_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table post_locale
# ------------------------------------------------------------

DROP TABLE IF EXISTS `post_locale`;

CREATE TABLE `post_locale` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `content` longtext NOT NULL,
  `title` varchar(255) NOT NULL COMMENT 'Content title',
  `locale_id` int(11) unsigned NOT NULL,
  `post_id` int(11) unsigned NOT NULL COMMENT '',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# ////////////////////////////////////////////////////////////
# 
# Admin Authorization Tables
# 
# \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\


# Dump of table admin_authorization
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admin_authorization`;

CREATE TABLE `admin_authorization` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Admin Authorization ID',
  `username` varchar(32) NOT NULL DEFAULT '' COMMENT 'Required, Text Field, Min: 3, Max: 15',
  `password` varchar(128) NOT NULL DEFAULT '' COMMENT 'Required, Text Field, Min:8, Max: 50',
  `status` enum('On Hold', 'Active', 'Blocked', 'Deleted') NOT NULL DEFAULT 'On Hold' COMMENT 'Required, DropDownList',
  `admin_authorization_role_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Role ID',
  `last_login_date` datetime NOT NULL COMMENT 'Required when login',
  `last_login_ip` varchar(15) NOT NULL DEFAULT '' COMMENT 'Required when login',
  `organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `organization_user_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Token creation timestamp',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Admin Authorization';


# Dump of table admin_authorization_role
# 
# 1, Administrators, G, 0, 0, 1
# 2, Admin, U, 1, 1, 2
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admin_authorization_role`;

CREATE TABLE `admin_authorization_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Role ID',
  `name` varchar(255) DEFAULT NULL COMMENT 'Role Name',
  `type` enum('Default', 'Custom', 'Temp', 'Relation') DEFAULT NULL COMMENT 'Custom',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Parent Role ID',
  `organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Token creation timestamp',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`),
  KEY `admin_authorization_role_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Admin Role Table';


# Dump of table admin_authorization_resource
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admin_authorization_resource`;

CREATE TABLE `admin_authorization_resource` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule ID',
  `name` varchar(50) DEFAULT NULL COMMENT 'Resource Name',
  `description` varchar(512) DEFAULT NULL COMMENT 'Role Name',
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Token creation timestamp',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Admin Rule Table';


# Dump of table admin_authorization_rule
# 
# 1085, 1, Aula_Backend::all,  NULL, allow
# 1088, 4, Aula_Backend::all,  NULL, deny
# 1090, 4, Aula_Backend::dashboard,  NULL, deny
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admin_authorization_rule`;

CREATE TABLE `admin_authorization_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule ID',
  `admin_authorization_role_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Role ID',
  `authorization_resource_id` varchar(255) DEFAULT NULL COMMENT 'Resource ID',
  `permission` enum('allow', 'deny') DEFAULT NULL COMMENT 'Permission',
  `organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Token creation timestamp',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`),
  KEY `authorization_rule_resource_id_role_id` (`authorization_resource_id`,`admin_authorization_role_id`),
  KEY `authorization_rule_role_id_resource_id` (`admin_authorization_role_id`,`authorization_resource_id`),
  CONSTRAINT `authorization_rule_role_id_authorization_role_role_id` FOREIGN KEY (`admin_authorization_role_id`) REFERENCES `authorization_role` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Admin Rule Table';


# Dump of table admin_authorization_organization_relation
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admin_authorization_organization_relation`;

CREATE TABLE `admin_authorization_organization_relation` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `status` enum('Initatied', 'Established', 'Refused', 'Broken', 'Canceled') NOT NULL DEFAULT 'Initatied',
  `initiator_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `initiator_organization_user_id` int(11) unsigned NOT NULL,
  `target_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `target_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`),
  KEY `admin_authorization_organization_relation_owner_organization_id` (`owner_organization_id`),
  KEY `admin_authorization_organization_relation_owner_organization_user_id` (`owner_organization_user_id`),
  CONSTRAINT `admin_authorization_organization_relation_ibfk_2` FOREIGN KEY (`owner_organization_id`) REFERENCES `organization` (`id`),
  CONSTRAINT `admin_authorization_organization_relation_ibfk_3` FOREIGN KEY (`owner_organization_user_id`) REFERENCES `organization_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table admin_authorization_organization_relation_role
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admin_authorization_organization_relation_role`;

CREATE TABLE `admin_authorization_organization_relation_role` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `status` enum('Initatied', 'Established', 'Refused', 'Broken', 'Canceled') NOT NULL DEFAULT 'Initatied',
  `admin_authorization_role_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Role ID',
  `admin_authorization_organization_relation_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`),
  KEY `admin_authorization_organization_relation_role_owner_organization_id` (`owner_organization_id`),
  KEY `admin_authorization_organization_relation_role_owner_organization_user_id` (`owner_organization_user_id`),
  CONSTRAINT `admin_authorization_organization_relation_role_ibfk_2` FOREIGN KEY (`owner_organization_id`) REFERENCES `organization` (`id`),
  CONSTRAINT `admin_authorization_organization_relation_role_ibfk_3` FOREIGN KEY (`owner_organization_user_id`) REFERENCES `organization_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table admin_authorization_relation
# - All admin users who need access to other organizations
# should have records here. If so, those users should have
# access to force login page for organizations 
# - The Super Administrator account should have read access
# to all organization in the system
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admin_authorization_relation`;

CREATE TABLE `admin_authorization_relation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Admin Authorization Relation ID',
  `admin_authorization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `admin_authorization_organization_relation_role_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Role ID',
  `status` enum('Pending', 'Active', 'Blocked', 'Deleted') NOT NULL DEFAULT 'Pending',
  `last_login_date` datetime NOT NULL COMMENT 'Required when login',
  `last_login_ip` varchar(15) NOT NULL DEFAULT '' COMMENT 'Required when login',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Token creation timestamp',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Admin Authorization';


# Dump of table admin_authorization_token
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admin_authorization_token`;

CREATE TABLE `admin_authorization_token` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `token` varchar(32) NOT NULL COMMENT 'Token',
  `type` varchar(16) NOT NULL COMMENT 'session id, csrf, reset password link, sms verification, email verification',
  `revoked` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Token revoked',
  `authorized` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Token authorized',
  `expiry` datetime DEFAULT NULL COMMENT '',
  `admin_authorization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Token creation timestamp',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`),
  UNIQUE KEY `authorization_token_token` (`token`),
  KEY `authorization_token_admin_authorization_id` (`admin_authorization_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Admin Tokens';

# ////////////////////////////////////////////////////////////
# 
# Site Authorization Tables
# 
# \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

# Dump of table site_authorization
# ------------------------------------------------------------

DROP TABLE IF EXISTS `site_authorization`;

CREATE TABLE `site_authorization` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Role ID',
  `username` varchar(32) NOT NULL DEFAULT '' COMMENT 'Required, Text Field, Min: 3, Max: 15',
  `password` varchar(128) NOT NULL DEFAULT '' COMMENT 'Required, Text Field, Min:8, Max: 50',
  `status` enum('On Hold', 'Active', 'Blocked', 'Deleted') NOT NULL DEFAULT 'On Hold' COMMENT 'Required, DropDownList',
  `last_login_date` datetime NOT NULL COMMENT 'Required when login',
  `last_login_ip` varchar(15) NOT NULL DEFAULT '' COMMENT 'Required when login',
  `user_type` enum('Donor', 'Beneficiary', 'Agent') NOT NULL COMMENT 'From session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Token creation timestamp',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Site Authorization';


# Dump of table site_authorization_token
# ------------------------------------------------------------

DROP TABLE IF EXISTS `site_authorization_token`;

CREATE TABLE `site_authorization_token` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `token` varchar(32) NOT NULL COMMENT 'Token',
  `type` varchar(16) NOT NULL COMMENT 'session id, csrf, reset password link, sms verification, email verification',
  `revoked` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Token revoked',
  `authorized` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Token authorized',
  `site_authorization_id` int(10) unsigned DEFAULT NULL COMMENT 'User ID',
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Token creation timestamp',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`),
  UNIQUE KEY `authorization_token_token` (`token`),
  KEY `authorization_token_site_authorization_id` (`site_authorization_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Site Users Tokens';

# ////////////////////////////////////////////////////////////
# 
# Homepage Tables
# 
# \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

# Dump of table homepage_slider
# ------------------------------------------------------------

DROP TABLE IF EXISTS `homepage_slider`;

CREATE TABLE `homepage_slider` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sequence` int(11) unsigned NOT NULL DEFAULT '0',
  `published` enum('Yes', 'No') COLLATE utf8_bin NOT NULL DEFAULT 'Yes' COMMENT 'Required, DropDownList',
  `animation_type_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'slide, fade, bars',
  `organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `organization_user_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table homepage_slider_locale
# ------------------------------------------------------------

DROP TABLE IF EXISTS `homepage_slider_locale`;

CREATE TABLE `homepage_slider_locale` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `intro_text` mediumtext NOT NULL DEFAULT '',
  `more_link` mediumtext NOT NULL DEFAULT '',
  `locale_id` int(11) unsigned NOT NULL,
  `organization_user_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `homepage_slider_id` int(11) unsigned NOT NULL COMMENT 'From Session',
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# ////////////////////////////////////////////////////////////
# 
# Donor Tables
# 
# \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\


# Dump of table donor
# ------------------------------------------------------------

DROP TABLE IF EXISTS `donor`;

CREATE TABLE `donor` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sequence` int(11) unsigned NOT NULL,
  `ssn` varchar(32) NOT NULL DEFAULT '' COMMENT 'Required, Text Field, Min:9, Max: 12',
  `title` enum('Mr.', 'Mrs.', 'Miss', 'Ms.') NOT NULL DEFAULT 'Mr.' COMMENT 'Required, DropDownList',
  `gender` enum('Male', 'Female') NOT NULL DEFAULT 'Male' COMMENT 'Required, DropDownList',
  `email` varchar(255) NOT NULL DEFAULT '' COMMENT 'Required, Text Field, Min:3, Max:254',
  `date_of_birth` date NOT NULL COMMENT 'Required, Calender',
  `phone_number` varchar(17) NOT NULL DEFAULT '' COMMENT 'Optional, Text Field, Min:12, Max: 14',
  `mobile_number` varchar(17) NOT NULL DEFAULT '' COMMENT 'Required, Text Field, Min:12, Max: 14',
  `mobile_number_2` varchar(17) NOT NULL DEFAULT '' COMMENT 'Optional, Text Field, Min:12, Max: 14',
  `avatar` varchar(1024) NOT NULL DEFAULT '',
  `visibility` enum('Anonymous', 'Visible') NOT NULL DEFAULT 'Visible',
  `nationality_id` int(11) unsigned NOT NULL COMMENT 'Required, DropDownList',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `notes` varchar(1024) NOT NULL DEFAULT '' COMMENT 'Optional, Textarea, Min:10, Max:500',
  `options` varchar(1024) NOT NULL DEFAULT '' COMMENT 'Optional, Any other-future info will be saved serialize array key=>value',
  PRIMARY KEY (`id`),
  KEY `donor_nationality_id` (`nationality_id`),
  CONSTRAINT `donor_ibfk_1` FOREIGN KEY (`nationality_id`) REFERENCES `country` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table donor_locale
# ------------------------------------------------------------

DROP TABLE IF EXISTS `donor_locale`;

CREATE TABLE `donor_locale` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Required, Text Field, Min:3, Max: 50',
  `second_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Required, Text Field, Min:3, Max: 50',
  `third_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Required, Text Field, Min:3, Max: 50',
  `last_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Required, Text Field, Min:3, Max: 50',
  `address` varchar(255) NOT NULL DEFAULT '' COMMENT 'Required, Textarea, Min:3, Max: 50',
  `locale_id` int(11) unsigned NOT NULL,
  `donor_id` int(11) unsigned NOT NULL COMMENT 'From Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# ////////////////////////////////////////////////////////////
# 
# Agent Tables
# 
# \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\


# Dump of table agent
# ------------------------------------------------------------

DROP TABLE IF EXISTS `agent`;

CREATE TABLE `agent` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sequence` int(11) unsigned NOT NULL,
  `ssn` varchar(32) NOT NULL DEFAULT '' COMMENT 'Required, Text Field, Min:9, Max: 12',
  `title` enum('Mr.', 'Mrs.', 'Miss', 'Ms.') NOT NULL DEFAULT 'Mr.' COMMENT 'Required, DropDownList',
  `gender` enum('Male', 'Female') NOT NULL DEFAULT 'Male' COMMENT 'Required, DropDownList',
  `email` varchar(255) NOT NULL DEFAULT '' COMMENT 'Required, Text Field, Min:3, Max:254',
  `mobile_number` varchar(17) NOT NULL DEFAULT '' COMMENT 'Required, Text Field, Min:12, Max: 14',
  `mobile_number_2` varchar(17) NOT NULL DEFAULT '' COMMENT 'Optional, Text Field, Min:12, Max: 14',
  `phone_number` varchar(17) NOT NULL DEFAULT '' COMMENT 'Optional, Text Field, Min:12, Max: 14',
  `fax` varchar(17) NOT NULL DEFAULT '' COMMENT 'Optional, Text Field, Min:12, Max: 14',
  `country_id` int(11) unsigned NOT NULL COMMENT 'Required, DropDownList',
  `city_id` int(11) unsigned NOT NULL COMMENT 'Required, DropDownList',
  `avatar` varchar(1024) NOT NULL DEFAULT '',
  `bank_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Required, Text Field, Min:3, Max:100',
  `bank_branch_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Required, Text Field, Min:3, Max:100',
  `bank_branch_number` varchar(255) NOT NULL DEFAULT '' COMMENT 'Required, Text Field, Min:3, Max:100',
  `bank_swift_code` varchar(32) NOT NULL DEFAULT '' COMMENT 'Required, Text Field, Min:1, Max:100',
  `bank_account_number` varchar(255) NOT NULL DEFAULT '' COMMENT 'Required, Text Field, Min:3, Max:100',
  `bank_iban_code` varchar(32) NOT NULL DEFAULT '' COMMENT 'Required, Text Field, Min:1, Max:100',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ssn` (`ssn`),
  KEY `agent_country_id` (`country_id`),
  KEY `agent_city_id` (`city_id`),
  CONSTRAINT `agent_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`),
  CONSTRAINT `agent_ibfk_2` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table agent_locale
# ------------------------------------------------------------

DROP TABLE IF EXISTS `agent_locale`;

CREATE TABLE `agent_locale` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Required, Text Field, Min:3, Max: 50',
  `second_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Required, Text Field, Min:3, Max: 50',
  `third_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Required, Text Field, Min:3, Max: 50',
  `last_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Required, Text Field, Min:3, Max: 50',
  `company_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Required, Text Field, Min:3, Max: 50',
  `address` varchar(255) NOT NULL DEFAULT '' COMMENT 'Required, Textarea, Min:3, Max: 50',
  `locale_id` int(11) unsigned NOT NULL,
  `agent_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# ////////////////////////////////////////////////////////////
# 
# Message Tables
# 
# \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\


# Dump of table message_inbox
# ------------------------------------------------------------

DROP TABLE IF EXISTS `message_inbox`;

CREATE TABLE `message_inbox` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message_type_id` int(11) unsigned NOT NULL COMMENT 'Required, DropDownList',
  `number` varchar(255) NOT NULL DEFAULT '' COMMENT 'Optional, Text Field, Min:1, Max: 50',
  `from_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Required, Text Field, Min:3, Max: 50',
  `from_department` varchar(255) NOT NULL DEFAULT '' COMMENT 'Required, Text Field, Min:3, Max: 50',
  `subject` varchar(255) NOT NULL DEFAULT '' COMMENT 'Required, Text Field, Min:3, Max: 100',
  `received_at` datetime NOT NULL COMMENT 'Optional, Calender',
  `organization_user_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `organization_branch_id` int(11) unsigned NOT NULL COMMENT 'Required, DropDownList contains all Branches for logged in Organization',
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`),
  KEY `message_inbox_organization_id` (`organization_id`),
  KEY `message_inbox_message_type_id` (`message_type_id`),
  KEY `message_inbox_organization_user_id` (`organization_user_id`),
  KEY `message_inbox_organization_branch_id` (`organization_branch_id`),
  CONSTRAINT `message_inbox_ibfk_1` FOREIGN KEY (`organization_id`) REFERENCES `organization` (`id`),
  CONSTRAINT `message_inbox_ibfk_2` FOREIGN KEY (`message_type_id`) REFERENCES `message_type` (`id`),
  CONSTRAINT `message_inbox_ibfk_3` FOREIGN KEY (`organization_user_id`) REFERENCES `organization_user` (`id`),
  CONSTRAINT `message_inbox_ibfk_4` FOREIGN KEY (`organization_branch_id`) REFERENCES `organization_branch` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table message_outbox
# ------------------------------------------------------------

DROP TABLE IF EXISTS `message_outbox`;

CREATE TABLE `message_outbox` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message_type_id` int(11) unsigned NOT NULL COMMENT 'Required, DropDownList',
  `message_template_id` int(11) unsigned NOT NULL COMMENT 'Required, DropDownList',
  `number` varchar(255) NOT NULL DEFAULT '' COMMENT 'Optional, Text Field, Min:1, Max: 50',
  `from_mail` varchar(255) NOT NULL DEFAULT '' COMMENT 'Required, Text Field, Min:3, Max:254',
  `from_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Required, Text Field, Min:3, Max: 50',
  `from_department` varchar(255) NOT NULL DEFAULT '' COMMENT 'Required, Text Field, Min:3, Max: 50',
  `to_mail` varchar(255) NOT NULL DEFAULT '' COMMENT 'Required, Text Field, Min:3, Max:254',
  `to_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Required, Text Field, Min:3, Max: 50',
  `to_department` varchar(255) NOT NULL DEFAULT '' COMMENT 'Required, Text Field, Min:3, Max: 50',
  `subject` varchar(255) NOT NULL DEFAULT '' COMMENT 'Required, Text Field, Min:3, Max: 100',
  `description` mediumtext NOT NULL DEFAULT '' COMMENT 'Optional, Text Field, Min:0, Max: 2048',
  `send_at` datetime NOT NULL COMMENT 'Optional, Calender',
  `organization_user_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `organization_branch_id` int(11) unsigned NOT NULL COMMENT 'Required, DropDownList contains all Branches for logged in Organization',
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`),
  KEY `message_outbox_organization_id` (`organization_id`),
  KEY `message_outbox_message_type_id` (`message_type_id`),
  KEY `message_outbox_message_template_id` (`message_template_id`),
  KEY `message_outbox_organization_user_id` (`organization_user_id`),
  KEY `message_outbox_organization_branch_id` (`organization_branch_id`),
  CONSTRAINT `message_outbox_ibfk_1` FOREIGN KEY (`organization_id`) REFERENCES `organization` (`id`),
  CONSTRAINT `message_outbox_ibfk_2` FOREIGN KEY (`message_type_id`) REFERENCES `message_type` (`id`),
  CONSTRAINT `message_outbox_ibfk_3` FOREIGN KEY (`organization_user_id`) REFERENCES `organization_user` (`id`),
  CONSTRAINT `message_outbox_ibfk_4` FOREIGN KEY (`organization_branch_id`) REFERENCES `organization_branch` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table message_template
# ------------------------------------------------------------

DROP TABLE IF EXISTS `message_template`;

CREATE TABLE `message_template` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message_type_id` int(11) unsigned NOT NULL COMMENT 'Required, DropDownList',
  `number` varchar(255) NOT NULL DEFAULT '' COMMENT 'Optional, Text Field, Min:1, Max: 50',
  `from_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Required, Text Field, Min:3, Max: 50',
  `from_department` varchar(255) NOT NULL DEFAULT '' COMMENT 'Required, Text Field, Min:3, Max: 50',
  `to_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Required, Text Field, Min:3, Max: 50',
  `to_department` varchar(255) NOT NULL DEFAULT '' COMMENT 'Required, Text Field, Min:3, Max: 50',
  `subject` varchar(255) NOT NULL DEFAULT '' COMMENT 'Required, Text Field, Min:3, Max: 100',
  `description` mediumtext NOT NULL DEFAULT '' COMMENT 'Optional, Text Field, Min:0, Max: 2048',
  `organization_user_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `organization_branch_id` int(11) unsigned NOT NULL COMMENT 'Required, DropDownList contains all Branches for logged in Organization',
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`),
  KEY `message_template_organization_id` (`organization_id`),
  KEY `message_template_message_type_id` (`message_type_id`),
  KEY `message_template_organization_user_id` (`organization_user_id`),
  KEY `message_template_organization_branch_id` (`organization_branch_id`),
  CONSTRAINT `message_template_ibfk_1` FOREIGN KEY (`organization_id`) REFERENCES `organization` (`id`),
  CONSTRAINT `message_template_ibfk_2` FOREIGN KEY (`message_type_id`) REFERENCES `message_type` (`id`),
  CONSTRAINT `message_template_ibfk_3` FOREIGN KEY (`organization_user_id`) REFERENCES `organization_user` (`id`),
  CONSTRAINT `message_template_ibfk_4` FOREIGN KEY (`organization_branch_id`) REFERENCES `organization_branch` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table message_type
# - SMS
# - Mail
# - Web Notification
# - Push
# - MMS
# ------------------------------------------------------------

DROP TABLE IF EXISTS `message_type`;

CREATE TABLE `message_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT 'Required, Text Field, Min:3, Max: 50',
  `description` mediumtext NOT NULL DEFAULT '' COMMENT 'Optional, Text Field, Min:0, Max: 2048',
  `published` enum('Yes', 'No') COLLATE utf8_bin NOT NULL DEFAULT 'Yes' COMMENT 'Required, DropDownList',
  `organization_user_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `organization_branch_id` int(11) unsigned NOT NULL COMMENT 'Required, DropDownList contains all Branches for logged in Organization',
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`),
  KEY `message_type_organization_id` (`organization_id`),
  KEY `message_type_organization_user_id` (`organization_user_id`),
  KEY `message_type_organization_branch_id` (`organization_branch_id`),
  CONSTRAINT `message_type_ibfk_1` FOREIGN KEY (`organization_id`) REFERENCES `organization` (`id`),
  CONSTRAINT `message_type_ibfk_2` FOREIGN KEY (`organization_user_id`) REFERENCES `organization_user` (`id`),
  CONSTRAINT `message_type_ibfk_3` FOREIGN KEY (`organization_branch_id`) REFERENCES `organization_branch` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table message_media_gallery
# ------------------------------------------------------------

DROP TABLE IF EXISTS `message_media_gallery`;

CREATE TABLE `message_media_gallery` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `intro_text` mediumtext NOT NULL DEFAULT '',
  `size` int(11) unsigned NOT NULL,
  `mime_type` varchar(32) NOT NULL,
  `path` varchar(1024) NOT NULL DEFAULT '',
  `media_type_id` tinyint(3) unsigned DEFAULT '0' COMMENT 'Required: Text Field, Min:0, Max:255',
  `media_filetype_id` tinyint(3) unsigned DEFAULT '0' COMMENT 'Required: Text Field, Min:0, Max:255',
  `published` enum('Yes', 'No') NOT NULL DEFAULT 'No',
  `media_status_id` tinyint(3) unsigned DEFAULT '0' COMMENT 'Required: Text Field, Min:0, Max:255',
  `sequence` int(11) unsigned NOT NULL DEFAULT '0',
  `message_id` int(11) unsigned NOT NULL COMMENT 'Required',
  `organization_user_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table message_media_youtube_gallery
# ------------------------------------------------------------

DROP TABLE IF EXISTS `message_media_youtube_gallery`;

CREATE TABLE `message_media_youtube_gallery` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `youtube_link` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `intro_text` mediumtext NOT NULL DEFAULT '',
  `published` enum('Yes', 'No') NOT NULL DEFAULT 'No',
  `media_status_id` tinyint(3) unsigned DEFAULT '0' COMMENT 'Required: Text Field, Min:0, Max:255',
  `sequence` int(11) unsigned NOT NULL DEFAULT '0',
  `message_id` int(11) unsigned NOT NULL COMMENT 'Required',
  `organization_user_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# ////////////////////////////////////////////////////////////
# 
# Projects Tables
# 
# \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\


# Dump of table project_category
# - Project
#   - Masjed
#   - Well
# - Pogram
#   - Sadaqah Jarieh
#   - Zakat
#   - 3aqeeqah
#   - Eftar Saem
#   - Eftar Osrah
#   - Kafalet Yateem
#   - Clothes Bank
#   - Toys Bank
#   - Back to School
#   - Winter Kit
# - Event
#   - Conference
#   - Course
#   - Training
#   - Social
#   - Relegious discussions
# - Cause
#   - Tornados
#   - Refugees
#   - Rebuild Ghaza
#   - Blood bank
#   - Support Cancer
#   - Qarnieh
#   - Day Event @ Radio Station
# ------------------------------------------------------------

DROP TABLE IF EXISTS `project_category`;

CREATE TABLE `project_category` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT 'Required, Text Field, Min:3, Max:100',
  `published` enum('Yes', 'No') NOT NULL DEFAULT 'No',
  `sequence` int(11) unsigned NOT NULL DEFAULT '0',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table project_type
# ------------------------------------------------------------

DROP TABLE IF EXISTS `project_type`;

CREATE TABLE `project_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `project_category_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `published` enum('Yes', 'No') NOT NULL DEFAULT 'No',
  `country_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table project_type_locale
# ------------------------------------------------------------

DROP TABLE IF EXISTS `project_type_locale`;

CREATE TABLE `project_type_locale` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT 'Required, Text Field, Min:3, Max:100',
  `description` mediumtext NOT NULL DEFAULT '' COMMENT 'Optional, Text Field, Min:0, Max: 2048',
  `locale_id` int(11) unsigned NOT NULL,
  `project_type_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table project
# ------------------------------------------------------------

DROP TABLE IF EXISTS `project`;

CREATE TABLE `project` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sequence` int(11) unsigned NOT NULL,
  `country_id` int(11) unsigned NOT NULL COMMENT 'Required, DropDownList',
  `city_id` int(11) unsigned NOT NULL COMMENT 'Required, DropDownList',
  `geo_location` varchar(1024) NOT NULL DEFAULT '' COMMENT 'Optional',
  `project_type_id` int(11) unsigned NOT NULL COMMENT 'Required, DropDownList',
  `planned_target` float unsigned NOT NULL DEFAULT '0' COMMENT 'Optional, Text Field, Min:1',
  `planned_start_date` datetime NOT NULL COMMENT 'Required, Calender',
  `planned_end_date` datetime NOT NULL COMMENT 'Required, Calender',
  `planned_duration` tinyint(11) unsigned NOT NULL DEFAULT '1' COMMENT 'Required, Input Field, Min:0, Max: 100',
  `duration_unit` enum('Minute', 'Hour', 'Day', 'Week', 'Month', 'Annual', 'NA') NOT NULL DEFAULT 'Day' COMMENT 'Required,',
  `published` enum('Yes', 'No') NOT NULL DEFAULT 'No' COMMENT 'Required, DropDownList',
  `status` enum('Draft', 'Active', 'Completed', 'Canceled') NOT NULL DEFAULT 'Draft' COMMENT 'Required, DropDownList',
  `progress` tinyint(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Required, Input Field, Min:0, Max: 100',
  `progress_target` tinyint(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Required, Input Field, Min:0, Max: 100',
  `currency` varchar(3) COLLATE utf8_bin NOT NULL DEFAULT 'USD',
  `currency_exchange_rate_id` int(11) unsigned NOT NULL COMMENT 'Required, DropDownList',
  `auto_start_project` enum('Yes', 'No') NOT NULL DEFAULT 'Yes' COMMENT 'Required, DropDownList',
  `auto_finish_project` enum('Yes', 'No') NOT NULL DEFAULT 'Yes' COMMENT 'Required, DropDownList',
  `actual_target` float unsigned NOT NULL DEFAULT '0' COMMENT 'Optional, Text Field, Min:1',
  `actual_start_date` datetime NOT NULL COMMENT 'Required, Calender',
  `actual_end_date` datetime NOT NULL COMMENT 'Required, Calender',
  `actual_duration` tinyint(11) unsigned NOT NULL DEFAULT '1' COMMENT 'Required, Input Field, Min:0, Max: 100',
  `organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `organization_branch_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`),
  KEY `project_owner_organization_id` (`owner_organization_id`),
  KEY `project_project_type_id` (`project_type_id`),
  KEY `project_country_id` (`country_id`),
  KEY `project_city_id` (`city_id`),
  KEY `project_owner_organization_user_id` (`owner_organization_user_id`),
  CONSTRAINT `project_ibfk_1` FOREIGN KEY (`owner_organization_id`) REFERENCES `organization` (`id`),
  CONSTRAINT `project_ibfk_2` FOREIGN KEY (`project_type_id`) REFERENCES `project_type` (`id`),
  CONSTRAINT `project_ibfk_3` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`),
  CONSTRAINT `project_ibfk_5` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`),
  CONSTRAINT `project_ibfk_8` FOREIGN KEY (`owner_organization_user_id`) REFERENCES `organization_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table project_locale
# ------------------------------------------------------------

DROP TABLE IF EXISTS `project_locale`;

CREATE TABLE `project_locale` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `intro_text` mediumtext NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL DEFAULT '' COMMENT 'Optional, Text Field, Min:0, Max: 2048',
  `logo` varchar(1024) NOT NULL DEFAULT '',
  `locale_id` int(11) unsigned NOT NULL,
  `project_id` int(11) unsigned NOT NULL COMMENT 'From Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table project_donor
# ------------------------------------------------------------

DROP TABLE IF EXISTS `project_donor`;

CREATE TABLE `project_donor` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `donor_id` int(11) unsigned NOT NULL COMMENT 'Required, DropDownList',
  `currency` varchar(3) COLLATE utf8_bin NOT NULL DEFAULT 'USD',
  `currency_exchange_rate_id` int(11) unsigned NOT NULL COMMENT 'Required, DropDownList',
  `amount` float unsigned NOT NULL COMMENT 'Optional, Text Field, Min:0.1',
  `status` enum('Active', 'Inactive') DEFAULT 'Active',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`),
  KEY `project_donor_owner_organization_id` (`owner_organization_id`),
  KEY `project_donor_owner_organization_user_id` (`owner_organization_user_id`),
  CONSTRAINT `project_donor_ibfk_2` FOREIGN KEY (`owner_organization_id`) REFERENCES `organization` (`id`),
  CONSTRAINT `project_donor_ibfk_3` FOREIGN KEY (`owner_organization_user_id`) REFERENCES `organization_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table project_event_activity
# ------------------------------------------------------------

DROP TABLE IF EXISTS `project_event_activity`;

CREATE TABLE `project_event_activity` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sequence` tinyint(11) unsigned NOT NULL DEFAULT '1' COMMENT 'Required, Input Field, Min:0, Max: 1000',
  `project_id` int(11) unsigned NOT NULL COMMENT 'Required, DropDownList',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`),
  KEY `project_event_activity_project_id` (`project_id`),
  CONSTRAINT `project_event_activity_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table project_event_activity_locale
# ------------------------------------------------------------

DROP TABLE IF EXISTS `project_event_activity_locale`;

CREATE TABLE `project_event_activity_locale` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Required, Text Field, Min:3, Max: 50',
  `description` mediumtext NOT NULL DEFAULT '' COMMENT 'Optional, Text Field, Min:0, Max: 2048',
  `locale_id` int(11) unsigned NOT NULL,
  `project_id` int(11) unsigned NOT NULL COMMENT 'From Session',
  `project_event_activity_id` int(11) unsigned NOT NULL COMMENT 'From Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table project_event_comment
# ------------------------------------------------------------

DROP TABLE IF EXISTS `project_event_comment`;

CREATE TABLE `project_event_comment` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int(11) unsigned NOT NULL COMMENT 'Required, DropDownList',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`),
  KEY `project_event_comment_project_id` (`project_id`),
  CONSTRAINT `project_event_comment_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table project_event_comment_locale
# ------------------------------------------------------------

DROP TABLE IF EXISTS `project_event_comment_locale`;

CREATE TABLE `project_event_comment_locale` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `description` mediumtext NOT NULL DEFAULT '' COMMENT 'Optional, Text Field, Min:0, Max: 2048',
  `locale_id` int(11) unsigned NOT NULL,
  `project_id` int(11) unsigned NOT NULL COMMENT 'From Session',
  `project_event_comment_id` int(11) unsigned NOT NULL COMMENT 'From Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table project_event_agenda
# ------------------------------------------------------------

DROP TABLE IF EXISTS `project_event_agenda`;

CREATE TABLE `project_event_agenda` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `start_time` time NOT NULL DEFAULT '00:00:00' COMMENT 'Required, Calender',
  `end_time` time NOT NULL DEFAULT '00:00:00' COMMENT 'Required, Calender',
  `sequence` tinyint(11) unsigned NOT NULL DEFAULT '1' COMMENT 'Required, Input Field, Min:0, Max: 1000',
  `day_number` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT 'Required, Text Field, Min:1, Max:255',
  `project_id` int(11) unsigned NOT NULL COMMENT 'Required, DropDownList',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`),
  KEY `project_event_agenda_project_id` (`project_id`),
  CONSTRAINT `project_event_agenda_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table project_event_agenda_locale
# ------------------------------------------------------------

DROP TABLE IF EXISTS `project_event_agenda_locale`;

CREATE TABLE `project_event_agenda_locale` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Required, Text Field, Min:3, Max: 50',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT 'Required, Text Field, Min:3, Max: 50',
  `presenter` varchar(255) NOT NULL DEFAULT '' COMMENT 'Required, Text Field, Min:3, Max: 50',
  `venue_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Optional, Text Field, Min:3, Max:50',
  `locale_id` int(11) unsigned NOT NULL,
  `project_event_agenda_id` int(11) unsigned NOT NULL COMMENT 'From Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table project_organization_contact
# ------------------------------------------------------------

DROP TABLE IF EXISTS `project_organization_contact`;

CREATE TABLE `project_organization_contact` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `organization_user_id` int(11) unsigned NOT NULL COMMENT 'Required, DropDownList',
  `is_main_contact` enum('Yes', 'No') NOT NULL DEFAULT 'Yes' COMMENT 'Required, DropDownList',
  `project_id` int(11) unsigned NOT NULL COMMENT 'Required, DropDownList',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`),
  KEY `project_organization_contact_project_id` (`project_id`),
  CONSTRAINT `project_organization_contact` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table project_donor_contact
# ------------------------------------------------------------

DROP TABLE IF EXISTS `project_donor_contact`;

CREATE TABLE `project_donor_contact` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `donor_id` int(11) unsigned NOT NULL COMMENT 'Required, DropDownList',
  `is_main_contact` enum('Yes', 'No') NOT NULL DEFAULT 'Yes' COMMENT 'Required, DropDownList',
  `project_id` int(11) unsigned NOT NULL COMMENT 'Required, DropDownList',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`),
  KEY `project_donor_contact_project_id` (`project_id`),
  CONSTRAINT `project_donor_contact` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table project_agent_contact
# ------------------------------------------------------------

DROP TABLE IF EXISTS `project_agent_contact`;

CREATE TABLE `project_agent_contact` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `agent_id` int(11) unsigned NOT NULL COMMENT 'Required, DropDownList',
  `is_main_contact` enum('Yes', 'No') NOT NULL DEFAULT 'Yes' COMMENT 'Required, DropDownList',
  `project_id` int(11) unsigned NOT NULL COMMENT 'Required, DropDownList',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`),
  KEY `project_agent_contact_project_id` (`project_id`),
  CONSTRAINT `project_agent_contact` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table project_venue_contact
# ------------------------------------------------------------

DROP TABLE IF EXISTS `project_venue_contact`;

CREATE TABLE `project_venue_contact` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int(11) unsigned NOT NULL COMMENT 'Required, DropDownList',
  `is_main_contact` enum('Yes', 'No') NOT NULL DEFAULT 'Yes' COMMENT 'Required, DropDownList',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`),
  KEY `project_venue_contact_project_id` (`project_id`),
  CONSTRAINT `project_venue_contact` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table project_venue_contact_locale
# ------------------------------------------------------------

DROP TABLE IF EXISTS `project_venue_contact_locale`;

CREATE TABLE `project_venue_contact_locale` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Required, Text Field, Min:3, Max: 50',
  `second_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Required, Text Field, Min:3, Max: 50',
  `third_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Required, Text Field, Min:3, Max: 50',
  `last_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Required, Text Field, Min:3, Max: 50',
  `mobile_number` varchar(17) NOT NULL DEFAULT '' COMMENT 'Required, Text Field, Min:12, Max: 14',
  `phone_number` varchar(17) NOT NULL DEFAULT '' COMMENT 'Optional, Text Field, Min:12, Max: 14',
  `address` varchar(255) NOT NULL DEFAULT '' COMMENT 'Required, Textarea, Min:3, Max: 50',
  `email` varchar(255) NOT NULL DEFAULT '' COMMENT 'Required, Text Field, Min:3, Max:254',
  `avatar` varchar(1024) NOT NULL DEFAULT '',
  `locale_id` int(11) unsigned NOT NULL,
  `project_id` int(11) unsigned NOT NULL COMMENT 'From Session',
  `project_venue_contact_id` int(11) unsigned NOT NULL COMMENT 'From Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table project_media_gallery
# ------------------------------------------------------------

DROP TABLE IF EXISTS `project_media_gallery`;

CREATE TABLE `project_media_gallery` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `size` int(11) unsigned NOT NULL,
  `mime_type` varchar(32) NOT NULL,
  `path` varchar(1024) NOT NULL DEFAULT '',
  `media_type_id` tinyint(3) unsigned DEFAULT '0' COMMENT 'Required: Text Field, Min:0, Max:255',
  `media_filetype_id` tinyint(3) unsigned DEFAULT '0' COMMENT 'Required: Text Field, Min:0, Max:255',
  `published` enum('Yes', 'No') NOT NULL DEFAULT 'No',
  `media_status_id` tinyint(3) unsigned DEFAULT '0' COMMENT 'Required: Text Field, Min:0, Max:255',
  `sequence` int(11) unsigned NOT NULL DEFAULT '0',
  `project_id` int(11) unsigned NOT NULL COMMENT 'Required',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table project_media_gallery_locale
# ------------------------------------------------------------

DROP TABLE IF EXISTS `project_media_gallery_locale`;

CREATE TABLE `project_media_gallery_locale` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `intro_text` mediumtext NOT NULL DEFAULT '',
  `locale_id` int(11) unsigned NOT NULL,
  `project_media_gallery_id` int(11) unsigned NOT NULL COMMENT 'From Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table project_media_youtube_gallery
# ------------------------------------------------------------

DROP TABLE IF EXISTS `project_media_youtube_gallery`;

CREATE TABLE `project_media_youtube_gallery` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `youtube_link` varchar(255) NOT NULL,
  `published` enum('Yes', 'No') NOT NULL DEFAULT 'No',
  `media_status_id` tinyint(3) unsigned DEFAULT '0' COMMENT 'Required: Text Field, Min:0, Max:255',
  `sequence` int(11) unsigned NOT NULL DEFAULT '0',
  `project_id` int(11) unsigned NOT NULL COMMENT 'Required',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table project_media_youtube_gallery_locale
# ------------------------------------------------------------

DROP TABLE IF EXISTS `project_media_youtube_gallery_locale`;

CREATE TABLE `project_media_youtube_gallery_locale` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `intro_text` mediumtext NOT NULL DEFAULT '',
  `locale_id` int(11) unsigned NOT NULL,
  `project_media_youtube_gallery_id` int(11) unsigned NOT NULL COMMENT 'From Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table project_masjed
# ------------------------------------------------------------

DROP TABLE IF EXISTS `project_masjed`;

CREATE TABLE `project_masjed` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `project_masjed_id` int(11) unsigned NOT NULL COMMENT 'Required, DropDownList',
  `project_masjed_construction_type_id` int(11) unsigned NOT NULL COMMENT 'Required, DropDownList',
  `project_masjed_furniture_type_id` int(11) unsigned NOT NULL COMMENT 'Required, DropDownList',
  `project_masjed_type_id` int(11) unsigned NOT NULL COMMENT 'Required, DropDownList',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`),
  KEY `project_masjed_project_masjed_type_id` (`project_masjed_type_id`),
  KEY `project_masjed_owner_organization_id` (`owner_organization_id`),
  CONSTRAINT `project_masjed_ibfk_3` FOREIGN KEY (`project_masjed_type_id`) REFERENCES `project_masjed_type` (`id`),
  CONSTRAINT `project_masjed_ibfk_8` FOREIGN KEY (`owner_organization_id`) REFERENCES `organization` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table project_masjed_details
# ------------------------------------------------------------

DROP TABLE IF EXISTS `project_masjed_details`;

CREATE TABLE `project_masjed_details` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `project_masjed_id` int(11) unsigned NOT NULL COMMENT 'Required, DropDownList',
  `project_masjed_type_details_id` int(11) unsigned NOT NULL COMMENT 'Required, DropDownList',
  `project_masjed_type_details_value` varchar(512) NOT NULL COMMENT 'Required, DropDownList',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`),
  KEY `project_masjed_details_project_masjed_type_details_id` (`project_masjed_type_details_id`),
  KEY `project_masjed_details_owner_organization_id` (`owner_organization_id`),
  CONSTRAINT `project_masjed_details_ibfk_3` FOREIGN KEY (`project_masjed_type_details_id`) REFERENCES `project_masjed_details_type` (`id`),
  CONSTRAINT `project_masjed_details_ibfk_8` FOREIGN KEY (`owner_organization_id`) REFERENCES `organization` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table project_masjed_type
# - Small Size Masjid
# - Medium Size Masjid
# - Large Size Masjid
# ------------------------------------------------------------

DROP TABLE IF EXISTS `project_masjed_type`;

CREATE TABLE `project_masjed_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `published` enum('Yes', 'No') COLLATE utf8_bin NOT NULL DEFAULT 'Yes' COMMENT 'Required, DropDownList',
  `country_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table project_masjed_type_locale
# ------------------------------------------------------------

DROP TABLE IF EXISTS `project_masjed_type_locale`;

CREATE TABLE `project_masjed_type_locale` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Required, Text Field, Min:3, Max: 50',
  `locale_id` int(11) unsigned NOT NULL,
  `project_masjed_type_id` int(11) unsigned NOT NULL COMMENT 'From Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table project_masjed_type_details
# - Construction Area
# - Construction Cost
# - Construction Time
# - Number Of People
# - Number Of Restrooms
# - Number Of Floors
# - Number Of Entrances
# - Has Female Area
# - Has Sound System
# - Has Air Condition
# ------------------------------------------------------------

DROP TABLE IF EXISTS `project_masjed_type_details`;

CREATE TABLE `project_masjed_type_details` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `published` enum('Yes', 'No') COLLATE utf8_bin NOT NULL DEFAULT 'Yes' COMMENT 'Required, DropDownList',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`),
  KEY `project_masjed_type_details_owner_organization_user_id` (`owner_organization_user_id`),
  KEY `project_masjed_type_details_owner_organization_id` (`owner_organization_id`),
  CONSTRAINT `project_masjed_type_details_ibfk_2` FOREIGN KEY (`owner_organization_user_id`) REFERENCES `organization_user` (`id`),
  CONSTRAINT `project_masjed_type_details_ibfk_3` FOREIGN KEY (`owner_organization_id`) REFERENCES `organization` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table project_masjed_type_details_locale
# ------------------------------------------------------------

DROP TABLE IF EXISTS `project_masjed_type_details_locale`;

CREATE TABLE `project_masjed_type_details_locale` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Required, Text Field, Min:3, Max: 50',
  `default_value` varchar(255) NOT NULL DEFAULT '' COMMENT 'Required, Text Field, Min:3, Max: 50',
  `locale_id` int(11) unsigned NOT NULL,
  `project_id` int(11) unsigned NOT NULL COMMENT 'From Session',
  `project_masjed_type_details_id` int(11) unsigned NOT NULL COMMENT 'From Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table project_masjed_construction_type
# - Wood
# - Rock
# ------------------------------------------------------------

DROP TABLE IF EXISTS `project_masjed_construction_type`;

CREATE TABLE `project_masjed_construction_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `published` enum('Yes', 'No') COLLATE utf8_bin NOT NULL DEFAULT 'Yes' COMMENT 'Required, DropDownList',
  `country_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table project_masjed_construction_type_locale
# ------------------------------------------------------------

DROP TABLE IF EXISTS `project_masjed_construction_type_locale`;

CREATE TABLE `project_masjed_construction_type_locale` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT 'Required, Text Field, Min:3, Max:100',
  `description` mediumtext NOT NULL DEFAULT '' COMMENT 'Optional, Text Field, Min:0, Max: 2048',
  `locale_id` int(11) unsigned NOT NULL,
  `project_masjed_construction_type_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table project_masjed_furniture_type
# - Carpet
# - Planet
# ------------------------------------------------------------

DROP TABLE IF EXISTS `project_masjed_furniture_type`;

CREATE TABLE `project_masjed_furniture_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `published` enum('Yes', 'No') COLLATE utf8_bin NOT NULL DEFAULT 'Yes' COMMENT 'Required, DropDownList',
  `country_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table project_masjed_furniture_type_locale
# ------------------------------------------------------------

DROP TABLE IF EXISTS `project_masjed_furniture_type_locale`;

CREATE TABLE `project_masjed_furniture_type_locale` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT 'Required, Text Field, Min:3, Max:100',
  `description` mediumtext NOT NULL DEFAULT '' COMMENT 'Optional, Text Field, Min:0, Max: 2048',
  `locale_id` int(11) unsigned NOT NULL,
  `project_masjed_furniture_type_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# ////////////////////////////////////////////////////////////
# 
# Payment Tables
# 
# \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\


# Dump of table payment_method
# - Offline => payments being done offline between the organization and the donor, not through the website
# - Cash
# - Visa
# - Credit
# - Card
# - Amex
# - Migs
# - PayPal
# - SMS messages / phone calls
# ------------------------------------------------------------

DROP TABLE IF EXISTS `payment_method`;

CREATE TABLE `payment_method` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `published` enum('Yes', 'No') COLLATE utf8_bin NOT NULL DEFAULT 'Yes' COMMENT 'Required, DropDownList',
  `country_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


# Dump of table payment_method_locale
# ------------------------------------------------------------

DROP TABLE IF EXISTS `payment_method_locale`;

CREATE TABLE `payment_method_locale` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `locale_id` int(11) unsigned NOT NULL,
  `payment_method_id` int(11) unsigned NOT NULL COMMENT 'From Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table payment_method_configuration
# - env (dev | live)
# - username
# - pasword
# - account id
# - url
# - push api
# - token
# - refund api
# ------------------------------------------------------------

DROP TABLE IF EXISTS `payment_method_configuration`;

CREATE TABLE `payment_method_configuration` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `config_key` varchar(1024) NOT NULL,
  `config_value` varchar(1024) NOT NULL,
  `locale_id` int(11) unsigned NOT NULL,
  `environment` enum('DEV', 'STG', 'LIVE') NOT NULL DEFAULT 'LIVE',
  `payment_method_id` int(11) unsigned NOT NULL COMMENT 'From Session',
  `country_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table payment
# ------------------------------------------------------------

DROP TABLE IF EXISTS `payment`;

CREATE TABLE `payment` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `donor_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `organization_branch_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `hash_id` varchar(255) NOT NULL COMMENT 'FROM Session',
  `currency` varchar(3) COLLATE utf8_bin NOT NULL DEFAULT 'USD',
  `currency_exchange_rate_id` int(11) unsigned NOT NULL COMMENT 'Required, DropDownList',
  `amount` float unsigned NOT NULL COMMENT 'Optional, Text Field, Min:0.1',
  `status` enum('initatied', 'success', 'failed', 'uncertain') NOT NULL DEFAULT 'initatied' COMMENT 'Required, DropDownList',
  `payment_method_id` int(11) unsigned NOT NULL COMMENT 'Required, DropDownList',
  `country_id` int(11) unsigned NOT NULL COMMENT 'Required, DropDownList',
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table payment_offline_details
# ------------------------------------------------------------

DROP TABLE IF EXISTS `payment_offline_details`;

CREATE TABLE `payment_offline_details` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `payment_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `received_by` varchar(255) NOT NULL COMMENT 'FROM Session',
  `currency` varchar(3) COLLATE utf8_bin NOT NULL DEFAULT 'USD',
  `amount` float unsigned NOT NULL COMMENT 'Optional, Text Field, Min:0.1',
  `collection_type` enum('Cash', 'Check', 'Machine') NOT NULL DEFAULT 'Cash' COMMENT 'Required, DropDownList',
  `collection_currency` varchar(3) COLLATE utf8_bin NOT NULL DEFAULT 'USD',
  `currency_exchange_rate_id` int(11) unsigned NOT NULL COMMENT 'Required, DropDownList',
  `date_of_collection` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table payment_cash_details
# ------------------------------------------------------------

DROP TABLE IF EXISTS `payment_cash_details`;

CREATE TABLE `payment_cash_details` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `payment_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `received_by` varchar(255) NOT NULL COMMENT 'FROM Session',
  `currency` varchar(3) COLLATE utf8_bin NOT NULL DEFAULT 'USD',
  `amount` float unsigned NOT NULL COMMENT 'Optional, Text Field, Min:0.1',
  `collection_type` enum('Cash', 'Check', 'Machine') NOT NULL DEFAULT 'Cash' COMMENT 'Required, DropDownList',
  `collection_currency` varchar(3) COLLATE utf8_bin NOT NULL DEFAULT 'USD',
  `currency_exchange_rate_id` int(11) unsigned NOT NULL COMMENT 'Required, DropDownList',
  `date_of_collection` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table payment_processing_fees
# ------------------------------------------------------------

DROP TABLE IF EXISTS `payment_processing_fees`;

CREATE TABLE `payment_processing_fees` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `payment_method_id` int(11) unsigned NOT NULL COMMENT 'Required, DropDownList',
  `country_id` int(11) unsigned NOT NULL COMMENT 'Required, DropDownList',
  `organization_id` int(11) unsigned NOT NULL COMMENT 'Required, DropDownList',
  `fees` float unsigned NOT NULL COMMENT 'Optional, Text Field, Min:0.1',
  `currency` varchar(3) COLLATE utf8_bin NOT NULL DEFAULT 'USD',
  `status` enum('Active', 'Inactive') NOT NULL DEFAULT 'Active' COMMENT 'Required, DropDownList',
  `owner_organization_user_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`),
  KEY `payment_processing_fees_owner_organization_id` (`owner_organization_id`),
  CONSTRAINT `payment_processing_fees_ibfk_1` FOREIGN KEY (`owner_organization_id`) REFERENCES `organization` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# ////////////////////////////////////////////////////////////
# 
# Accounting Tables
# 
# \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\


# Dump of table gl_account_type
# - Assets
# - Liability
# - Expenses
# - Equity
# - Revenue
# ------------------------------------------------------------

DROP TABLE IF EXISTS `gl_account_type`;

CREATE TABLE `gl_account_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `published` enum('Yes', 'No') NOT NULL DEFAULT 'No',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table gl_account_type_locale
# ------------------------------------------------------------

DROP TABLE IF EXISTS `gl_account_type_locale`;

CREATE TABLE `gl_account_type_locale` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT 'Required, Text Field, Min:3, Max:100',
  `description` mediumtext NOT NULL DEFAULT '' COMMENT 'Optional, Text Field, Min:0, Max: 2048',
  `locale_id` int(11) unsigned NOT NULL,
  `gl_account_type_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table gl_account
# ------------------------------------------------------------

DROP TABLE IF EXISTS `gl_account`;

CREATE TABLE `gl_account` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `sequence` int(11) unsigned NOT NULL,
  `gl_account_type_id` int(11) unsigned NOT NULL,
  `transaction_type` enum('D','C') NOT NULL DEFAULT 'D',
  `parent_id` bigint(20) NOT NULL DEFAULT '0',
  `current_balance` bigint(20) unsigned NOT NULL DEFAULT '0',
  `is_main` tinyint(3) unsigned NOT NULL COMMENT 'FROM Session',
  `is_leaf` tinyint(3) unsigned NOT NULL COMMENT 'FROM Session',
  `organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`),
  KEY `gl_account_type_id` (`gl_account_type_id`),
  CONSTRAINT `gl_account_ibfk_1` FOREIGN KEY (`gl_account_type_id`) REFERENCES `gl_account_type` (`gl_account_type_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table gl_account_locale
# ------------------------------------------------------------

DROP TABLE IF EXISTS `gl_account_locale`;

CREATE TABLE `gl_account_locale` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT 'Required, Text Field, Min:3, Max:100',
  `description` mediumtext NOT NULL DEFAULT '' COMMENT 'Optional, Text Field, Min:0, Max: 2048',
  `locale_id` int(11) unsigned NOT NULL,
  `gl_account_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_id` int(11) unsigned NOT NULL COMMENT 'FROM Session',
  `owner_organization_user_id` int(11) unsigned NOT NULL,
  `date_added` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  `date_updated` datetime DEFAULT NULL COMMENT 'To be filled dynamically, Only shows in views',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table transaction_type
# ------------------------------------------------------------

DROP TABLE IF EXISTS `transaction_type`;

CREATE TABLE `transaction_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `transaction_type_name` varchar(50) DEFAULT NULL,
  `parent_transaction_type_id` int(11) unsigned DEFAULT '0',
  `notes` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table transaction
# ------------------------------------------------------------

DROP TABLE IF EXISTS `transaction`;

CREATE TABLE `transaction` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(50) DEFAULT NULL,
  `insertion_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `transaction_type_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `transaction_type_id` (`transaction_type_id`),
  CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`transaction_type_id`) REFERENCES `transaction_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# Dump of table transaction_entries
# ------------------------------------------------------------

DROP TABLE IF EXISTS `transaction_entries`;

CREATE TABLE `transaction_entries` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `transaction_id` int(11) unsigned DEFAULT NULL,
  `transaction_entry_seq` int(11) DEFAULT NULL,
  `debit_credit_flag` enum('D','C') DEFAULT NULL,
  `transaction_amount` int(11) DEFAULT NULL,
  `transaction_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `posting_date` timestamp NULL DEFAULT NULL,
  `gl_account_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `gl_account_id` (`gl_account_id`),
  KEY `transaction_id` (`transaction_id`),
  CONSTRAINT `transaction_entries_ibfk_1` FOREIGN KEY (`gl_account_id`) REFERENCES `gl_account` (`gl_account_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `transaction_entries_ibfk_2` FOREIGN KEY (`transaction_id`) REFERENCES `transaction` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# ////////////////////////////////////////////////////////////
# 
# Social Media Tables
# 
# \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\


/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
