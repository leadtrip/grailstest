package com.weareact

import grails.converters.JSON

class DbStatsController {

    def index() { }

    def getStats() {
        render ( [stat1: 123, stat2: 321] ) as JSON
    }

    def renderTemp() {
        render ( template: 'theTemp', model: [stuff: ['stuff1', 'stuff2', 'stuff3', 'stuff4', 'stuff5']] )
    }
}
