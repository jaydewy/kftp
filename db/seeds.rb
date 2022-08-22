# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# create discounts
Discount.create(name: "No Discount")
Discount.create(name: "Friend of the Fair", discount_percent: 1)

# create extras
Extra.create(name: "Adult Weekend", charge: 32)
Extra.create(name: "Adult Daily", charge: 15)
Extra.create(name: "Parking Daily", charge: 10)

# create payment methods
PaymentMethod.create(name: "Cash")
PaymentMethod.create(name: "Debit")
PaymentMethod.create(name: "Cheque")
PaymentMethod.create(name: "Money Order")
PaymentMethod.create(name: "Interac e-transfer")

# create rates (for lots)
rt_reg = Rate.create(name: "Regular", rate: 150)
rt_ove = Rate.create(name: "Oversize", rate: 200)
rt_sma = Rate.create(name: "Small", rate: 50)
rt_hal = Rate.create(name: "Half", rate: 75)

# create site types
st_reg = SiteType.create(name: "Regular")
st_ove = SiteType.create(name: "Oversize")
st_sma = SiteType.create(name: "Small")
st_hal = SiteType.create(name: "Half")

# create all lots for Kinmount Fair, as of August 23rd 2022
Lot.create(name: "1", site_type: st_reg, rate: rt_reg)
Lot.create(name: "2", site_type: st_reg, rate: rt_reg)
Lot.create(name: "3", site_type: st_reg, rate: rt_reg)
Lot.create(name: "4", site_type: st_reg, rate: rt_reg)
Lot.create(name: "5", site_type: st_reg, rate: rt_reg)
Lot.create(name: "6", site_type: st_reg, rate: rt_reg)
Lot.create(name: "7", site_type: st_reg, rate: rt_reg)
Lot.create(name: "8", site_type: st_ove, rate: rt_ove)
Lot.create(name: "9", site_type: st_reg, rate: rt_reg)
Lot.create(name: "10", site_type: st_reg, rate: rt_reg)
Lot.create(name: "11", site_type: st_reg, rate: rt_reg)
Lot.create(name: "12", site_type: st_reg, rate: rt_reg)
Lot.create(name: "13", site_type: st_reg, rate: rt_reg)
Lot.create(name: "14", site_type: st_reg, rate: rt_reg)
Lot.create(name: "15", site_type: st_reg, rate: rt_reg)
Lot.create(name: "16", site_type: st_sma, rate: rt_sma)
Lot.create(name: "17", site_type: st_reg, rate: rt_reg)
Lot.create(name: "18", site_type: st_reg, rate: rt_reg)
Lot.create(name: "19", site_type: st_reg, rate: rt_reg)
Lot.create(name: "20", site_type: st_reg, rate: rt_reg)
Lot.create(name: "21", site_type: st_reg, rate: rt_reg)
Lot.create(name: "22", site_type: st_reg, rate: rt_reg)
Lot.create(name: "23", site_type: st_reg, rate: rt_reg)
Lot.create(name: "24", site_type: st_reg, rate: rt_reg)
Lot.create(name: "25", site_type: st_reg, rate: rt_reg)
Lot.create(name: "26", site_type: st_reg, rate: rt_reg)
Lot.create(name: "27", site_type: st_reg, rate: rt_reg)
Lot.create(name: "28", site_type: st_reg, rate: rt_reg)
Lot.create(name: "29", site_type: st_reg, rate: rt_reg)
Lot.create(name: "30", site_type: st_reg, rate: rt_reg)
Lot.create(name: "31", site_type: st_reg, rate: rt_reg)
Lot.create(name: "32", site_type: st_reg, rate: rt_reg)
Lot.create(name: "33", site_type: st_reg, rate: rt_reg)
Lot.create(name: "34", site_type: st_reg, rate: rt_reg)
Lot.create(name: "35", site_type: st_reg, rate: rt_reg)
Lot.create(name: "36", site_type: st_reg, rate: rt_reg)
Lot.create(name: "37", site_type: st_ove, rate: rt_ove)
Lot.create(name: "38", site_type: st_reg, rate: rt_reg)
Lot.create(name: "39", site_type: st_reg, rate: rt_reg)
Lot.create(name: "40", site_type: st_reg, rate: rt_reg)
Lot.create(name: "41", site_type: st_reg, rate: rt_reg)
Lot.create(name: "42", site_type: st_reg, rate: rt_reg)
Lot.create(name: "43", site_type: st_reg, rate: rt_reg)
Lot.create(name: "54", site_type: st_reg, rate: rt_reg)
Lot.create(name: "55", site_type: st_reg, rate: rt_reg)
Lot.create(name: "56", site_type: st_reg, rate: rt_reg)
Lot.create(name: "57", site_type: st_reg, rate: rt_reg)
Lot.create(name: "58", site_type: st_reg, rate: rt_reg)
Lot.create(name: "59", site_type: st_reg, rate: rt_reg)
Lot.create(name: "60", site_type: st_reg, rate: rt_reg)
Lot.create(name: "60A", site_type: st_reg, rate: rt_reg)
Lot.create(name: "61", site_type: st_reg, rate: rt_reg)
Lot.create(name: "62", site_type: st_reg, rate: rt_reg)
Lot.create(name: "63", site_type: st_reg, rate: rt_reg)
Lot.create(name: "64", site_type: st_reg, rate: rt_reg)
Lot.create(name: "65", site_type: st_reg, rate: rt_reg)
Lot.create(name: "66", site_type: st_reg, rate: rt_reg)
Lot.create(name: "67", site_type: st_reg, rate: rt_reg)
Lot.create(name: "68", site_type: st_reg, rate: rt_reg)
Lot.create(name: "69", site_type: st_reg, rate: rt_reg)
Lot.create(name: "70", site_type: st_reg, rate: rt_reg)
Lot.create(name: "71", site_type: st_reg, rate: rt_reg)
Lot.create(name: "72", site_type: st_reg, rate: rt_reg)
Lot.create(name: "73", site_type: st_reg, rate: rt_reg)
Lot.create(name: "74", site_type: st_reg, rate: rt_reg)
Lot.create(name: "75", site_type: st_reg, rate: rt_reg)
Lot.create(name: "76", site_type: st_reg, rate: rt_reg)
Lot.create(name: "77", site_type: st_reg, rate: rt_reg)
Lot.create(name: "78", site_type: st_reg, rate: rt_reg)
Lot.create(name: "79", site_type: st_reg, rate: rt_reg)
Lot.create(name: "80", site_type: st_reg, rate: rt_reg)
Lot.create(name: "81", site_type: st_reg, rate: rt_reg)
Lot.create(name: "82", site_type: st_reg, rate: rt_reg)
Lot.create(name: "83", site_type: st_reg, rate: rt_reg)
Lot.create(name: "84", site_type: st_reg, rate: rt_reg)
Lot.create(name: "86", site_type: st_reg, rate: rt_reg)
Lot.create(name: "87", site_type: st_reg, rate: rt_reg)
Lot.create(name: "88", site_type: st_reg, rate: rt_reg)
Lot.create(name: "89", site_type: st_reg, rate: rt_reg)
Lot.create(name: "90", site_type: st_reg, rate: rt_reg)
Lot.create(name: "91", site_type: st_reg, rate: rt_reg)
Lot.create(name: "92", site_type: st_reg, rate: rt_reg)
Lot.create(name: "93", site_type: st_reg, rate: rt_reg)
Lot.create(name: "94", site_type: st_reg, rate: rt_reg)
Lot.create(name: "95", site_type: st_reg, rate: rt_reg)
Lot.create(name: "96", site_type: st_reg, rate: rt_reg)
Lot.create(name: "97", site_type: st_reg, rate: rt_reg)
Lot.create(name: "97", site_type: st_reg, rate: rt_reg)
Lot.create(name: "98", site_type: st_reg, rate: rt_reg)
Lot.create(name: "99", site_type: st_reg, rate: rt_reg)
Lot.create(name: "100", site_type: st_reg, rate: rt_reg)
Lot.create(name: "101", site_type: st_reg, rate: rt_reg)
Lot.create(name: "102", site_type: st_reg, rate: rt_reg)
Lot.create(name: "103", site_type: st_reg, rate: rt_reg)
Lot.create(name: "104", site_type: st_reg, rate: rt_reg)
Lot.create(name: "105", site_type: st_reg, rate: rt_reg)
Lot.create(name: "106", site_type: st_reg, rate: rt_reg)
Lot.create(name: "107", site_type: st_reg, rate: rt_reg)
Lot.create(name: "108", site_type: st_reg, rate: rt_reg)
Lot.create(name: "109", site_type: st_reg, rate: rt_reg)
Lot.create(name: "110", site_type: st_reg, rate: rt_reg)
Lot.create(name: "111", site_type: st_reg, rate: rt_reg)
Lot.create(name: "112", site_type: st_reg, rate: rt_reg)
Lot.create(name: "113", site_type: st_reg, rate: rt_reg)
Lot.create(name: "114", site_type: st_reg, rate: rt_reg)
Lot.create(name: "115", site_type: st_reg, rate: rt_reg)
Lot.create(name: "116", site_type: st_reg, rate: rt_reg)
Lot.create(name: "117", site_type: st_sma, rate: rt_sma)
Lot.create(name: "118", site_type: st_reg, rate: rt_reg)
Lot.create(name: "119", site_type: st_reg, rate: rt_reg)
Lot.create(name: "120", site_type: st_reg, rate: rt_reg)
Lot.create(name: "121", site_type: st_reg, rate: rt_reg)
Lot.create(name: "122", site_type: st_reg, rate: rt_reg)
Lot.create(name: "123", site_type: st_reg, rate: rt_reg)
Lot.create(name: "124", site_type: st_reg, rate: rt_reg)
Lot.create(name: "125A", site_type: st_ove, rate: rt_ove)
Lot.create(name: "126", site_type: st_reg, rate: rt_reg)
Lot.create(name: "127", site_type: st_reg, rate: rt_reg)
Lot.create(name: "128", site_type: st_reg, rate: rt_reg)
Lot.create(name: "129", site_type: st_reg, rate: rt_reg)
Lot.create(name: "130", site_type: st_ove, rate: rt_ove)
Lot.create(name: "131", site_type: st_reg, rate: rt_reg)
Lot.create(name: "132", site_type: st_reg, rate: rt_reg)
Lot.create(name: "133", site_type: st_reg, rate: rt_reg)
Lot.create(name: "134", site_type: st_reg, rate: rt_reg)
Lot.create(name: "135", site_type: st_sma, rate: rt_sma)
Lot.create(name: "136", site_type: st_reg, rate: rt_reg)
Lot.create(name: "137", site_type: st_reg, rate: rt_reg)
Lot.create(name: "140", site_type: st_reg, rate: rt_reg)
Lot.create(name: "141", site_type: st_reg, rate: rt_reg)
Lot.create(name: "142", site_type: st_reg, rate: rt_reg)
Lot.create(name: "143", site_type: st_reg, rate: rt_reg)
Lot.create(name: "144", site_type: st_reg, rate: rt_reg)
Lot.create(name: "145", site_type: st_reg, rate: rt_reg)
Lot.create(name: "146", site_type: st_reg, rate: rt_reg)
Lot.create(name: "147", site_type: st_ove, rate: rt_ove)
Lot.create(name: "148", site_type: st_reg, rate: rt_reg)
Lot.create(name: "149", site_type: st_ove, rate: rt_ove)
Lot.create(name: "150", site_type: st_reg, rate: rt_reg)
Lot.create(name: "150A", site_type: st_reg, rate: rt_reg)
Lot.create(name: "150B", site_type: st_reg, rate: rt_reg)
Lot.create(name: "150D", site_type: st_reg, rate: rt_reg)
Lot.create(name: "150C", site_type: st_reg, rate: rt_reg)
Lot.create(name: "150E", site_type: st_reg, rate: rt_reg)
Lot.create(name: "150F", site_type: st_reg, rate: rt_reg)
Lot.create(name: "151", site_type: st_reg, rate: rt_reg)
Lot.create(name: "152", site_type: st_reg, rate: rt_reg)
Lot.create(name: "153", site_type: st_reg, rate: rt_reg)
Lot.create(name: "154", site_type: st_reg, rate: rt_reg)
Lot.create(name: "155", site_type: st_reg, rate: rt_reg)
Lot.create(name: "156", site_type: st_reg, rate: rt_reg)
Lot.create(name: "157", site_type: st_reg, rate: rt_reg)
Lot.create(name: "158", site_type: st_reg, rate: rt_reg)
Lot.create(name: "159", site_type: st_reg, rate: rt_reg)
Lot.create(name: "160", site_type: st_reg, rate: rt_reg)
Lot.create(name: "161", site_type: st_ove, rate: rt_ove)
Lot.create(name: "162", site_type: st_reg, rate: rt_reg)
Lot.create(name: "163", site_type: st_reg, rate: rt_reg)
Lot.create(name: "164", site_type: st_reg, rate: rt_reg)
Lot.create(name: "165", site_type: st_reg, rate: rt_reg)
Lot.create(name: "166", site_type: st_reg, rate: rt_reg)
Lot.create(name: "169", site_type: st_reg, rate: rt_reg)
Lot.create(name: "170", site_type: st_reg, rate: rt_reg)
Lot.create(name: "171", site_type: st_reg, rate: rt_reg)
Lot.create(name: "172", site_type: st_reg, rate: rt_reg)
Lot.create(name: "173", site_type: st_reg, rate: rt_reg)
Lot.create(name: "174", site_type: st_reg, rate: rt_reg)
Lot.create(name: "175", site_type: st_reg, rate: rt_reg)
Lot.create(name: "176", site_type: st_reg, rate: rt_reg)
Lot.create(name: "177", site_type: st_reg, rate: rt_reg)
Lot.create(name: "178", site_type: st_reg, rate: rt_reg)
Lot.create(name: "179", site_type: st_reg, rate: rt_reg)
Lot.create(name: "180", site_type: st_reg, rate: rt_reg)
Lot.create(name: "181", site_type: st_reg, rate: rt_reg)
Lot.create(name: "182", site_type: st_reg, rate: rt_reg)
Lot.create(name: "183", site_type: st_reg, rate: rt_reg)
Lot.create(name: "184", site_type: st_reg, rate: rt_reg)
Lot.create(name: "185", site_type: st_reg, rate: rt_reg)
Lot.create(name: "186", site_type: st_sma, rate: rt_sma)
Lot.create(name: "187", site_type: st_reg, rate: rt_reg)
Lot.create(name: "188", site_type: st_reg, rate: rt_reg)
Lot.create(name: "189", site_type: st_reg, rate: rt_reg)
Lot.create(name: "189A", site_type: st_reg, rate: rt_reg)
Lot.create(name: "190", site_type: st_reg, rate: rt_reg)
Lot.create(name: "191", site_type: st_reg, rate: rt_reg)
Lot.create(name: "192", site_type: st_reg, rate: rt_reg)
Lot.create(name: "193", site_type: st_reg, rate: rt_reg)
Lot.create(name: "194", site_type: st_reg, rate: rt_reg)
Lot.create(name: "195", site_type: st_reg, rate: rt_reg)
Lot.create(name: "196", site_type: st_reg, rate: rt_reg)
Lot.create(name: "197", site_type: st_reg, rate: rt_reg)
Lot.create(name: "198", site_type: st_reg, rate: rt_reg)
Lot.create(name: "199", site_type: st_reg, rate: rt_reg)
Lot.create(name: "200", site_type: st_reg, rate: rt_reg)
Lot.create(name: "201", site_type: st_reg, rate: rt_reg)
Lot.create(name: "202", site_type: st_ove, rate: rt_ove)
Lot.create(name: "203", site_type: st_reg, rate: rt_reg)
Lot.create(name: "204", site_type: st_reg, rate: rt_reg)
Lot.create(name: "205", site_type: st_reg, rate: rt_reg)
Lot.create(name: "206", site_type: st_reg, rate: rt_reg)
Lot.create(name: "207", site_type: st_reg, rate: rt_reg)
Lot.create(name: "208", site_type: st_reg, rate: rt_reg)
Lot.create(name: "209A", site_type: st_reg, rate: rt_reg)
Lot.create(name: "209", site_type: st_reg, rate: rt_reg)
Lot.create(name: "210", site_type: st_reg, rate: rt_reg)
Lot.create(name: "211", site_type: st_reg, rate: rt_reg)
Lot.create(name: "212", site_type: st_reg, rate: rt_reg)
Lot.create(name: "213", site_type: st_reg, rate: rt_reg)
Lot.create(name: "214", site_type: st_reg, rate: rt_reg)
Lot.create(name: "215", site_type: st_reg, rate: rt_reg)
Lot.create(name: "216", site_type: st_reg, rate: rt_reg)
Lot.create(name: "217", site_type: st_ove, rate: rt_ove)
Lot.create(name: "218", site_type: st_reg, rate: rt_reg)
Lot.create(name: "219", site_type: st_reg, rate: rt_reg)
Lot.create(name: "220", site_type: st_reg, rate: rt_reg)
Lot.create(name: "221", site_type: st_reg, rate: rt_reg)
Lot.create(name: "222", site_type: st_reg, rate: rt_reg)
Lot.create(name: "223", site_type: st_reg, rate: rt_reg)
Lot.create(name: "224", site_type: st_reg, rate: rt_reg)
Lot.create(name: "225", site_type: st_reg, rate: rt_reg)
Lot.create(name: "226", site_type: st_reg, rate: rt_reg)
Lot.create(name: "227", site_type: st_reg, rate: rt_reg)
Lot.create(name: "228", site_type: st_reg, rate: rt_reg)
Lot.create(name: "229", site_type: st_reg, rate: rt_reg)
Lot.create(name: "230", site_type: st_reg, rate: rt_reg)
Lot.create(name: "231", site_type: st_reg, rate: rt_reg)
Lot.create(name: "232", site_type: st_reg, rate: rt_reg)
Lot.create(name: "233", site_type: st_reg, rate: rt_reg)
Lot.create(name: "234", site_type: st_reg, rate: rt_reg)
Lot.create(name: "235", site_type: st_reg, rate: rt_reg)
Lot.create(name: "236", site_type: st_reg, rate: rt_reg)
Lot.create(name: "237", site_type: st_reg, rate: rt_reg)
Lot.create(name: "238", site_type: st_reg, rate: rt_reg)
Lot.create(name: "239", site_type: st_reg, rate: rt_reg)
Lot.create(name: "240", site_type: st_ove, rate: rt_ove)
Lot.create(name: "241", site_type: st_ove, rate: rt_ove)
Lot.create(name: "242", site_type: st_reg, rate: rt_reg)
Lot.create(name: "243", site_type: st_reg, rate: rt_reg)
Lot.create(name: "244", site_type: st_reg, rate: rt_reg)
Lot.create(name: "245", site_type: st_reg, rate: rt_reg)
Lot.create(name: "246", site_type: st_reg, rate: rt_reg)
Lot.create(name: "247", site_type: st_reg, rate: rt_reg)
Lot.create(name: "249", site_type: st_reg, rate: rt_reg)
Lot.create(name: "250", site_type: st_reg, rate: rt_reg)
Lot.create(name: "251", site_type: st_reg, rate: rt_reg)
Lot.create(name: "252", site_type: st_reg, rate: rt_reg)
Lot.create(name: "253", site_type: st_reg, rate: rt_reg)
Lot.create(name: "254", site_type: st_reg, rate: rt_reg)
Lot.create(name: "255", site_type: st_reg, rate: rt_reg)
Lot.create(name: "256", site_type: st_reg, rate: rt_reg)
Lot.create(name: "257", site_type: st_reg, rate: rt_reg)
Lot.create(name: "259", site_type: st_reg, rate: rt_reg)
Lot.create(name: "260", site_type: st_reg, rate: rt_reg)
Lot.create(name: "261", site_type: st_reg, rate: rt_reg)
Lot.create(name: "262", site_type: st_ove, rate: rt_ove)
Lot.create(name: "263", site_type: st_reg, rate: rt_reg)
Lot.create(name: "264", site_type: st_ove, rate: rt_ove)
Lot.create(name: "266", site_type: st_reg, rate: rt_reg)
Lot.create(name: "267", site_type: st_reg, rate: rt_reg)
Lot.create(name: "268", site_type: st_reg, rate: rt_reg)
Lot.create(name: "269", site_type: st_reg, rate: rt_reg)
Lot.create(name: "270", site_type: st_reg, rate: rt_reg)
Lot.create(name: "271", site_type: st_reg, rate: rt_reg)
Lot.create(name: "272", site_type: st_reg, rate: rt_reg)
Lot.create(name: "273", site_type: st_reg, rate: rt_reg)
Lot.create(name: "274", site_type: st_reg, rate: rt_reg)
Lot.create(name: "275", site_type: st_reg, rate: rt_reg)
Lot.create(name: "276", site_type: st_reg, rate: rt_reg)
Lot.create(name: "277", site_type: st_reg, rate: rt_reg)
Lot.create(name: "278", site_type: st_reg, rate: rt_reg)
Lot.create(name: "279", site_type: st_reg, rate: rt_reg)
Lot.create(name: "280", site_type: st_reg, rate: rt_reg)
Lot.create(name: "281", site_type: st_reg, rate: rt_reg)
Lot.create(name: "282", site_type: st_reg, rate: rt_reg)
Lot.create(name: "283", site_type: st_reg, rate: rt_reg)
Lot.create(name: "284", site_type: st_reg, rate: rt_reg)
Lot.create(name: "286", site_type: st_reg, rate: rt_reg)
Lot.create(name: "287", site_type: st_reg, rate: rt_reg)
Lot.create(name: "288", site_type: st_reg, rate: rt_reg)
Lot.create(name: "289", site_type: st_reg, rate: rt_reg)
Lot.create(name: "290", site_type: st_reg, rate: rt_reg)
Lot.create(name: "291", site_type: st_reg, rate: rt_reg)
Lot.create(name: "292", site_type: st_reg, rate: rt_reg)
Lot.create(name: "293", site_type: st_reg, rate: rt_reg)
Lot.create(name: "294", site_type: st_ove, rate: rt_ove)
Lot.create(name: "295", site_type: st_reg, rate: rt_reg)
Lot.create(name: "296", site_type: st_reg, rate: rt_reg)
Lot.create(name: "297", site_type: st_reg, rate: rt_reg)
Lot.create(name: "298", site_type: st_reg, rate: rt_reg)
Lot.create(name: "299", site_type: st_reg, rate: rt_reg)
Lot.create(name: "300", site_type: st_reg, rate: rt_reg)
Lot.create(name: "301", site_type: st_reg, rate: rt_reg)
Lot.create(name: "302", site_type: st_reg, rate: rt_reg)
Lot.create(name: "303", site_type: st_reg, rate: rt_reg)
Lot.create(name: "304", site_type: st_reg, rate: rt_reg)
Lot.create(name: "305", site_type: st_reg, rate: rt_reg)
Lot.create(name: "306", site_type: st_reg, rate: rt_reg)
Lot.create(name: "307", site_type: st_reg, rate: rt_reg)
Lot.create(name: "308", site_type: st_reg, rate: rt_reg)
Lot.create(name: "309", site_type: st_reg, rate: rt_reg)
Lot.create(name: "310", site_type: st_reg, rate: rt_reg)
Lot.create(name: "311", site_type: st_reg, rate: rt_reg)
Lot.create(name: "312", site_type: st_reg, rate: rt_reg)
Lot.create(name: "313", site_type: st_reg, rate: rt_reg)
Lot.create(name: "314", site_type: st_reg, rate: rt_reg)
Lot.create(name: "315", site_type: st_reg, rate: rt_reg)
Lot.create(name: "316", site_type: st_reg, rate: rt_reg)
Lot.create(name: "317", site_type: st_reg, rate: rt_reg)
Lot.create(name: "318", site_type: st_reg, rate: rt_reg)
Lot.create(name: "319", site_type: st_reg, rate: rt_reg)
Lot.create(name: "320", site_type: st_reg, rate: rt_reg)
Lot.create(name: "321", site_type: st_reg, rate: rt_reg)
Lot.create(name: "322", site_type: st_reg, rate: rt_reg)
Lot.create(name: "323", site_type: st_ove, rate: rt_ove)
Lot.create(name: "324", site_type: st_reg, rate: rt_reg)
Lot.create(name: "325", site_type: st_ove, rate: rt_ove)
Lot.create(name: "326", site_type: st_reg, rate: rt_reg)
Lot.create(name: "327", site_type: st_reg, rate: rt_reg)
Lot.create(name: "328", site_type: st_reg, rate: rt_reg)
Lot.create(name: "329", site_type: st_reg, rate: rt_reg)
Lot.create(name: "330", site_type: st_reg, rate: rt_reg)
Lot.create(name: "331", site_type: st_reg, rate: rt_reg)
Lot.create(name: "332", site_type: st_reg, rate: rt_reg)
Lot.create(name: "333", site_type: st_ove, rate: rt_ove)
Lot.create(name: "334", site_type: st_ove, rate: rt_ove)
Lot.create(name: "335", site_type: st_ove, rate: rt_ove)
Lot.create(name: "336", site_type: st_ove, rate: rt_ove)
Lot.create(name: "337", site_type: st_reg, rate: rt_reg)
Lot.create(name: "338", site_type: st_reg, rate: rt_reg)
Lot.create(name: "339", site_type: st_reg, rate: rt_reg)
Lot.create(name: "340", site_type: st_reg, rate: rt_reg)
Lot.create(name: "341", site_type: st_reg, rate: rt_reg)
Lot.create(name: "342", site_type: st_reg, rate: rt_reg)
Lot.create(name: "343", site_type: st_reg, rate: rt_reg)
Lot.create(name: "344", site_type: st_reg, rate: rt_reg)
Lot.create(name: "345", site_type: st_reg, rate: rt_reg)
Lot.create(name: "346", site_type: st_ove, rate: rt_ove)
Lot.create(name: "347", site_type: st_reg, rate: rt_reg)
Lot.create(name: "348", site_type: st_reg, rate: rt_reg)
Lot.create(name: "349", site_type: st_ove, rate: rt_ove)
Lot.create(name: "350", site_type: st_ove, rate: rt_ove)
Lot.create(name: "351", site_type: st_reg, rate: rt_reg)
Lot.create(name: "352", site_type: st_reg, rate: rt_reg)
Lot.create(name: "353", site_type: st_ove, rate: rt_ove)
Lot.create(name: "354", site_type: st_reg, rate: rt_reg)
Lot.create(name: "355", site_type: st_reg, rate: rt_reg)
Lot.create(name: "356", site_type: st_reg, rate: rt_reg)
Lot.create(name: "357", site_type: st_reg, rate: rt_reg)
Lot.create(name: "358", site_type: st_ove, rate: rt_ove)
Lot.create(name: "359", site_type: st_reg, rate: rt_reg)
Lot.create(name: "360", site_type: st_ove, rate: rt_ove)
Lot.create(name: "361", site_type: st_reg, rate: rt_reg)
Lot.create(name: "362", site_type: st_reg, rate: rt_reg)
Lot.create(name: "363", site_type: st_ove, rate: rt_ove)
Lot.create(name: "364", site_type: st_ove, rate: rt_ove)
Lot.create(name: "365", site_type: st_reg, rate: rt_reg)
Lot.create(name: "366", site_type: st_reg, rate: rt_reg)
Lot.create(name: "367", site_type: st_reg, rate: rt_reg)
Lot.create(name: "368", site_type: st_reg, rate: rt_reg)
Lot.create(name: "369", site_type: st_reg, rate: rt_reg)
Lot.create(name: "370E", site_type: st_reg, rate: rt_reg)
Lot.create(name: "370F", site_type: st_reg, rate: rt_reg)
Lot.create(name: "370", site_type: st_reg, rate: rt_reg)
Lot.create(name: "370D", site_type: st_reg, rate: rt_reg)
Lot.create(name: "370A", site_type: st_reg, rate: rt_reg)
Lot.create(name: "370B", site_type: st_reg, rate: rt_reg)
Lot.create(name: "371", site_type: st_hal, rate: rt_hal)
Lot.create(name: "372", site_type: st_hal, rate: rt_hal)
Lot.create(name: "373", site_type: st_reg, rate: rt_reg)
Lot.create(name: "374", site_type: st_reg, rate: rt_reg)
Lot.create(name: "375", site_type: st_reg, rate: rt_reg)
Lot.create(name: "376", site_type: st_reg, rate: rt_reg)
Lot.create(name: "377", site_type: st_reg, rate: rt_reg)
Lot.create(name: "378", site_type: st_reg, rate: rt_reg)
Lot.create(name: "379", site_type: st_reg, rate: rt_reg)
Lot.create(name: "380", site_type: st_reg, rate: rt_reg)
Lot.create(name: "381", site_type: st_reg, rate: rt_reg)
Lot.create(name: "382", site_type: st_reg, rate: rt_reg)
Lot.create(name: "383", site_type: st_reg, rate: rt_reg)
Lot.create(name: "384B", site_type: st_reg, rate: rt_reg)
Lot.create(name: "384A", site_type: st_reg, rate: rt_reg)
Lot.create(name: "384", site_type: st_reg, rate: rt_reg)
Lot.create(name: "385", site_type: st_reg, rate: rt_reg)
Lot.create(name: "386", site_type: st_reg, rate: rt_reg)
Lot.create(name: "387", site_type: st_reg, rate: rt_reg)
Lot.create(name: "388", site_type: st_reg, rate: rt_reg)
Lot.create(name: "389", site_type: st_reg, rate: rt_reg)
Lot.create(name: "390", site_type: st_ove, rate: rt_ove)
Lot.create(name: "391", site_type: st_ove, rate: rt_ove)
Lot.create(name: "392", site_type: st_reg, rate: rt_reg)
Lot.create(name: "393", site_type: st_reg, rate: rt_reg)
Lot.create(name: "394", site_type: st_ove, rate: rt_ove)
Lot.create(name: "395", site_type: st_ove, rate: rt_ove)
Lot.create(name: "396", site_type: st_reg, rate: rt_reg)
Lot.create(name: "397", site_type: st_reg, rate: rt_reg)
Lot.create(name: "398", site_type: st_reg, rate: rt_reg)
Lot.create(name: "399A", site_type: st_reg, rate: rt_reg)
Lot.create(name: "399", site_type: st_reg, rate: rt_reg)
Lot.create(name: "400", site_type: st_reg, rate: rt_reg)
Lot.create(name: "401", site_type: st_reg, rate: rt_reg)
Lot.create(name: "402", site_type: st_reg, rate: rt_reg)
Lot.create(name: "403", site_type: st_reg, rate: rt_reg)
Lot.create(name: "404", site_type: st_reg, rate: rt_reg)
Lot.create(name: "405", site_type: st_reg, rate: rt_reg)
Lot.create(name: "406", site_type: st_reg, rate: rt_reg)
Lot.create(name: "407", site_type: st_reg, rate: rt_reg)
Lot.create(name: "408", site_type: st_reg, rate: rt_reg)
Lot.create(name: "409", site_type: st_reg, rate: rt_reg)
Lot.create(name: "410", site_type: st_reg, rate: rt_reg)
Lot.create(name: "411", site_type: st_reg, rate: rt_reg)
Lot.create(name: "412", site_type: st_reg, rate: rt_reg)
Lot.create(name: "413", site_type: st_reg, rate: rt_reg)
Lot.create(name: "414A", site_type: st_ove, rate: rt_ove)
Lot.create(name: "414", site_type: st_reg, rate: rt_reg)
Lot.create(name: "415B", site_type: st_ove, rate: rt_ove)
Lot.create(name: "415A", site_type: st_ove, rate: rt_ove)
Lot.create(name: "416", site_type: st_reg, rate: rt_reg)
Lot.create(name: "417", site_type: st_reg, rate: rt_reg)
Lot.create(name: "418", site_type: st_ove, rate: rt_ove)
Lot.create(name: "419", site_type: st_reg, rate: rt_reg)
Lot.create(name: "420", site_type: st_reg, rate: rt_reg)
Lot.create(name: "421", site_type: st_reg, rate: rt_reg)
Lot.create(name: "422", site_type: st_reg, rate: rt_reg)
Lot.create(name: "423", site_type: st_reg, rate: rt_reg)
Lot.create(name: "424", site_type: st_reg, rate: rt_reg)
Lot.create(name: "425", site_type: st_reg, rate: rt_reg)
Lot.create(name: "426", site_type: st_reg, rate: rt_reg)
Lot.create(name: "427", site_type: st_reg, rate: rt_reg)
Lot.create(name: "428", site_type: st_reg, rate: rt_reg)
Lot.create(name: "429", site_type: st_reg, rate: rt_reg)
Lot.create(name: "430", site_type: st_reg, rate: rt_reg)
Lot.create(name: "431", site_type: st_reg, rate: rt_reg)
Lot.create(name: "432", site_type: st_reg, rate: rt_reg)
Lot.create(name: "433", site_type: st_ove, rate: rt_ove)
Lot.create(name: "433A", site_type: st_reg, rate: rt_reg)
Lot.create(name: "434", site_type: st_reg, rate: rt_reg)
Lot.create(name: "434A", site_type: st_reg, rate: rt_reg)
Lot.create(name: "435", site_type: st_reg, rate: rt_reg)
Lot.create(name: "436", site_type: st_reg, rate: rt_reg)
Lot.create(name: "437", site_type: st_reg, rate: rt_reg)
Lot.create(name: "438", site_type: st_ove, rate: rt_ove)
Lot.create(name: "439", site_type: st_reg, rate: rt_reg)
Lot.create(name: "440", site_type: st_reg, rate: rt_reg)
Lot.create(name: "441", site_type: st_reg, rate: rt_reg)
Lot.create(name: "442", site_type: st_reg, rate: rt_reg)
Lot.create(name: "443", site_type: st_reg, rate: rt_reg)
Lot.create(name: "444", site_type: st_reg, rate: rt_reg)
Lot.create(name: "445", site_type: st_reg, rate: rt_reg)
Lot.create(name: "500", site_type: st_reg, rate: rt_reg)
Lot.create(name: "501", site_type: st_reg, rate: rt_reg)
Lot.create(name: "502", site_type: st_reg, rate: rt_reg)
Lot.create(name: "503", site_type: st_reg, rate: rt_reg)
Lot.create(name: "504", site_type: st_reg, rate: rt_reg)
Lot.create(name: "505", site_type: st_reg, rate: rt_reg)
Lot.create(name: "506", site_type: st_reg, rate: rt_reg)
Lot.create(name: "507", site_type: st_reg, rate: rt_reg)
Lot.create(name: "508", site_type: st_reg, rate: rt_reg)
Lot.create(name: "509", site_type: st_reg, rate: rt_reg)
Lot.create(name: "510", site_type: st_reg, rate: rt_reg)
Lot.create(name: "511", site_type: st_reg, rate: rt_reg)
Lot.create(name: "512", site_type: st_reg, rate: rt_reg)
Lot.create(name: "513", site_type: st_reg, rate: rt_reg)
Lot.create(name: "514", site_type: st_reg, rate: rt_reg)
Lot.create(name: "515", site_type: st_reg, rate: rt_reg)
Lot.create(name: "516A", site_type: st_reg, rate: rt_reg)
Lot.create(name: "516", site_type: st_reg, rate: rt_reg)
Lot.create(name: "517", site_type: st_reg, rate: rt_reg)
Lot.create(name: "518", site_type: st_reg, rate: rt_reg)
Lot.create(name: "519", site_type: st_reg, rate: rt_reg)
Lot.create(name: "520", site_type: st_reg, rate: rt_reg)
Lot.create(name: "521", site_type: st_reg, rate: rt_reg)
Lot.create(name: "522", site_type: st_reg, rate: rt_reg)
Lot.create(name: "523", site_type: st_reg, rate: rt_reg)
Lot.create(name: "524", site_type: st_reg, rate: rt_reg)
Lot.create(name: "525", site_type: st_reg, rate: rt_reg)
Lot.create(name: "526", site_type: st_reg, rate: rt_reg)
Lot.create(name: "527", site_type: st_reg, rate: rt_reg)
Lot.create(name: "528", site_type: st_reg, rate: rt_reg)
Lot.create(name: "529", site_type: st_reg, rate: rt_reg)
Lot.create(name: "530", site_type: st_reg, rate: rt_reg)
Lot.create(name: "531", site_type: st_reg, rate: rt_reg)
Lot.create(name: "532", site_type: st_reg, rate: rt_reg)
Lot.create(name: "533", site_type: st_reg, rate: rt_reg)
Lot.create(name: "534", site_type: st_reg, rate: rt_reg)
Lot.create(name: "535", site_type: st_reg, rate: rt_reg)
Lot.create(name: "536", site_type: st_reg, rate: rt_reg)
Lot.create(name: "537", site_type: st_reg, rate: rt_reg)
Lot.create(name: "538", site_type: st_reg, rate: rt_reg)
Lot.create(name: "539", site_type: st_reg, rate: rt_reg)
Lot.create(name: "540", site_type: st_reg, rate: rt_reg)
Lot.create(name: "541", site_type: st_reg, rate: rt_reg)
Lot.create(name: "542", site_type: st_reg, rate: rt_reg)
Lot.create(name: "543", site_type: st_reg, rate: rt_reg)
Lot.create(name: "544", site_type: st_reg, rate: rt_reg)
Lot.create(name: "545", site_type: st_reg, rate: rt_reg)
Lot.create(name: "546", site_type: st_reg, rate: rt_reg)
Lot.create(name: "547", site_type: st_reg, rate: rt_reg)
Lot.create(name: "548", site_type: st_reg, rate: rt_reg)
Lot.create(name: "549", site_type: st_reg, rate: rt_reg)
Lot.create(name: "550", site_type: st_reg, rate: rt_reg)
Lot.create(name: "551", site_type: st_reg, rate: rt_reg)
Lot.create(name: "552", site_type: st_reg, rate: rt_reg)
Lot.create(name: "553", site_type: st_reg, rate: rt_reg)
Lot.create(name: "554", site_type: st_reg, rate: rt_reg)
Lot.create(name: "600", site_type: st_reg, rate: rt_reg)
Lot.create(name: "601", site_type: st_reg, rate: rt_reg)
Lot.create(name: "602", site_type: st_reg, rate: rt_reg)
Lot.create(name: "603", site_type: st_reg, rate: rt_reg)
Lot.create(name: "604", site_type: st_reg, rate: rt_reg)
Lot.create(name: "605", site_type: st_reg, rate: rt_reg)
Lot.create(name: "606", site_type: st_reg, rate: rt_reg)
Lot.create(name: "607", site_type: st_reg, rate: rt_reg)
Lot.create(name: "608", site_type: st_reg, rate: rt_reg)
Lot.create(name: "609", site_type: st_reg, rate: rt_reg)
Lot.create(name: "610", site_type: st_reg, rate: rt_reg)
Lot.create(name: "611", site_type: st_reg, rate: rt_reg)
Lot.create(name: "612", site_type: st_reg, rate: rt_reg)
Lot.create(name: "613", site_type: st_reg, rate: rt_reg)
Lot.create(name: "614", site_type: st_reg, rate: rt_reg)
Lot.create(name: "615", site_type: st_reg, rate: rt_reg)
Lot.create(name: "618", site_type: st_reg, rate: rt_reg)
Lot.create(name: "619", site_type: st_reg, rate: rt_reg)
Lot.create(name: "620", site_type: st_reg, rate: rt_reg)
Lot.create(name: "621", site_type: st_reg, rate: rt_reg)
Lot.create(name: "622", site_type: st_reg, rate: rt_reg)
Lot.create(name: "623", site_type: st_reg, rate: rt_reg)
Lot.create(name: "624", site_type: st_reg, rate: rt_reg)
Lot.create(name: "625", site_type: st_reg, rate: rt_reg)
Lot.create(name: "626", site_type: st_reg, rate: rt_reg)
Lot.create(name: "627", site_type: st_reg, rate: rt_reg)
Lot.create(name: "628", site_type: st_reg, rate: rt_reg)
Lot.create(name: "629", site_type: st_reg, rate: rt_reg)
Lot.create(name: "630", site_type: st_reg, rate: rt_reg)
Lot.create(name: "631", site_type: st_reg, rate: rt_reg)
Lot.create(name: "632", site_type: st_reg, rate: rt_reg)
Lot.create(name: "633", site_type: st_reg, rate: rt_reg)
Lot.create(name: "634", site_type: st_ove, rate: rt_ove)
Lot.create(name: "635", site_type: st_ove, rate: rt_ove)
Lot.create(name: "637", site_type: st_reg, rate: rt_reg)
Lot.create(name: "638", site_type: st_reg, rate: rt_reg)
Lot.create(name: "639", site_type: st_reg, rate: rt_reg)
Lot.create(name: "640", site_type: st_reg, rate: rt_reg)
Lot.create(name: "641", site_type: st_reg, rate: rt_reg)
Lot.create(name: "642", site_type: st_reg, rate: rt_reg)
Lot.create(name: "643", site_type: st_reg, rate: rt_reg)
Lot.create(name: "644", site_type: st_ove, rate: rt_ove)
Lot.create(name: "645", site_type: st_reg, rate: rt_reg)
Lot.create(name: "646", site_type: st_reg, rate: rt_reg)
Lot.create(name: "647", site_type: st_reg, rate: rt_reg)
Lot.create(name: "648", site_type: st_reg, rate: rt_reg)
Lot.create(name: "649", site_type: st_reg, rate: rt_reg)
Lot.create(name: "650", site_type: st_reg, rate: rt_reg)
Lot.create(name: "651", site_type: st_reg, rate: rt_reg)
Lot.create(name: "653", site_type: st_reg, rate: rt_reg)
Lot.create(name: "654", site_type: st_reg, rate: rt_reg)
Lot.create(name: "655", site_type: st_reg, rate: rt_reg)
Lot.create(name: "656", site_type: st_reg, rate: rt_reg)
Lot.create(name: "657", site_type: st_ove, rate: rt_ove)
Lot.create(name: "658", site_type: st_reg, rate: rt_reg)
Lot.create(name: "700", site_type: st_reg, rate: rt_reg)
Lot.create(name: "701", site_type: st_reg, rate: rt_reg)
Lot.create(name: "702", site_type: st_reg, rate: rt_reg)
Lot.create(name: "703B", site_type: st_reg, rate: rt_reg)
Lot.create(name: "703", site_type: st_reg, rate: rt_reg)
Lot.create(name: "704", site_type: st_reg, rate: rt_reg)
Lot.create(name: "705", site_type: st_reg, rate: rt_reg)
Lot.create(name: "706", site_type: st_reg, rate: rt_reg)
Lot.create(name: "707", site_type: st_reg, rate: rt_reg)
Lot.create(name: "708", site_type: st_ove, rate: rt_ove)
Lot.create(name: "709", site_type: st_ove, rate: rt_ove)
Lot.create(name: "710", site_type: st_reg, rate: rt_reg)
Lot.create(name: "711", site_type: st_reg, rate: rt_reg)
Lot.create(name: "712", site_type: st_reg, rate: rt_reg)
Lot.create(name: "713", site_type: st_reg, rate: rt_reg)
Lot.create(name: "714", site_type: st_reg, rate: rt_reg)
Lot.create(name: "715", site_type: st_reg, rate: rt_reg)
Lot.create(name: "716", site_type: st_reg, rate: rt_reg)
Lot.create(name: "717", site_type: st_reg, rate: rt_reg)
Lot.create(name: "718", site_type: st_reg, rate: rt_reg)
Lot.create(name: "719", site_type: st_reg, rate: rt_reg)
Lot.create(name: "720", site_type: st_reg, rate: rt_reg)
Lot.create(name: "721", site_type: st_reg, rate: rt_reg)
Lot.create(name: "722", site_type: st_reg, rate: rt_reg)
Lot.create(name: "723", site_type: st_reg, rate: rt_reg)
Lot.create(name: "724", site_type: st_reg, rate: rt_reg)
Lot.create(name: "725", site_type: st_reg, rate: rt_reg)
Lot.create(name: "726", site_type: st_reg, rate: rt_reg)
Lot.create(name: "727", site_type: st_reg, rate: rt_reg)
Lot.create(name: "728", site_type: st_reg, rate: rt_reg)
Lot.create(name: "729", site_type: st_ove, rate: rt_ove)
Lot.create(name: "730", site_type: st_reg, rate: rt_reg)
Lot.create(name: "731", site_type: st_reg, rate: rt_reg)
Lot.create(name: "733", site_type: st_reg, rate: rt_reg)
Lot.create(name: "734", site_type: st_ove, rate: rt_ove)
Lot.create(name: "735", site_type: st_reg, rate: rt_reg)
Lot.create(name: "736", site_type: st_reg, rate: rt_reg)
Lot.create(name: "737", site_type: st_reg, rate: rt_reg)
Lot.create(name: "738", site_type: st_reg, rate: rt_reg)
Lot.create(name: "739", site_type: st_reg, rate: rt_reg)