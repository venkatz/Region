#============================================================================================
#This script will run the environment script ETL_Deployment_Configuration.ps1 then execute
#ETL_Deployment.ps1. The log file will have the process pid appended
#============================================================================================

#--
#-- define logs
#--
$LogFile=".\ETL_Deployment$pid.log"
$ValidationLogFile=".\ETL_Validate_Configuration$pid.log"
#--
#-- declare configuration
#--
.\ETL_Deployment_Configuration.ps1

#--
#-- execute vaklidation script
#--
Write-Host "-----------------------------------------------------------------------------------------"
Write-Host "Validating configuration, please wait. Quit if errors are encountered and revise values."
Write-Host "-----------------------------------------------------------------------------------------"
.\ETL_Validate_Configuration.ps1 2>&1 | Tee-Object -file $ValidationLogFile
$RC=$?

#--
#-- test validation result
#--
if ( $RC -eq 0 ) #do not proceed
{
	Write-Host ""
	Write-Host "-----------------------------------------------------------------------------------------"
    Write-Host "Configuration validation failed or user aborted installation."
	Write-Host "-----------------------------------------------------------------------------------------"
    exit 1
}

#--
#-- run installer
#--
Write-Host ""
.\ETL_Deployment.ps1 2>&1 | Tee-Object -file $LogFile
Write-Host "Check log $LogFile" 

