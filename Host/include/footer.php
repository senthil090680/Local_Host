<!------------------------------- Footer ------------------------------------------------->

<div id="footer">
<div class="left"><a href="#">...a solution from TTS</a></div>
<div class="right"><a href="#">
<?php 
$time_now=mktime(date('g')+4,date('i')-30,date('s')); 
$time = date('d-M-Y / h:i A',$time_now); 
echo $time;
?></a></div>
</div>

<!------------------------------- Wrapper End ---------------------------------------->
</div>
</body>
</html>
