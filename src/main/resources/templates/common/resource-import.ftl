<#ftl output_format="HTML" strip_whitespace=true>
<#macro cssRef url>
    <link rel="stylesheet" type="text/css" href="${basePath}${urls.getForLookupPath(url)}"/>
</#macro>
<#macro jsRef url>
    <script type="text/javascript" src="${basePath}${urls.getForLookupPath(url)}"></script>
</#macro>
<#macro baseUrl url>
    ${basePath}${url}
</#macro>