<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form method="post"id="change">
    
    </form>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script type="text/javascript">
        stockarray = [
            {id:1,
            name:"TCS"},
            {id:2,
            name: "JFS"},
            {id:3,
            name: "Infosys"},
            {id:4,
            name: "Wipro"},
            {id:5,
            name: "LIC"},
            {id:6,
            name: "HDFC"},
            {id:7,
            name: "SBI"},
            {id:8,
            name: "Bajaj Finance"},
            {id:9,
            name: "YES"},

            {id:10,
            name: "Maruti Suzuki"},
            {id:11,
            name: "Tata Motors"},
            {id:12,
            name: "Bajaj Auto"},
            {id:13,
            name: "Bharat Forge"},

            {id:14,
            name: "Sun Pharma"},
            {id:15,
            name: "Dr. Reddy"},
            {id:16,
            name: "Zydus"},
            {id:17,
            name: "Cipla"},

            {id:18,
            name: "Titan Company"},
            {id:19,
            name: "Page Industries"},
            {id:20,
            name: "HUL"},
            {id:21,
            name: "Tata Cons. Products"},

            {id:22,
            name: "Adani Enterprise"},
            {id:23,
            name: "Jindal Steel"},
            {id:24,
            name: "Tata Steel"},
            {id:25,
            name: "Coal India"},

            {id:26,
            name: "Adani Ports"},
            {id:27,
            name: "Ambuja Cements"},
            {id:28,
            name: "L&T"},
            {id:29,
            name: "Tata Power"},
            {id:30,
            name: "Ultratech Cements"},

            {id:31,
            name: "Reliance Ind."},
            {id:32,
            name: "Reliance Ind."},
            {id:33,
            name: "IOC"},
            {id:34,
            name: "GAIL"},
        ];
        var load = ""
        for(i=0;i<stockarray.length;i++){
            load += `<input type="text" name="${stockarray[i].id}" placeholder="${stockarray[i].name}">`
        }
        load+= '<br /><br /><input type="reset" value="reset"><br /><br /><br /><br /><input type="submit" value="submit">'
        document.getElementById('change').innerHTML = load;
        $('#change').submit(function(e){
            e.preventDefault();
            var data = $(this).serializeArray();
            send= {}
            for(i=0;i<data.length;i++){
                send[data[i].name] = data[i].value;
            }console.log(send);

            
            $.post('./changing.php',send,(data,sts)=>{
                console.log(sts,data);
            });
        }) 
        
        setInterval(() => {
            $.post('../random/random.php',{},(data,sts)=>{
                console.log(sts,data);
            });
        }, 1000);
    </script>
</body>
</html>