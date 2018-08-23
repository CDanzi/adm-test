/*
Table DDLs
*/
CREATE TABLE IF NOT EXISTS `idhCurrency` (
	`CurrencyUniqueIdentifier` INT NOT NULL,
	`ISOAlphaThreeCurrencyCode` CHAR(3) NOT NULL,
	`ISONumericThreeCurrencyCode` CHAR(3) NOT NULL,
	`CurrencyName` VARCHAR(50) NOT NULL,
	`ISODecimalPlacesNumber` DECIMAL(19,0) NULL,
	`EffectiveFromDate` DATETIME NULL,
	`EffectiveToDate` DATETIME NULL,
	`CreateTimestamp` DATETIME NOT NULL,
	`CreateByName` VARCHAR(50) NOT NULL,
	`CreateProgramName` VARCHAR(50) NOT NULL,
	`UpdateTimestamp` DATETIME NOT NULL,
	`UpdateByName` VARCHAR(50) NOT NULL,
	`UpdateProgramName` VARCHAR(50) NOT NULL,
	`ISGUpdateTimestamp` DATETIME NOT NULL DEFAULT '1900-01-01 00:00:00',
	`Reserved1` VARCHAR(100) NULL,
	`Reserved2` VARCHAR(100) NULL,
	`Reserved3` VARCHAR(100) NULL,
	`Reserved4` VARCHAR(100) NULL,
	`Reserved5` VARCHAR(100) NULL,
	PRIMARY KEY(`CurrencyUniqueIdentifier`)
);

/*
idhDailyPrice TABLE
*/
CREATE TABLE IF NOT EXISTS `idhDailyPrice` (
`AssetIdentifier` INT NOT NULL,
`PriceUsageCode` CHAR(1) NOT NULL,
`PricePlanCode` VARCHAR(4) NOT NULL,
`PriceDate` DATE NOT NULL,
`Price` NUMERIC(28,8) NULL,
`ReferenceDataProviderCode` VARCHAR(3) NOT NULL,
`PricingExchangeCountryIdentifier` INT NULL,
`PricingExchangeIsoAlphaTwoCountryCode` VARCHAR(2) NULL,
`PricingExchangeTradingCurrencyIdentifier` INT NULL,
`PricingExchangeIsoAlphaThreeTradingCurrencyCode` VARCHAR(3) NULL,
`AuditStatusCode` CHAR(1) NOT NULL,
`UpdatedByName` VARCHAR(8) NOT NULL,
`UpdatedByTimestamp` DATETIME NOT NULL,
`CommentText` CHAR(50) NULL,
`ReservedField2` VARCHAR(100) NULL,
`ReservedField3` VARCHAR(100) NULL,
`ReservedField4` VARCHAR(100) NULL,
`ReservedField5` VARCHAR(100) NULL,
`ReservedField6` VARCHAR(100) NULL,
`ReservedField7` VARCHAR(100) NULL,
`ReservedField8` VARCHAR(100) NULL,
`ReservedField9` VARCHAR(100) NULL,
`ReservedField10` VARCHAR(100) NULL,
PRIMARY KEY(`AssetIdentifier`,`PriceUsageCode`,`PricePlanCode`,`PriceDate`)
);
