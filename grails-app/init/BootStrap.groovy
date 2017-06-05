import com.weareact.Author

class BootStrap {

    def init = { servletContext ->
        new Author( name: 'Dave', email: 'yo' ).save( failOnError: true )
    }

    def destroy = {
    }
}
