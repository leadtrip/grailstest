<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />

    <script type="text/javascript">
        function showSpinner(visible) {
            if (visible) $('#spinner').show();
            else $('#spinner').hide();
        }

        $(document).ready(function(){
            $( '#dbStats' ).click( function() {
                $.ajax( {
                    url: "${g.createLink( controller: 'dbStats', action: 'getStats')}",
                    type: "get",
                    timeout: 5000,
                    success: function ( data ) {
                        $( '#resultDiv' ).html( data )
                    },
                    error: function(jqXHR, textStatus, errorThrown) {
                        $( "#resultDiv" ).addClass( 'alert alert-danger' ).text( 'Unable to get stats ' + errorThrown )
                    },
                    beforeSend: function() { showSpinner( true ) },
                    complete: function() { showSpinner( false ) }
                } );
            })

            $( '#renderTemp' ).click( function() {
                $.ajax( {
                    url: "${g.createLink( controller: 'dbStats', action: 'renderTemp')}",
                    type: "get",
                    success: function ( data ) {
                        $( '#resultDiv' ).html( data )
                    },
                    error: function(jqXHR, textStatus, errorThrown) {
                        console.log( 'Error rendering template ' + errorThrown )
                    }
                } );
            })
        });
    </script>
</head>
<body>

<asset:image src="spinner.gif" id="spinner" style="display: none" />

<div id="resultDiv"></div>

<g:form>
    <button type='button' id="dbStats">Get DB stats</button>
    <button type="button" id="renderTemp">Render template</button>
</g:form>

</body>