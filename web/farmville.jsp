<html>
    <head>
        <style type="text/css"> 
            body, html {
            margin: 0px;
            padding: 0px;
            }
            
            #outer-div {
            display: block !important;
            width: 755px;
            height: 590px;
            }
            
            #outer-div2 
            { 
            width: 1200px; 
            height: 700px; 
            overflow: hidden; 
            position: relative; 
            }
            
            #inner-iframe 
            { 
            position:absolute; 
            top: 0px; 
            left: 0px; 
            width: 1200px; 
            height: 772px; 
            }
        </style>
        
    </head>
    
    <body>
        
        <div id="outer-div">
            
            <div id="outer-div2"> 
                
                <iframe frameborder="0" scrolling="no" id="inner-iframe"  src="http://www.farmville.com"></iframe>
                
            </div>
            
        </div>
        
    </body>  
</html>