$sites = get-sposite -template "teamchannel#0"
foreach ($site in $sites) 
{
    $x=get-sposite -identity $site.url -detail;
    Write-Output ""
    Write-Output "GroupID: $($x.RelatedGroupId.Guid)"
    Write-Output "URL: $($x.url)"
    Write-Output "Title: $($x.Title)"
    Write-Output "Owner: $($x.Owner)"
}
