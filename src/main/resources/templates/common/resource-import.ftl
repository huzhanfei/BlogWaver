<#ftl output_format="HTML" strip_whitespace=true>
<#macro cssRefV url>
    <link rel="stylesheet" type="text/css" href="${basePath}${urls.getForLookupPath(url)}"/>
</#macro>
<#macro jsRefV url>
    <script type="text/javascript" src="${basePath}${urls.getForLookupPath(url)}"></script>
</#macro>
<#macro cssRef url>
    <link rel="stylesheet" type="text/css" href="${basePath}${url}"/>
</#macro>
<#macro jsRef url>
    <script type="text/javascript" src="${basePath}${url}"></script>
</#macro>
<#macro baseUrl url>
    ${basePath}${url}
</#macro>