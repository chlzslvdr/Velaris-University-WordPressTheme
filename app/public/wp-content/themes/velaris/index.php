<?php
    $myName = "Feyre";

    $names = array('Rhysand', 'Amren', 'Cassian', 'Azriel');
    $count = 0 ;

    while($count < count($names)) {
        echo "<li>Hi, my name is $names[$count].</li>";
        $count++;
    }

?>

<p>Hi my name is <? echo $myName; ?>.</p>
