glob *.tcl
glob -type d *


set files [glob -directory "harddisk:/BGP-script" -- *]

if { [llength $files] == 10 } {

    set oldest [list [lindex $files 0] [file mtime [lindex $files 0]]]

    foreach file $files {

        set mtime [file mtime $file]

        if { $mtime < [lindex $oldest 1] } {

            set oldest [list $file $mtime]

        }

    }

    file delete -force [lindex $oldest 0]

}