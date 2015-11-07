$additional_boot_config_description="disable HYPER-V"

$bcdeditout=$(bcdedit /copy `{current`} /d "$additional_boot_config_description")

$bcdeditout -match '\{\S+\}'
$guid=$Matches[0]
bcdedit /set $guid hypervisorlaunchtype off
bcdedit /default $guid
