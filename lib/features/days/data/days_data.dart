// Copyright 2022 Nikola Grujic. All rights reserved.
// Use of this source code is governed by a GNU-style license that can be
// found in the LICENSE file.

/// Plans json data
const String daysData = '''
[{
  "_id": {
    "oid": "603908c043361ead4d5ae538"
  },
  "englishName": "Week 1, Day 1",
  "italianName": "Settimana 1, Giorno 1",
  "frenchName": "Semaine 1, Jour 1",
  "serbianName": "Prva nedelja, dan 1",
  "dutchName": "Week 1, Dag 1",
  "planID": "603908c043361ead4d5ae537",
  "orderNumber": 1
},{
  "_id": {
    "oid": "603908c043361ead4d5ae544"
  },
  "englishName": "Week 1, Day 2",
  "italianName": "Settimana 1, Giorno 2",
  "frenchName": "Semaine 1, Jour 2",
  "serbianName": "Prva nedelja, dan 2",
  "dutchName": "Week 1, Dag 2",
  "planID": "603908c043361ead4d5ae537",
  "orderNumber": 2
},{
  "_id": {
    "oid": "603908c043361ead4d5ae550"
  },
  "englishName": "Week 1, Day 3",
  "italianName": "Settimana 1, Giorno 3",
  "frenchName": "Semaine 1, Jour 3",
  "serbianName": "Prva nedelja, dan 3",
  "dutchName": "Week 1, Dag 3",
  "planID": "603908c043361ead4d5ae537",
  "orderNumber": 3
},{
  "_id": {
    "oid": "603908c043361ead4d5ae558"
  },
  "englishName": "Week 2, Day 1",
  "italianName": "Settimana 2, Giorno 1",
  "frenchName": "Semaine 2, Jour 1",
  "serbianName": "Druga nedelja, dan 1",
  "dutchName": "Week 2, Dag 1",
  "planID": "603908c043361ead4d5ae537",
  "orderNumber": 4
},{
  "_id": {
    "oid": "603908c043361ead4d5ae560"
  },
  "englishName": "Week 2, Day 2",
  "italianName": "Settimana 2, Giorno 2",
  "frenchName": "Semaine 2, Jour 2",
  "serbianName": "Druga nedelja, dan 2",
  "dutchName": "Week 2, Dag 2",
  "planID": "603908c043361ead4d5ae537",
  "orderNumber": 5
},{
  "_id": {
    "oid": "603908c043361ead4d5ae568"
  },
  "englishName": "Week 2, Day 3",
  "italianName": "Settimana 2, Giorno 3",
  "frenchName": "Semaine 2, Jour 3",
  "serbianName": "Druga nedelja, dan 3",
  "dutchName": "Week 2, Dag 3",
  "planID": "603908c043361ead4d5ae537",
  "orderNumber": 6
},{
  "_id": {
    "oid": "603908c043361ead4d5ae570"
  },
  "englishName": "Week 3, Day 1",
  "italianName": "Settimana 3, Giorno 1",
  "frenchName": "Semaine 3, Jour 1",
  "serbianName": "Treca nedelja, dan 1",
  "dutchName": "Week 3, Dag 1",
  "planID": "603908c043361ead4d5ae537",
  "orderNumber": 7
},{
  "_id": {
    "oid": "603908c043361ead4d5ae576"
  },
  "englishName": "Week 3, Day 2",
  "italianName": "Settimana 3, Giorno 2",
  "frenchName": "Semaine 3, Jour 2",
  "serbianName": "Treca nedelja, dan 2",
  "dutchName": "Week 3, Dag 2",
  "planID": "603908c043361ead4d5ae537",
  "orderNumber": 8
},{
  "_id": {
    "oid": "603908c043361ead4d5ae57c"
  },
  "englishName": "Week 3, Day 3",
  "italianName": "Settimana 3, Giorno 3",
  "frenchName": "Semaine 3, Jour 3",
  "serbianName": "Treca nedelja, dan 3",
  "dutchName": "Week 3, Dag 3",
  "planID": "603908c043361ead4d5ae537",
  "orderNumber": 9
},{
  "_id": {
    "oid": "603908c043361ead4d5ae582"
  },
  "englishName": "Week 4, Day 1",
  "italianName": "Settimana 4, Giorno 1",
  "frenchName": "Semaine 4, Jour 1",
  "serbianName": "Cetvrta nedelja, dan 1",
  "dutchName": "Week 4, Dag 1",
  "planID": "603908c043361ead4d5ae537",
  "orderNumber": 10
},{
  "_id": {
    "oid": "603908c043361ead4d5ae588"
  },
  "englishName": "Week 4, Day 2",
  "italianName": "Settimana 4, Giorno 2",
  "frenchName": "Semaine 4, Jour 2",
  "serbianName": "Cetvrta nedelja, dan 2",
  "dutchName": "Week 4, Dag 2",
  "planID": "603908c043361ead4d5ae537",
  "orderNumber": 11
},{
  "_id": {
    "oid": "603908c043361ead4d5ae58e"
  },
  "englishName": "Week 4, Day 3",
  "italianName": "Settimana 4, Giorno 3",
  "frenchName": "Semaine 4, Jour 3",
  "serbianName": "Cetvrta nedelja, dan 3",
  "dutchName": "Week 4, Dag 3",
  "planID": "603908c043361ead4d5ae537",
  "orderNumber": 12
},{
  "_id": {
    "oid": "603908c043361ead4d5ae594"
  },
  "englishName": "Week 5, Day 1",
  "italianName": "Settimana 5, Giorno 1",
  "frenchName": "Semaine 5, Jour 1",
  "serbianName": "Peta nedelja, dan 1",
  "dutchName": "Week 5, Dag 1",
  "planID": "603908c043361ead4d5ae537",
  "orderNumber": 13
},{
  "_id": {
    "oid": "603908c043361ead4d5ae598"
  },
  "englishName": "Week 5, Day 2",
  "italianName": "Settimana 5, Giorno 2",
  "frenchName": "Semaine 5, Jour 2",
  "serbianName": "Peta nedelja, dan 2",
  "dutchName": "Week 5, Dag 2",
  "planID": "603908c043361ead4d5ae537",
  "orderNumber": 14
},{
  "_id": {
    "oid": "603908c043361ead4d5ae59c"
  },
  "englishName": "Week 5, Day 3",
  "italianName": "Settimana 5, Giorno 3",
  "frenchName": "Semaine 5, Jour 3",
  "serbianName": "Peta nedelja, dan 3",
  "dutchName": "Week 5, Dag 3",
  "planID": "603908c043361ead4d5ae537",
  "orderNumber": 15
},{
  "_id": {
    "oid": "603908c043361ead4d5ae5a0"
  },
  "englishName": "Week 6, Day 1",
  "italianName": "Settimana 6, Giorno 1",
  "frenchName": "Semaine 6, Jour 1",
  "serbianName": "Sesta nedelja, dan 1",
  "dutchName": "Week 6, Dag 1",
  "planID": "603908c043361ead4d5ae537",
  "orderNumber": 16
},{
  "_id": {
    "oid": "603908c043361ead4d5ae5a3"
  },
  "englishName": "Week 1, Day 1",
  "italianName": "Settimana 1, Giorno 1",
  "frenchName": "Semaine 1, Jour 1",
  "serbianName": "Prva nedelja, dan 1",
  "dutchName": "Week 1, Dag 1",
  "planID": "603908c043361ead4d5ae5a2",
  "orderNumber": 1
},{
  "_id": {
    "oid": "603908c043361ead4d5ae5b0"
  },
  "englishName": "Week 1, Day 2",
  "italianName": "Settimana 1, Giorno 2",
  "frenchName": "Semaine 1, Jour 2",
  "serbianName": "Prva nedelja, dan 2",
  "dutchName": "Week 1, Dag 2",
  "planID": "603908c043361ead4d5ae5a2",
  "orderNumber": 2
},{
  "_id": {
    "oid": "603908c043361ead4d5ae5c1"
  },
  "englishName": "Week 1, Day 3",
  "italianName": "Settimana 1, Giorno 3",
  "frenchName": "Semaine 1, Jour 3",
  "serbianName": "Prva nedelja, dan 3",
  "dutchName": "Week 1, Dag 3",
  "planID": "603908c043361ead4d5ae5a2",
  "orderNumber": 3
},{
  "_id": {
    "oid": "603908c043361ead4d5ae5d2"
  },
  "englishName": "Week 2, Day 1",
  "italianName": "Settimana 2, Giorno 1",
  "frenchName": "Semaine 2, Jour 1",
  "serbianName": "Druga nedelja, dan 1",
  "dutchName": "Week 2, Dag 1",
  "planID": "603908c043361ead4d5ae5a2",
  "orderNumber": 4
},{
  "_id": {
    "oid": "603908c043361ead4d5ae5df"
  },
  "englishName": "Week 2, Day 2",
  "italianName": "Settimana 2, Giorno 2",
  "frenchName": "Semaine 2, Jour 2",
  "serbianName": "Druga nedelja, dan 2",
  "dutchName": "Week 2, Dag 2",
  "planID": "603908c043361ead4d5ae5a2",
  "orderNumber": 5
},{
  "_id": {
    "oid": "603908c043361ead4d5ae5ec"
  },
  "englishName": "Week 2, Day 3",
  "italianName": "Settimana 2, Giorno 3",
  "frenchName": "Semaine 2, Jour 3",
  "serbianName": "Druga nedelja, dan 3",
  "dutchName": "Week 2, Dag 3",
  "planID": "603908c043361ead4d5ae5a2",
  "orderNumber": 6
},{
  "_id": {
    "oid": "603908c043361ead4d5ae5f9"
  },
  "englishName": "Week 3, Day 1",
  "italianName": "Settimana 3, Giorno 1",
  "frenchName": "Semaine 3, Jour 1",
  "serbianName": "Treca nedelja, dan 1",
  "dutchName": "Week 3, Dag 1",
  "planID": "603908c043361ead4d5ae5a2",
  "orderNumber": 7
},{
  "_id": {
    "oid": "603908c043361ead4d5ae602"
  },
  "englishName": "Week 3, Day 2",
  "italianName": "Settimana 3, Giorno 2",
  "frenchName": "Semaine 3, Jour 2",
  "serbianName": "Treca nedelja, dan 2",
  "dutchName": "Week 3, Dag 2",
  "planID": "603908c043361ead4d5ae5a2",
  "orderNumber": 8
},{
  "_id": {
    "oid": "603908c043361ead4d5ae60b"
  },
  "englishName": "Week 3, Day 3",
  "italianName": "Settimana 3, Giorno 3",
  "frenchName": "Semaine 3, Jour 3",
  "serbianName": "Treca nedelja, dan 3",
  "dutchName": "Week 3, Dag 3",
  "planID": "603908c043361ead4d5ae5a2",
  "orderNumber": 9
},{
  "_id": {
    "oid": "603908c043361ead4d5ae614"
  },
  "englishName": "Week 4, Day 1",
  "italianName": "Settimana 4, Giorno 1",
  "frenchName": "Semaine 4, Jour 1",
  "serbianName": "Cetvrta nedelja, dan 1",
  "dutchName": "Week 4, Dag 1",
  "planID": "603908c043361ead4d5ae5a2",
  "orderNumber": 10
},{
  "_id": {
    "oid": "603908c043361ead4d5ae61d"
  },
  "englishName": "Week 4, Day 2",
  "italianName": "Settimana 4, Giorno 2",
  "frenchName": "Semaine 4, Jour 2",
  "serbianName": "Cetvrta nedelja, dan 2",
  "dutchName": "Week 4, Dag 2",
  "planID": "603908c043361ead4d5ae5a2",
  "orderNumber": 11
},{
  "_id": {
    "oid": "603908c043361ead4d5ae626"
  },
  "englishName": "Week 4, Day 3",
  "italianName": "Settimana 4, Giorno 3",
  "frenchName": "Semaine 4, Jour 3",
  "serbianName": "Cetvrta nedelja, dan 3",
  "dutchName": "Week 4, Dag 3",
  "planID": "603908c043361ead4d5ae5a2",
  "orderNumber": 12
},{
  "_id": {
    "oid": "603908c043361ead4d5ae62f"
  },
  "englishName": "Week 5, Day 1",
  "italianName": "Settimana 5, Giorno 1",
  "frenchName": "Semaine 5, Jour 1",
  "serbianName": "Peta nedelja, dan 1",
  "dutchName": "Week 5, Dag 1",
  "planID": "603908c043361ead4d5ae5a2",
  "orderNumber": 13
},{
  "_id": {
    "oid": "603908c043361ead4d5ae635"
  },
  "englishName": "Week 5, Day 2",
  "italianName": "Settimana 5, Giorno 2",
  "frenchName": "Semaine 5, Jour 2",
  "serbianName": "Peta nedelja, dan 2",
  "dutchName": "Week 5, Dag 2",
  "planID": "603908c043361ead4d5ae5a2",
  "orderNumber": 14
},{
  "_id": {
    "oid": "603908c043361ead4d5ae63b"
  },
  "englishName": "Week 5, Day 3",
  "italianName": "Settimana 5, Giorno 3",
  "frenchName": "Semaine 5, Jour 3",
  "serbianName": "Peta nedelja, dan 3",
  "dutchName": "Week 5, Dag 3",
  "planID": "603908c043361ead4d5ae5a2",
  "orderNumber": 15
},{
  "_id": {
    "oid": "603908c043361ead4d5ae63f"
  },
  "englishName": "Week 6, Day 1",
  "italianName": "Settimana 6, Giorno 1",
  "frenchName": "Semaine 6, Jour 1",
  "serbianName": "Sesta nedelja, dan 1",
  "dutchName": "Week 6, Dag 1",
  "planID": "603908c043361ead4d5ae5a2",
  "orderNumber": 16
},{
  "_id": {
    "oid": "603908c043361ead4d5ae643"
  },
  "englishName": "Week 6, Day 2",
  "italianName": "Settimana 6, Giorno 2",
  "frenchName": "Semaine 6, Jour 2",
  "serbianName": "Sesta nedelja, dan 2",
  "dutchName": "Week 6, Dag 2",
  "planID": "603908c043361ead4d5ae5a2",
  "orderNumber": 17
},{
  "_id": {
    "oid": "603908c043361ead4d5ae647"
  },
  "englishName": "Week 6, Day 3",
  "italianName": "Settimana 6, Giorno 3",
  "frenchName": "Semaine 6, Jour 3",
  "serbianName": "Sesta nedelja, dan 3",
  "dutchName": "Week 6, Dag 3",
  "planID": "603908c043361ead4d5ae5a2",
  "orderNumber": 18
},{
  "_id": {
    "oid": "603908c043361ead4d5ae64b"
  },
  "englishName": "Week 7, Day 1",
  "italianName": "Settimana 7, Giorno 1",
  "frenchName": "Semaine 7, Jour 1",
  "serbianName": "Sedma nedelja, dan 1",
  "dutchName": "Week 7, Dag 1",
  "planID": "603908c043361ead4d5ae5a2",
  "orderNumber": 19
},{
  "_id": {
    "oid": "603908c043361ead4d5ae64d"
  },
  "englishName": "Week 7, Day 2",
  "italianName": "Settimana 7, Giorno 2",
  "frenchName": "Semaine 7, Jour 2",
  "serbianName": "Sedma nedelja, dan 2",
  "dutchName": "Week 7, Dag 2",
  "planID": "603908c043361ead4d5ae5a2",
  "orderNumber": 20
},{
  "_id": {
    "oid": "603908c043361ead4d5ae64f"
  },
  "englishName": "Week 7, Day 3",
  "italianName": "Settimana 7, Giorno 3",
  "frenchName": "Semaine 7, Jour 3",
  "serbianName": "Sedma nedelja, dan 3",
  "dutchName": "Week 7, Dag 3",
  "planID": "603908c043361ead4d5ae5a2",
  "orderNumber": 21
},{
  "_id": {
    "oid": "603908c043361ead4d5ae651"
  },
  "englishName": "Week 8, Day 1",
  "italianName": "Settimana 8, Giorno 1",
  "frenchName": "Semaine 8, Jour 1",
  "serbianName": "Osma nedelja, dan 1",
  "dutchName": "Week 8, Dag 1",
  "planID": "603908c043361ead4d5ae5a2",
  "orderNumber": 22
},{
  "_id": {
    "oid": "603908c043361ead4d5ae653"
  },
  "englishName": "Week 8, Day 2",
  "italianName": "Settimana 8, Giorno 2",
  "frenchName": "Semaine 8, Jour 2",
  "serbianName": "Osma nedelja, dan 2",
  "dutchName": "Week 8, Dag 2",
  "planID": "603908c043361ead4d5ae5a2",
  "orderNumber": 23
},{
  "_id": {
    "oid": "603908c043361ead4d5ae655"
  },
  "englishName": "Week 8, Day 3",
  "italianName": "Settimana 8, Giorno 3",
  "frenchName": "Semaine 8, Jour 3",
  "serbianName": "Osma nedelja, dan 3",
  "dutchName": "Week 8, Dag 3",
  "planID": "603908c043361ead4d5ae5a2",
  "orderNumber": 24
},{
  "_id": {
    "oid": "603908c043361ead4d5ae658"
  },
  "englishName": "Week 1, Day 1",
  "italianName": "Settimana 1, Giorno 1",
  "frenchName": "Semaine 1, Jour 1",
  "serbianName": "Prva nedelja, dan 1",
  "dutchName": "Week 1, Dag 1",
  "planID": "603908c043361ead4d5ae657",
  "orderNumber": 1
},{
  "_id": {
    "oid": "603908c043361ead4d5ae65c"
  },
  "englishName": "Week 1, Day 2",
  "italianName": "Settimana 1, Giorno 2",
  "frenchName": "Semaine 1, Jour 2",
  "serbianName": "Prva nedelja, dan 2",
  "dutchName": "Week 1, Dag 2",
  "planID": "603908c043361ead4d5ae657",
  "orderNumber": 2
},{
  "_id": {
    "oid": "603908c043361ead4d5ae660"
  },
  "englishName": "Week 1, Day 3",
  "italianName": "Settimana 1, Giorno 3",
  "frenchName": "Semaine 1, Jour 3",
  "serbianName": "Prva nedelja, dan 3",
  "dutchName": "Week 1, Dag 3",
  "planID": "603908c043361ead4d5ae657",
  "orderNumber": 3
},{
  "_id": {
    "oid": "603908c043361ead4d5ae664"
  },
  "englishName": "Week 2, Day 1",
  "italianName": "Settimana 2, Giorno 1",
  "frenchName": "Semaine 2, Jour 1",
  "serbianName": "Druga nedelja, dan 1",
  "dutchName": "Week 2, Dag 1",
  "planID": "603908c043361ead4d5ae657",
  "orderNumber": 4
},{
  "_id": {
    "oid": "603908c043361ead4d5ae66e"
  },
  "englishName": "Week 2, Day 2",
  "italianName": "Settimana 2, Giorno 2",
  "frenchName": "Semaine 2, Jour 2",
  "serbianName": "Druga nedelja, dan 2",
  "dutchName": "Week 2, Dag 2",
  "planID": "603908c043361ead4d5ae657",
  "orderNumber": 5
},{
  "_id": {
    "oid": "603908c043361ead4d5ae678"
  },
  "englishName": "Week 2, Day 3",
  "italianName": "Settimana 2, Giorno 3",
  "frenchName": "Semaine 2, Jour 3",
  "serbianName": "Druga nedelja, dan 3",
  "dutchName": "Week 2, Dag 3",
  "planID": "603908c043361ead4d5ae657",
  "orderNumber": 6
},{
  "_id": {
    "oid": "603908c043361ead4d5ae682"
  },
  "englishName": "Week 3, Day 1",
  "italianName": "Settimana 3, Giorno 1",
  "frenchName": "Semaine 3, Jour 1",
  "serbianName": "Treca nedelja, dan 1",
  "dutchName": "Week 3, Dag 1",
  "planID": "603908c043361ead4d5ae657",
  "orderNumber": 7
},{
  "_id": {
    "oid": "603908c043361ead4d5ae688"
  },
  "englishName": "Week 3, Day 2",
  "italianName": "Settimana 3, Giorno 2",
  "frenchName": "Semaine 3, Jour 2",
  "serbianName": "Treca nedelja, dan 2",
  "dutchName": "Week 3, Dag 2",
  "planID": "603908c043361ead4d5ae657",
  "orderNumber": 8
},{
  "_id": {
    "oid": "603908c043361ead4d5ae68c"
  },
  "englishName": "Week 3, Day 3",
  "italianName": "Settimana 3, Giorno 3",
  "frenchName": "Semaine 3, Jour 3",
  "serbianName": "Treca nedelja, dan 3",
  "dutchName": "Week 3, Dag 3",
  "planID": "603908c043361ead4d5ae657",
  "orderNumber": 9
},{
  "_id": {
    "oid": "603908c043361ead4d5ae690"
  },
  "englishName": "Week 4, Day 1",
  "italianName": "Settimana 4, Giorno 1",
  "frenchName": "Semaine 4, Jour 1",
  "serbianName": "Cetvrta nedelja, dan 1",
  "dutchName": "Week 4, Dag 1",
  "planID": "603908c043361ead4d5ae657",
  "orderNumber": 10
},{
  "_id": {
    "oid": "603908c043361ead4d5ae694"
  },
  "englishName": "Week 4, Day 2",
  "italianName": "Settimana 4, Giorno 2",
  "frenchName": "Semaine 4, Jour 2",
  "serbianName": "Cetvrta nedelja, dan 2",
  "dutchName": "Week 4, Dag 2",
  "planID": "603908c043361ead4d5ae657",
  "orderNumber": 11
},{
  "_id": {
    "oid": "603908c043361ead4d5ae698"
  },
  "englishName": "Week 4, Day 3",
  "italianName": "Settimana 4, Giorno 3",
  "frenchName": "Semaine 4, Jour 3",
  "serbianName": "Cetvrta nedelja, dan 3",
  "dutchName": "Week 4, Dag 3",
  "planID": "603908c043361ead4d5ae657",
  "orderNumber": 12
},{
  "_id": {
    "oid": "603908c043361ead4d5ae69c"
  },
  "englishName": "Week 5, Day 1",
  "italianName": "Settimana 5, Giorno 1",
  "frenchName": "Semaine 5, Jour 1",
  "serbianName": "Peta nedelja, dan 1",
  "dutchName": "Week 5, Dag 1",
  "planID": "603908c043361ead4d5ae657",
  "orderNumber": 13
},{
  "_id": {
    "oid": "603908c043361ead4d5ae6a0"
  },
  "englishName": "Week 5, Day 2",
  "italianName": "Settimana 5, Giorno 2",
  "frenchName": "Semaine 5, Jour 2",
  "serbianName": "Peta nedelja, dan 2",
  "dutchName": "Week 5, Dag 2",
  "planID": "603908c043361ead4d5ae657",
  "orderNumber": 14
},{
  "_id": {
    "oid": "603908c043361ead4d5ae6a4"
  },
  "englishName": "Week 5, Day 3",
  "italianName": "Settimana 5, Giorno 3",
  "frenchName": "Semaine 5, Jour 3",
  "serbianName": "Peta nedelja, dan 3",
  "dutchName": "Week 5, Dag 3",
  "planID": "603908c043361ead4d5ae657",
  "orderNumber": 15
},{
  "_id": {
    "oid": "603908c043361ead4d5ae6a8"
  },
  "englishName": "Week 6, Day 1",
  "italianName": "Settimana 6, Giorno 1",
  "frenchName": "Semaine 6, Jour 1",
  "serbianName": "Sesta nedelja, dan 1",
  "dutchName": "Week 6, Dag 1",
  "planID": "603908c043361ead4d5ae657",
  "orderNumber": 16
},{
  "_id": {
    "oid": "603908c043361ead4d5ae6aa"
  },
  "englishName": "Week 6, Day 2",
  "italianName": "Settimana 6, Giorno 2",
  "frenchName": "Semaine 6, Jour 2",
  "serbianName": "Sesta nedelja, dan 2",
  "dutchName": "Week 6, Dag 2",
  "planID": "603908c043361ead4d5ae657",
  "orderNumber": 17
},{
  "_id": {
    "oid": "603908c043361ead4d5ae6ac"
  },
  "englishName": "Week 6, Day 3",
  "italianName": "Settimana 6, Giorno 3",
  "frenchName": "Semaine 6, Jour 3",
  "serbianName": "Sesta nedelja, dan 3",
  "dutchName": "Week 6, Dag 3",
  "planID": "603908c043361ead4d5ae657",
  "orderNumber": 18
},{
  "_id": {
    "oid": "603908c043361ead4d5ae6af"
  },
  "englishName": "Week 1, Day 1",
  "italianName": "Settimana 1, Giorno 1",
  "frenchName": "Semaine 1, Jour 1",
  "serbianName": "Prva nedelja, dan 1",
  "dutchName": "Week 1, Dag 1",
  "planID": "603908c043361ead4d5ae6ae",
  "orderNumber": 1
},{
  "_id": {
    "oid": "603908c043361ead4d5ae6bc"
  },
  "englishName": "Week 1, Day 2",
  "italianName": "Settimana 1, Giorno 2",
  "frenchName": "Semaine 1, Jour 2",
  "serbianName": "Prva nedelja, dan 2",
  "dutchName": "Week 1, Dag 2",
  "planID": "603908c043361ead4d5ae6ae",
  "orderNumber": 2
},{
  "_id": {
    "oid": "603908c043361ead4d5ae6cd"
  },
  "englishName": "Week 1, Day 3",
  "italianName": "Settimana 1, Giorno 3",
  "frenchName": "Semaine 1, Jour 3",
  "serbianName": "Prva nedelja, dan 3",
  "dutchName": "Week 1, Dag 3",
  "planID": "603908c043361ead4d5ae6ae",
  "orderNumber": 3
},{
  "_id": {
    "oid": "603908c043361ead4d5ae6de"
  },
  "englishName": "Week 2, Day 1",
  "italianName": "Settimana 2, Giorno 1",
  "frenchName": "Semaine 2, Jour 1",
  "serbianName": "Druga nedelja, dan 1",
  "dutchName": "Week 2, Dag 1",
  "planID": "603908c043361ead4d5ae6ae",
  "orderNumber": 4
},{
  "_id": {
    "oid": "603908c043361ead4d5ae6ef"
  },
  "englishName": "Week 2, Day 2",
  "italianName": "Settimana 2, Giorno 2",
  "frenchName": "Semaine 2, Jour 2",
  "serbianName": "Druga nedelja, dan 2",
  "dutchName": "Week 2, Dag 2",
  "planID": "603908c043361ead4d5ae6ae",
  "orderNumber": 5
},{
  "_id": {
    "oid": "603908c043361ead4d5ae700"
  },
  "englishName": "Week 2, Day 3",
  "italianName": "Settimana 2, Giorno 3",
  "frenchName": "Semaine 2, Jour 3",
  "serbianName": "Druga nedelja, dan 3",
  "dutchName": "Week 2, Dag 3",
  "planID": "603908c043361ead4d5ae6ae",
  "orderNumber": 6
},{
  "_id": {
    "oid": "603908c043361ead4d5ae70d"
  },
  "englishName": "Week 3, Day 1",
  "italianName": "Settimana 3, Giorno 1",
  "frenchName": "Semaine 3, Jour 1",
  "serbianName": "Treca nedelja, dan 1",
  "dutchName": "Week 3, Dag 1",
  "planID": "603908c043361ead4d5ae6ae",
  "orderNumber": 7
},{
  "_id": {
    "oid": "603908c043361ead4d5ae71a"
  },
  "englishName": "Week 3, Day 2",
  "italianName": "Settimana 3, Giorno 2",
  "frenchName": "Semaine 3, Jour 2",
  "serbianName": "Treca nedelja, dan 2",
  "dutchName": "Week 3, Dag 2",
  "planID": "603908c043361ead4d5ae6ae",
  "orderNumber": 8
},{
  "_id": {
    "oid": "603908c043361ead4d5ae727"
  },
  "englishName": "Week 3, Day 3",
  "italianName": "Settimana 3, Giorno 3",
  "frenchName": "Semaine 3, Jour 3",
  "serbianName": "Treca nedelja, dan 3",
  "dutchName": "Week 3, Dag 3",
  "planID": "603908c043361ead4d5ae6ae",
  "orderNumber": 9
},{
  "_id": {
    "oid": "603908c043361ead4d5ae730"
  },
  "englishName": "Week 4, Day 1",
  "italianName": "Settimana 4, Giorno 1",
  "frenchName": "Semaine 4, Jour 1",
  "serbianName": "Cetvrta nedelja, dan 1",
  "dutchName": "Week 4, Dag 1",
  "planID": "603908c043361ead4d5ae6ae",
  "orderNumber": 10
},{
  "_id": {
    "oid": "603908c043361ead4d5ae739"
  },
  "englishName": "Week 4, Day 2",
  "italianName": "Settimana 4, Giorno 2",
  "frenchName": "Semaine 4, Jour 2",
  "serbianName": "Cetvrta nedelja, dan 2",
  "dutchName": "Week 4, Dag 2",
  "planID": "603908c043361ead4d5ae6ae",
  "orderNumber": 11
},{
  "_id": {
    "oid": "603908c043361ead4d5ae742"
  },
  "englishName": "Week 4, Day 3",
  "italianName": "Settimana 4, Giorno 3",
  "frenchName": "Semaine 4, Jour 3",
  "serbianName": "Cetvrta nedelja, dan 3",
  "dutchName": "Week 4, Dag 3",
  "planID": "603908c043361ead4d5ae6ae",
  "orderNumber": 12
},{
  "_id": {
    "oid": "603908c043361ead4d5ae74b"
  },
  "englishName": "Week 5, Day 1",
  "italianName": "Settimana 5, Giorno 1",
  "frenchName": "Semaine 5, Jour 1",
  "serbianName": "Peta nedelja, dan 1",
  "dutchName": "Week 5, Dag 1",
  "planID": "603908c043361ead4d5ae6ae",
  "orderNumber": 13
},{
  "_id": {
    "oid": "603908c043361ead4d5ae754"
  },
  "englishName": "Week 5, Day 2",
  "italianName": "Settimana 5, Giorno 2",
  "frenchName": "Semaine 5, Jour 2",
  "serbianName": "Peta nedelja, dan 2",
  "dutchName": "Week 5, Dag 2",
  "planID": "603908c043361ead4d5ae6ae",
  "orderNumber": 14
},{
  "_id": {
    "oid": "603908c043361ead4d5ae75d"
  },
  "englishName": "Week 5, Day 3",
  "italianName": "Settimana 5, Giorno 3",
  "frenchName": "Semaine 5, Jour 3",
  "serbianName": "Peta nedelja, dan 3",
  "dutchName": "Week 5, Dag 3",
  "planID": "603908c043361ead4d5ae6ae",
  "orderNumber": 15
},{
  "_id": {
    "oid": "603908c043361ead4d5ae766"
  },
  "englishName": "Week 6, Day 1",
  "italianName": "Settimana 6, Giorno 1",
  "frenchName": "Semaine 6, Jour 1",
  "serbianName": "Sesta nedelja, dan 1",
  "dutchName": "Week 6, Dag 1",
  "planID": "603908c043361ead4d5ae6ae",
  "orderNumber": 16
},{
  "_id": {
    "oid": "603908c043361ead4d5ae76f"
  },
  "englishName": "Week 6, Day 2",
  "italianName": "Settimana 6, Giorno 2",
  "frenchName": "Semaine 6, Jour 2",
  "serbianName": "Sesta nedelja, dan 2",
  "dutchName": "Week 6, Dag 2",
  "planID": "603908c043361ead4d5ae6ae",
  "orderNumber": 17
},{
  "_id": {
    "oid": "603908c043361ead4d5ae778"
  },
  "englishName": "Week 6, Day 3",
  "italianName": "Settimana 6, Giorno 3",
  "frenchName": "Semaine 6, Jour 3",
  "serbianName": "Sesta nedelja, dan 3",
  "dutchName": "Week 6, Dag 3",
  "planID": "603908c043361ead4d5ae6ae",
  "orderNumber": 18
},{
  "_id": {
    "oid": "603908c043361ead4d5ae782"
  },
  "englishName": "Week 1, Day 1",
  "italianName": "Settimana 1, Giorno 1",
  "frenchName": "Semaine 1, Jour 1",
  "serbianName": "Prva nedelja, dan 1",
  "dutchName": "Week 1, Dag 1",
  "planID": "603908c043361ead4d5ae781",
  "orderNumber": 1
},{
  "_id": {
    "oid": "603908c043361ead4d5ae78b"
  },
  "englishName": "Week 1, Day 2",
  "italianName": "Settimana 1, Giorno 2",
  "frenchName": "Semaine 1, Jour 2",
  "serbianName": "Prva nedelja, dan 2",
  "dutchName": "Week 1, Dag 2",
  "planID": "603908c043361ead4d5ae781",
  "orderNumber": 2
},{
  "_id": {
    "oid": "603908c043361ead4d5ae794"
  },
  "englishName": "Week 1, Day 3",
  "italianName": "Settimana 1, Giorno 3",
  "frenchName": "Semaine 1, Jour 3",
  "serbianName": "Prva nedelja, dan 3",
  "dutchName": "Week 1, Dag 3",
  "planID": "603908c043361ead4d5ae781",
  "orderNumber": 3
},{
  "_id": {
    "oid": "603908c043361ead4d5ae79d"
  },
  "englishName": "Week 2, Day 1",
  "italianName": "Settimana 2, Giorno 1",
  "frenchName": "Semaine 2, Jour 1",
  "serbianName": "Druga nedelja, dan 1",
  "dutchName": "Week 2, Dag 1",
  "planID": "603908c043361ead4d5ae781",
  "orderNumber": 4
},{
  "_id": {
    "oid": "603908c043361ead4d5ae7a6"
  },
  "englishName": "Week 2, Day 2",
  "italianName": "Settimana 2, Giorno 2",
  "frenchName": "Semaine 2, Jour 2",
  "serbianName": "Druga nedelja, dan 2",
  "dutchName": "Week 2, Dag 2",
  "planID": "603908c043361ead4d5ae781",
  "orderNumber": 5
},{
  "_id": {
    "oid": "603908c043361ead4d5ae7af"
  },
  "englishName": "Week 2, Day 3",
  "italianName": "Settimana 2, Giorno 3",
  "frenchName": "Semaine 2, Jour 3",
  "serbianName": "Druga nedelja, dan 3",
  "dutchName": "Week 2, Dag 3",
  "planID": "603908c043361ead4d5ae781",
  "orderNumber": 6
},{
  "_id": {
    "oid": "603908c043361ead4d5ae7b8"
  },
  "englishName": "Week 3, Day 1",
  "italianName": "Settimana 3, Giorno 1",
  "frenchName": "Semaine 3, Jour 1",
  "serbianName": "Treca nedelja, dan 1",
  "dutchName": "Week 3, Dag 1",
  "planID": "603908c043361ead4d5ae781",
  "orderNumber": 7
},{
  "_id": {
    "oid": "603908c043361ead4d5ae7c1"
  },
  "englishName": "Week 3, Day 2",
  "italianName": "Settimana 3, Giorno 2",
  "frenchName": "Semaine 3, Jour 2",
  "serbianName": "Treca nedelja, dan 2",
  "dutchName": "Week 3, Dag 2",
  "planID": "603908c043361ead4d5ae781",
  "orderNumber": 8
},{
  "_id": {
    "oid": "603908c043361ead4d5ae7ca"
  },
  "englishName": "Week 3, Day 3",
  "italianName": "Settimana 3, Giorno 3",
  "frenchName": "Semaine 3, Jour 3",
  "serbianName": "Treca nedelja, dan 3",
  "dutchName": "Week 3, Dag 3",
  "planID": "603908c043361ead4d5ae781",
  "orderNumber": 9
},{
  "_id": {
    "oid": "603908c043361ead4d5ae7d3"
  },
  "englishName": "Week 4, Day 1",
  "italianName": "Settimana 4, Giorno 1",
  "frenchName": "Semaine 4, Jour 1",
  "serbianName": "Cetvrta nedelja, dan 1",
  "dutchName": "Week 4, Dag 1",
  "planID": "603908c043361ead4d5ae781",
  "orderNumber": 10
},{
  "_id": {
    "oid": "603908c043361ead4d5ae7e0"
  },
  "englishName": "Week 4, Day 2",
  "italianName": "Settimana 4, Giorno 2",
  "frenchName": "Semaine 4, Jour 2",
  "serbianName": "Cetvrta nedelja, dan 2",
  "dutchName": "Week 4, Dag 2",
  "planID": "603908c043361ead4d5ae781",
  "orderNumber": 11
},{
  "_id": {
    "oid": "603908c043361ead4d5ae7ed"
  },
  "englishName": "Week 4, Day 3",
  "italianName": "Settimana 4, Giorno 3",
  "frenchName": "Semaine 4, Jour 3",
  "serbianName": "Cetvrta nedelja, dan 3",
  "dutchName": "Week 4, Dag 3",
  "planID": "603908c043361ead4d5ae781",
  "orderNumber": 12
},{
  "_id": {
    "oid": "603908c043361ead4d5ae7fa"
  },
  "englishName": "Week 5, Day 1",
  "italianName": "Settimana 5, Giorno 1",
  "frenchName": "Semaine 5, Jour 1",
  "serbianName": "Peta nedelja, dan 1",
  "dutchName": "Week 5, Dag 1",
  "planID": "603908c043361ead4d5ae781",
  "orderNumber": 13
},{
  "_id": {
    "oid": "603908c043361ead4d5ae803"
  },
  "englishName": "Week 5, Day 2",
  "italianName": "Settimana 5, Giorno 2",
  "frenchName": "Semaine 5, Jour 2",
  "serbianName": "Peta nedelja, dan 2",
  "dutchName": "Week 5, Dag 2",
  "planID": "603908c043361ead4d5ae781",
  "orderNumber": 14
},{
  "_id": {
    "oid": "603908c043361ead4d5ae810"
  },
  "englishName": "Week 5, Day 3",
  "italianName": "Settimana 5, Giorno 3",
  "frenchName": "Semaine 5, Jour 3",
  "serbianName": "Peta nedelja, dan 3",
  "dutchName": "Week 5, Dag 3",
  "planID": "603908c043361ead4d5ae781",
  "orderNumber": 15
},{
  "_id": {
    "oid": "603908c043361ead4d5ae81b"
  },
  "englishName": "Week 6, Day 1",
  "italianName": "Settimana 6, Giorno 1",
  "frenchName": "Semaine 6, Jour 1",
  "serbianName": "Sesta nedelja, dan 1",
  "dutchName": "Week 6, Dag 1",
  "planID": "603908c043361ead4d5ae781",
  "orderNumber": 16
},{
  "_id": {
    "oid": "603908c043361ead4d5ae822"
  },
  "englishName": "Week 6, Day 2",
  "italianName": "Settimana 6, Giorno 2",
  "frenchName": "Semaine 6, Jour 2",
  "serbianName": "Sesta nedelja, dan 2",
  "dutchName": "Week 6, Dag 2",
  "planID": "603908c043361ead4d5ae781",
  "orderNumber": 17
},{
  "_id": {
    "oid": "603908c043361ead4d5ae829"
  },
  "englishName": "Week 6, Day 3",
  "italianName": "Settimana 6, Giorno 3",
  "frenchName": "Semaine 6, Jour 3",
  "serbianName": "Sesta nedelja, dan 3",
  "dutchName": "Week 6, Dag 3",
  "planID": "603908c043361ead4d5ae781",
  "orderNumber": 18
},{
  "_id": {
    "oid": "603908c043361ead4d5ae835"
  },
  "englishName": "Week 1, Day 1",
  "italianName": "Settimana 1, Giorno 1",
  "frenchName": "Semaine 1, Jour 1",
  "serbianName": "Prva nedelja, dan 1",
  "dutchName": "Week 1, Dag 1",
  "planID": "603908c043361ead4d5ae834",
  "orderNumber": 1
},{
  "_id": {
    "oid": "603908c043361ead4d5ae83c"
  },
  "englishName": "Week 1, Day 2",
  "italianName": "Settimana 1, Giorno 2",
  "frenchName": "Semaine 1, Jour 2",
  "serbianName": "Prva nedelja, dan 2",
  "dutchName": "Week 1, Dag 2",
  "planID": "603908c043361ead4d5ae834",
  "orderNumber": 2
},{
  "_id": {
    "oid": "603908c043361ead4d5ae843"
  },
  "englishName": "Week 1, Day 3",
  "italianName": "Settimana 1, Giorno 3",
  "frenchName": "Semaine 1, Jour 3",
  "serbianName": "Prva nedelja, dan 3",
  "dutchName": "Week 1, Dag 3",
  "planID": "603908c043361ead4d5ae834",
  "orderNumber": 3
},{
  "_id": {
    "oid": "603908c043361ead4d5ae84a"
  },
  "englishName": "Week 2, Day 1",
  "italianName": "Settimana 2, Giorno 1",
  "frenchName": "Semaine 2, Jour 1",
  "serbianName": "Druga nedelja, dan 1",
  "dutchName": "Week 2, Dag 1",
  "planID": "603908c043361ead4d5ae834",
  "orderNumber": 4
},{
  "_id": {
    "oid": "603908c043361ead4d5ae853"
  },
  "englishName": "Week 2, Day 2",
  "italianName": "Settimana 2, Giorno 2",
  "frenchName": "Semaine 2, Jour 2",
  "serbianName": "Druga nedelja, dan 2",
  "dutchName": "Week 2, Dag 2",
  "planID": "603908c043361ead4d5ae834",
  "orderNumber": 5
},{
  "_id": {
    "oid": "603908c043361ead4d5ae85a"
  },
  "englishName": "Week 2, Day 3",
  "italianName": "Settimana 2, Giorno 3",
  "frenchName": "Semaine 2, Jour 3",
  "serbianName": "Druga nedelja, dan 3",
  "dutchName": "Week 2, Dag 3",
  "planID": "603908c043361ead4d5ae834",
  "orderNumber": 6
},{
  "_id": {
    "oid": "603908c043361ead4d5ae85f"
  },
  "englishName": "Week 3, Day 1",
  "italianName": "Settimana 3, Giorno 1",
  "frenchName": "Semaine 3, Jour 1",
  "serbianName": "Treca nedelja, dan 1",
  "dutchName": "Week 3, Dag 1",
  "planID": "603908c043361ead4d5ae834",
  "orderNumber": 7
},{
  "_id": {
    "oid": "603908c043361ead4d5ae864"
  },
  "englishName": "Week 3, Day 2",
  "italianName": "Settimana 3, Giorno 2",
  "frenchName": "Semaine 3, Jour 2",
  "serbianName": "Treca nedelja, dan 2",
  "dutchName": "Week 3, Dag 2",
  "planID": "603908c043361ead4d5ae834",
  "orderNumber": 8
},{
  "_id": {
    "oid": "603908c043361ead4d5ae869"
  },
  "englishName": "Week 3, Day 3",
  "italianName": "Settimana 3, Giorno 3",
  "frenchName": "Semaine 3, Jour 3",
  "serbianName": "Treca nedelja, dan 3",
  "dutchName": "Week 3, Dag 3",
  "planID": "603908c043361ead4d5ae834",
  "orderNumber": 9
},{
  "_id": {
    "oid": "603908c043361ead4d5ae874"
  },
  "englishName": "Week 4, Day 1",
  "italianName": "Settimana 4, Giorno 1",
  "frenchName": "Semaine 4, Jour 1",
  "serbianName": "Cetvrta nedelja, dan 1",
  "dutchName": "Week 4, Dag 1",
  "planID": "603908c043361ead4d5ae834",
  "orderNumber": 10
},{
  "_id": {
    "oid": "603908c043361ead4d5ae87f"
  },
  "englishName": "Week 4, Day 2",
  "italianName": "Settimana 4, Giorno 2",
  "frenchName": "Semaine 4, Jour 2",
  "serbianName": "Cetvrta nedelja, dan 2",
  "dutchName": "Week 4, Dag 2",
  "planID": "603908c043361ead4d5ae834",
  "orderNumber": 11
},{
  "_id": {
    "oid": "603908c043361ead4d5ae88c"
  },
  "englishName": "Week 4, Day 3",
  "italianName": "Settimana 4, Giorno 3",
  "frenchName": "Semaine 4, Jour 3",
  "serbianName": "Cetvrta nedelja, dan 3",
  "dutchName": "Week 4, Dag 3",
  "planID": "603908c043361ead4d5ae834",
  "orderNumber": 12
},{
  "_id": {
    "oid": "603908c043361ead4d5ae899"
  },
  "englishName": "Week 5, Day 1",
  "italianName": "Settimana 5, Giorno 1",
  "frenchName": "Semaine 5, Jour 1",
  "serbianName": "Petak nedelja, dan 1",
  "dutchName": "Week 5, Dag 1",
  "planID": "603908c043361ead4d5ae834",
  "orderNumber": 13
},{
  "_id": {
    "oid": "603908c043361ead4d5ae8a3"
  },
  "englishName": "Week 5, Day 2",
  "italianName": "Settimana 5, Giorno 2",
  "frenchName": "Semaine 5, Jour 2",
  "serbianName": "Petak nedelja, dan 2",
  "dutchName": "Week 5, Dag 2",
  "planID": "603908c043361ead4d5ae834",
  "orderNumber": 14
},{
  "_id": {
    "oid": "603908c043361ead4d5ae8aa"
  },
  "englishName": "Week 5, Day 3",
  "italianName": "Settimana 5, Giorno 3",
  "frenchName": "Semaine 5, Jour 3",
  "serbianName": "Petak nedelja, dan 3",
  "dutchName": "Week 5, Dag 3",
  "planID": "603908c043361ead4d5ae834",
  "orderNumber": 15
},{
  "_id": {
    "oid": "603908c043361ead4d5ae8af"
  },
  "englishName": "Week 6, Day 1",
  "italianName": "Settimana 6, Giorno 1",
  "frenchName": "Semaine 6, Jour 1",
  "serbianName": "Sesta nedelja, dan 1",
  "dutchName": "Week 6, Dag 1",
  "planID": "603908c043361ead4d5ae834",
  "orderNumber": 16
},{
  "_id": {
    "oid": "603908c043361ead4d5ae8b6"
  },
  "englishName": "Week 6, Day 2",
  "italianName": "Settimana 6, Giorno 2",
  "frenchName": "Semaine 6, Jour 2",
  "serbianName": "Sesta nedelja, dan 2",
  "dutchName": "Week 6, Dag 2",
  "planID": "603908c043361ead4d5ae834",
  "orderNumber": 17
},{
  "_id": {
    "oid": "603908c043361ead4d5ae8c6"
  },
  "englishName": "Week 6, Day 3",
  "italianName": "Settimana 6, Giorno 3",
  "frenchName": "Semaine 6, Jour 3",
  "serbianName": "Sesta nedelja, dan 3",
  "dutchName": "Week 6, Dag 3",
  "planID": "603908c043361ead4d5ae834",
  "orderNumber": 18
}]
''';
