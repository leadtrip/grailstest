package com.weareact

class Author {
    def String name
    def String email

    static constraints = {
        name nullable: false, maxSize: 50
        email nullable: true
    }

    static mapping = {
        name column: 'TheName'
    }
}