proc validate {args} {

foreach address $args {

    set output [exec "ping $address"]

    puts $output

    if { [regexp {.!!!!} $output] } {

        set output [exec "traceroute $address"]

        puts $output

    }



}

}



validate 192.168.223.3 192.168.0.253