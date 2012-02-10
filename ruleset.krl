ruleset a421x110 {
    meta {
        name "Starting Sky"
            description <<
                Getting started with the Kynetx Sky API
            >>
            author "Randall Bohn"
            logging on
    }

    dispatch {
        // domain "exampley.com"
    }

    global {

    }

    rule zero {
        select when alien detected
        if (event:attr('race') eq 'Klingon') then {
            send_directive("shields up");
        }
    }

    rule one {
        select when alien detected
        if (event:attr('race') eq 'Wookie') then {
            send_directive("let the wookie win");
        }
    }
}

