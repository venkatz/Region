#============================================================================================
#Update variable values below before running the Deploy_ETL.ps1
#Examples of variables are shown where appropriate
#NOTE: Double quote all text
#============================================================================================

#============================================================================================
#Version
#--------------------------------------------------------------------------------------------
$env:CONFIG_Version="7.3.2"
#============================================================================================

#============================================================================================
#Location of the installation software folder
#EXAMPLE $env:CONFIG_SoftwareFolder="C:\7.3.2 Proper\ETL"
#--------------------------------------------------------------------------------------------
$env:CONFIG_SoftwareFolder="C:\7.3.2 Proper\ETL"
#============================================================================================

#============================================================================================
#Location of the InsurerAnalytics ETL working folder
#EXAMPLE $env:CONFIG_RootWorkingFolder="C:\InsurerAnalytics"
#------------------------------------------------------------------------------------------
$env:CONFIG_RootWorkingFolder="C:\InsurerAnalytics"
#============================================================================================

#==========================================================================================
#Source system type: either DB2 or SQL
#EXAMPLE $env:CONFIG_SourceSystemType="SQL" or "DB2"
#------------------------------------------------------------------------------------------
$env:CONFIG_SourceSystemType="SQL"
#==========================================================================================

#==========================================================================================
#Indicates whether the system will perform a full load or delta load with each run of the ETL - 1 = deltas, 0 = full load
#EXAMPLE $env:CONFIG_EnableDeltas="1"
#------------------------------------------------------------------------------------------
$env:CONFIG_EnableDeltas="1"
#==========================================================================================

#============================================================================================
#Name of the Data Warehouse Server including the Instance Name if applicable
#EXAMPLE $env:CONFIG_DataWarehouseServer="servername"
#--------------------------------------------------------------------------------------------
$env:CONFIG_DataWarehouseServer="UKCH7034"
#============================================================================================

#============================================================================================
#Port number of the Data Warehouse SQL Server Instance ("0" for dynamic port allocation)
#EXAMPLE $env:CONFIG_DataWarehouseServerPort="1433"
#------------------------------------------------------------------------------------------
$env:CONFIG_DataWarehouseServerPort="1433"
#============================================================================================

#==========================================================================================
#Name of the Data Warehouse database
#EXAMPLE $env:CONFIG_DataWarehouseDatabase="InsurerAnalyticsDataWarehouse"
#------------------------------------------------------------------------------------------
$env:CONFIG_DataWarehouseDatabase="InsurerAnalyticsDataWarehouse"
#==========================================================================================

#============================================================================================
#Name of the SSISDB folder where the SSIS packages will be deployed - packages are deployed to the Data Warehouse Server
#--------------------------------------------------------------------------------------------
#EXAMPLE $env:CONFIG_SSISCatalogFolder="Base"
#--------------------------------------------------------------------------------------------
$env:CONFIG_SSISCatalogFolder="Base"
#============================================================================================

#============================================================================================
#Name of the Analysis Server including the Instance Name if applicable
#EXAMPLE $env:CONFIG_AnalysisServer="UKCH7034"
#--------------------------------------------------------------------------------------------
$env:CONFIG_AnalysisServer="UKCH7034"
#============================================================================================

#============================================================================================
#Name of the Analysis Services Cube Database
#EXAMPLE $env:CONFIG_AnalysisDatabase="InsurerAnalytics"
#--------------------------------------------------------------------------------------------
$env:CONFIG_AnalysisDatabase="InsurerAnalytics"
#============================================================================================

#============================================================================================
#Name of the Analysis Services Audit Cube Database
#EXAMPLE $env:CONFIG_AnalysisAuditDatabase="InsurerAnalyticsAudit"
#--------------------------------------------------------------------------------------------
$env:CONFIG_AnalysisAuditDatabase="InsurerAnalyticsAudit"
#============================================================================================

#==========================================================================================
#Name of the Insurer Analytics application database server name including the instance name if applicable
#EXAMPLE $env:CONFIG_ApplicationServerName="UKCH7034"
#------------------------------------------------------------------------------------------
$env:CONFIG_ApplicationServer="UKCH7034"
#==========================================================================================

#==========================================================================================
#Name of the Insurer Analytics application database name
#EXAMPLE $env:CONFIG_ApplicationCatalog="InsurerAnalyticsApp_Prod"
#------------------------------------------------------------------------------------------
$env:CONFIG_ApplicationDatabase="InsurerAnalyticsApp_Prod"
#==========================================================================================

#==========================================================================================
#Indicates the calendar day (number) of the fiscal year start date - format required: DD
#EXAMPLE $env:CONFIG_FinancialPeriodDayStart="01"
#------------------------------------------------------------------------------------------
$env:CONFIG_FinancialPeriodDayStart="01"
#==========================================================================================

#==========================================================================================
#Indicates the calendar month (number) of the fiscal year start date - format required: MM
#EXAMPLE $env:CONFIG_FinancialPeriodMonthStart="01"
#------------------------------------------------------------------------------------------
$env:CONFIG_FinancialPeriodMonthStart="01"
#==========================================================================================

#==========================================================================================
#Location of the BCPExec package. This is used to generate extracts from Insurer based systems
#EXAMPLE $env:CONFIG_SQLBcpExecutable="C:\Program Files\Microsoft SQL Server\110\Tools\Binn\bcp.exe"
#------------------------------------------------------------------------------------------
$env:CONFIG_SQLBcpExecutable="C:\Program Files\Microsoft SQL Server\110\Tools\Binn\bcp.exe"
#==========================================================================================

#==========================================================================================
#Location of the SQL Package Utility folder - used for SSIS package deployment
#EXAMPLE $env:CONFIG_SQLPackageUtilityFolder="C:\Program Files (x86)\Microsoft SQL Server\110\DTS\Binn"
#------------------------------------------------------------------------------------------
$env:CONFIG_SQLPackageUtilityFolder="C:\Program Files (x86)\Microsoft SQL Server\110\DTS\Binn"
#==========================================================================================