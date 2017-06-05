<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
    <g:set var="entityName" value="${message(code: 'author.label', default: 'Author')}" />
    <title><g:message code="default.list.label" args="[entityName]" /></title>
    <script type="text/javascript">
        $( document ).ready( function() {
            $( '#mySelect' ).on( 'change' , function (event) {
                $.ajax({
                    url: "/author/myAction",
                    type: "POST",
                    data: $( '#myForm' ).serialize(),
                    success: function ( data ) {
                        $( '#myDiv' ).html( data );
                    },
                    error: function( j, status, eThrown ) { console.log( 'Error ' + eThrown ) }
                });
            });
        });
    </script>
</head>
<body>
<a href="#list-author" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
    </ul>
</div>

<div class="content">

    <g:form name="myForm">
        <g:select name="mySelect" from="${['A', 'B', 'C']}" />
    </g:form>

    <div id="myDiv"></div>

</div>
</body>
</html>
