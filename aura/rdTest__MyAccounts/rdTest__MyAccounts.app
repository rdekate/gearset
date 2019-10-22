<aura:application >
   <link href='/resource/BootstrapSF1/' rel="stylesheet"/>
   <link href='/resource/mdb/' rel="stylesheet"/>
    <ltng:require
             
    scripts="{!join(',',
            $Resource.JQuery + '/jquery-3.3.1.min.js',
            $Resource.mdb + '/mdb.min.js')}"
 
    afterScriptsLoaded="" />
	<div class="container">
		<nav role="navigation" class="navbar navbar-inverse">
			<div class="navbar-header">
				<a href="#" class="navbar-brand">Accounts Details</a>
			</div>
			<div id="navbarCollapse" class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">Home</a></li>
					<li><a href="#">Profile</a></li>
					<li><a href="#">Messages</a></li>
				</ul>
			</div>
             </nav>
       </div>  
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <c:accountListComponent/>
            </div>
        </div>
    </div>    
</aura:application>