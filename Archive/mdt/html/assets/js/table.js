$(document).ready(function(){
var logo = '#logo';
var logintext = '#logintext'
var departments = '#departments'
var playersearch = '#playersearch'
var playertable = '#playertable'
var stats = '#stats'
var tabs = '#tabs'
var reports = '#reports'
var reportstable = '#reportstable'
var policefooter = '#policefooter'
var arrestRow = '#ArrestsRow'
var ticketsRow = '#TicketsRow'
var vehiclesRow = '#VehiclesRow'
var addArrestRow = '#AddArrestRow'
var addCitationRow = '#AddCitationRow'
var notepadRow = '#NotepadRow'
var firstnamev = ""
var homepage = '#homepage'
var lastnamev = ""
var warrants = '#selectedwarrant'
var warrantsedit = '#warrantsedit'
var citationview = '#ViewCitation'
var newevent = '#NewEvent'
var newannouncement = '#NewAnnouncement'
var newbolo = '#NewBOLO'
var arrestview = '#ViewArrest'
var isDeleting = false

function openMDT(){ 
    $('body').css("display", "block");
    $('body').show();
};
function closeMDT(){
    document.close();
    $('body').css("display", "none");
    $('body').hide();
};

function closeWarrants(){
    $('#WarrantHeader').hide();
    $('#WarrantRowOne').hide();
    $('#WarrantRowTwo').hide();
    $('#WarrantRowThree').hide();
    $('#WarrantRowFour').hide();
}

function openWarrants(){
    $('#WarrantHeader').show();
    $('#WarrantRowOne').show();
    $('#WarrantRowTwo').show();
    $('#WarrantRowThree').show();
    $('#WarrantRowFour').show();
    $('#warrant-add').show();
}

$(playersearch).hide();
$(playertable).hide();
$(stats).hide();
$(tabs).hide();
$(warrants).hide();
$(warrantsedit).hide();
$(reports).hide();
$(reportstable).hide();
$(policefooter).hide();
$(arrestRow).hide();
$(ticketsRow).hide();
$(vehiclesRow).hide();
$(addArrestRow).hide();
$(addCitationRow).hide();
$(notepadRow).hide();
$('#ViewBolos').show();
$('#ViewAnnounc').show();
$('#ViewEvent').show();
$(homepage).hide();
$(citationview).hide();
$(arrestview).hide();
$(newannouncement).hide();
$(newbolo).hide();
$(newevent).hide();
$('body').hide();
$('#WarrantHeader').hide();
$('#WarrantRowOne').hide();
$('#WarrantRowTwo').hide();
$('#WarrantRowThree').hide();
$('#WarrantRowFour').hide();
$('#warrant-add').hide();
$('#report-submit').hide();
$('#reportst').hide();
$('#SubmitAnnouncementBtn').hide();
$('#SubmitBOLOBtn').hide();
$('#SubmitEventBtn').hide();

function closeAllPoliceNoFooter() {
    $(playersearch).hide();
    $(playertable).hide();
    $(stats).hide();
    $(tabs).hide();
    $(warrants).hide();
    $(warrantsedit).hide();
    $(reports).hide();
    $(reportstable).hide();
    $(arrestRow).hide();
    $(ticketsRow).hide();
    $(vehiclesRow).hide();
    $(addArrestRow).hide();
    $(addCitationRow).hide();
    $(notepadRow).hide();
    $(homepage).hide();
    $(citationview).hide();
    $(arrestview).hide();
    $(newannouncement).hide();
    $(newbolo).hide();
    $(newevent).hide();
    $('#WarrantHeader').hide();
    $('#WarrantRowOne').hide();
    $('#WarrantRowTwo').hide();
    $('#WarrantRowThree').hide();
    $('#WarrantRowFour').hide();
    $('#warrant-add').hide();
    $('#report-submit').hide();
    $('#reportst').hide();
    $('#SubmitAnnouncementBtn').hide();
    $('#SubmitBOLOBtn').hide();
    $('#SubmitEventBtn').hide();
};

function closeAllPoliceWithFooter() {
    $(playersearch).hide();
    $(playertable).hide();
    $(stats).hide();
    $(tabs).hide();
    $(warrants).hide();
    $(warrantsedit).hide();
    $(reports).hide();
    $(reportstable).hide();
    $(policefooter).hide();
    $(arrestRow).hide();
    $(ticketsRow).hide();
    $(vehiclesRow).hide();
    $(addArrestRow).hide();
    $(addCitationRow).hide();
    $(notepadRow).hide();
    $(homepage).hide();
    $(citationview).hide();
    $(arrestview).hide();
    $(newannouncement).hide();
    $(newbolo).hide();
    $(newevent).hide();
    $('#WarrantHeader').hide();
    $('#WarrantRowOne').hide();
    $('#WarrantRowTwo').hide();
    $('#WarrantRowThree').hide();
    $('#WarrantRowFour').hide();
    $('#warrant-add').hide();
    $('#report-submit').hide();
    $('#reportst').hide();
    $('#SubmitAnnouncementBtn').hide();
    $('#SubmitBOLOBtn').hide();
    $('#SubmitEventBtn').hide();
};

    $("#playerarrestrow").delegate('#playerarrestrow2', 'click', function(event){
        var $row = jQuery(this).closest('tr');
        var $columns = $row.find('td');

        var values = [];

        jQuery.each($columns, function(i, item) {
            values.push(item.innerHTML);
        });
        
        cell_value = values[0]
        $.post('http://mdt/loadarrestslip', JSON.stringify({id: cell_value}));  
    });
    $("#playerticketsrow").delegate('#playerticketsrow2', 'click', function(event){
        var $row = jQuery(this).closest('tr');
        var $columns = $row.find('td');

        var values = [];

        jQuery.each($columns, function(i, item) {
            values.push(item.innerHTML);
        });
        
        cell_value = values[0]
        $.post('http://mdt/loadcitationslip', JSON.stringify({id: cell_value})); 
    });
    $(".row-which-fills-table").click(function(event){
        var $row = jQuery(this).closest('tr');
        var $columns = $row.find('td');

        var values = [];

        jQuery.each($columns, function(i, item) {
            values.push(item.innerHTML);
        });
        
        fillRow(values[0], values[1], values[2], values[3])
    });

    $("#reportsdirectory").delegate('#reportstable', 'click', function(event){
        var $row = jQuery(this).closest('tr');
        var $columns = $row.find('td');

        var values = [];

        jQuery.each($columns, function(i, item) {
            values.push(item.innerHTML);
        });
        
        idv = values[0]
        
        $.post('http://mdt/load-report', JSON.stringify({id: idv}));
    });

    $("#WarrantRowOne").delegate('#playerwarrant', 'click', function(event){
        var $col = jQuery(this).closest('div')
        var $warrant = $col.find('p')
        
        var idv = jQuery($warrant).attr("id");

        $.post('http://mdt/load-warrant', JSON.stringify({id: idv}))
    });

    $("#playertablez").delegate('.playerrow', 'click', function(event){
        var $row = jQuery(this).closest('tr');
        var $columns = $row.find('td');

        var values = [];

        jQuery.each($columns, function(i, item) {
            values.push(item.innerHTML);
        });
        
        firstnamev = values[2]
        lastnamev = values[1]
        idv = values[0]
        
        $.post('http://mdt/player', JSON.stringify({id: idv}));
        $.post('http://mdt/arrests', JSON.stringify({lastname: lastnamev, firstname: firstnamev}));
        $.post('http://mdt/tickets', JSON.stringify({lastname: lastnamev, firstname: firstnamev}));
        $.post('http://mdt/vehicles', JSON.stringify({id: idv}));
        $.post('http://mdt/load-notepad', JSON.stringify({id: idv}));
    });

    $("#searchplayer").click(function(event){
        
        var firstnamevz = $("#firstname").val();
        var lastnamevz = $("#lastname").val();

        if($("#firstname").val()) {
           $.post('http://mdt/search', JSON.stringify({firstname: firstnamevz, lastname: lastnamevz})); 
        }
        
    });

    $("#SubmitAnnouncementBtn").click(function(event){
        var announcofficer = jQuery("#announce-officer").val();
        var announcdescription = jQuery("#announce-description").val();
        $.post('http://mdt/addannouncement', JSON.stringify({officer: announcofficer, description: announcdescription})); 
        $('#ViewAnnounc').show();
        $('#HideAnnouncBtns').show();
        $(newannouncement).hide();
        $('#SubmitAnnouncementBtn').hide();
    });

    $("#SubmitBOLOBtn").click(function(event){
        var boloname = jQuery("#bolo-name").val();
        var bolodescription = jQuery("#bolo-description").val();
        $.post('http://mdt/addbolo', JSON.stringify({name: boloname, description: bolodescription})); 
        $('#ViewBolos').show();
        $('#HideBoloBtns').show();
        $(newbolo).hide();
        $('#SubmitBOLOBtn').hide();
    });

    $("#SubmitEventBtn").click(function(event){
        var eventdate = jQuery("#event-date").val();
        var eventtime = jQuery("#event-time").val();
        var eventdescription = jQuery("#event-description").val();
        $.post('http://mdt/addevent', JSON.stringify({date: eventdate, time: eventtime, description: eventdescription}));
        $('#ViewEvent').show();
        $('#HideEventBtns').show();
        $(newevent).hide();
        $('#SubmitEventBtn').hide();
    });

    $("#AddAnnouncementBtn").click(function(event){
        $('#ViewAnnounc').hide();
        $('#HideAnnouncBtns').hide();
        $(newannouncement).show();
        $('#SubmitAnnouncementBtn').show();
    });

    $("#AddBOLOBtn").click(function(event){
        $('#ViewBolos').hide();
        $('#HideBoloBtns').hide();
        $(newbolo).show();
        $('#SubmitBOLOBtn').show();
    });

    $("#AddEventBtn").click(function(event){
        $('#ViewEvent').hide();
        $('#HideEventBtns').hide();
        $(newevent).show();
        $('#SubmitEventBtn').show();
    });

    $("#RemoveAnnouncementBtn").click(function(event){
       if(confirm("Click on an announcement")){
            isDeleting = true
       }
    });

    $("#RemoveBOLOBtn").click(function(event){
        if(confirm("Click on a BOLO")){
            isDeleting = true
       }
    });

    $("#RemoveEventBtn").click(function(event){
        if(confirm("Click on an Event")){
            isDeleting = true
       }
    });

    $("#AppendAnnounc").delegate(".announcement", 'click', function(event){
        if(isDeleting==true){
            var idz = jQuery(this).attr("id");
            if(confirm("Are you sure you want to delete this?")){
                $.post('http://mdt/deleteannouncement', JSON.stringify({id: idz}));
                isDeleting = false
            }
        }
    });

    $("#WarrantRowOne").delegate(".playerwarrant", 'click', function(event){
        if(isDeleting==true){
            var $col = jQuery(this).closest('div')
            var $warrant = $col.find('p')
            
            var idv = jQuery($warrant).attr("id");
            if(confirm("Are you sure you want to delete this?")){
                $.post('http://mdt/deletewarrant', JSON.stringify({id: idv}));
                isDeleting = false
            }
        }
    });

    $("#AppendBolos").delegate(".bolo", 'click', function(event){
        if(isDeleting==true){
            var idz = jQuery(this).attr("id");
            if(confirm("Are you sure you want to delete this?")){
                $.post('http://mdt/deletebolo', JSON.stringify({id: idz}));
                isDeleting = false
            }
        }
    });


    $("#AppendEvents").delegate(".event", 'click', function(event){
        if(isDeleting==true){
            var idz = jQuery(this).attr("id");
            if(confirm("Are you sure you want to delete this?")){
                $.post('http://mdt/deleteevent', JSON.stringify({id: idz}));
                isDeleting = false
            }
        }
    });

    function closeLoginScreen() {
        $(logo).hide();
        $(departments).hide();
        $(logintext).hide();
    };

    function openLoginScreen() {
        $(logo).show();
        $(departments).show();
        $(logintext).show();
    };

    function openPlayerInformation(){
        $(playersearch).hide();
        $(playertable).hide();
        $(stats).show();
        $(tabs).show();
        $(arrestRow).show();
    };

    function closeSelectedRows(){
        $(arrestRow).hide();
        $(ticketsRow).hide();
        $(vehiclesRow).hide();
        $(addArrestRow).hide();
        $(addCitationRow).hide();
        $(notepadRow).hide();
        $(citationview).hide();
    };

    function resetHomeScreen(){
        $('#ViewBolos').show();
        $('#ViewAnnounc').show();
        $('#ViewEvent').show();
        $('HideEventBtns').show();
        $('HideAnnouncBtns').show();
        $('HideBoloBtns').show();
    };

      document.onkeyup = function (data) {
        if (data.which == 115 ) {
          $.post('http://mdt/close', JSON.stringify({}));
          closeMDT()
        }
        if (data.which == 27 ) {
          $('#SelectedMedicalReport').hide();
          $('#SelectedMedicalReport2').hide();
          $(citationview).hide();
          $(arrestview).hide();
          $('#selectedwarrant').hide();
        }
      };

    $("#lspdmdt").click(function(event){
        $.post('http://mdt/policeopen', JSON.stringify({}));
        $.post('http://mdt/loadannouncements', JSON.stringify({}));
        $.post('http://mdt/loadbolos', JSON.stringify({}));
        $.post('http://mdt/loadevents', JSON.stringify({}));
    });

    $("#searchplayer").click(function(event){
        $(playertable).show();
    });

    $("#Arrests").click(function(event){
        closeSelectedRows();
        $(arrestRow).show();
    });

    $("#Tickets").click(function(event){
        closeSelectedRows();
        $(ticketsRow).show();
    });

    $("#Vehicles").click(function(event){
        closeSelectedRows();
        $(vehiclesRow).show();
    });

    $("#AddArrest").click(function(event){
        closeSelectedRows();
        $(addArrestRow).show();
    });

    $("#AddCitation").click(function(event){
        closeSelectedRows();
        $(addCitationRow).show();
    });

    $("#Notepad").click(function(event){
        closeSelectedRows();
        $(notepadRow).show();
    });
    
    $("#databasebtn").click(function(event){
            closeAllPoliceNoFooter();
            resetHomeScreen();
            $(playersearch).show();
    });

    $("#warrantbtn").click(function(event){
            closeAllPoliceNoFooter();
            resetHomeScreen();
            $('#WarrantRowOne').empty();
            openWarrants();
            $.post('http://mdt/warrantload', JSON.stringify({}));
    });

    $("#reportbtn").click(function(event){
            closeAllPoliceNoFooter();
            resetHomeScreen();
            $('#reportst').show();
            $('#reportsdirectory').empty();
            $.post('http://mdt/load-reports', JSON.stringify({}));
    });

    $("#logoutbtn").click(function(event){
            closeAllPoliceWithFooter();
            resetHomeScreen();
            openLoginScreen();
    });
    $("#arrest-submit").click(function(event){
            var arrestofficername = jQuery("#arrest-officer_name").val();
            var arrestoffender_first_name = jQuery("#arrest-firstname").val();
            var arrestdescription = jQuery("#arrest-description").val();
            var arrestoffender_last_name = jQuery("#arrest-lastname").val();
            var arrestcharges = jQuery("#arrest-charges").val();
            var arrestfine = jQuery("#arrest-fine").val();
            var arrestsentence = jQuery("#arrest-sentence").val();
            $.post('http://mdt/submit-arrest', JSON.stringify({officer_name: arrestofficername, firstname: arrestoffender_first_name, lastname: arrestoffender_last_name, description: arrestdescription, charges: arrestcharges, fine: arrestfine, sentence: arrestsentence}));
    });
    $("#citation-submit").click(function(event){
            var citationofficername = jQuery("#citation-officer_name").val();
            var citationoffender_first_name = jQuery("#citation-firstname").val();
            var citationoffender_last_name = jQuery("#citation-lastname").val();
            var citationcharges = jQuery("#citation-charges").val();
            var citationfine = jQuery("#citation-fine").val();
            var citationplate = jQuery("#citation-plate").val();
            var citationmodel = jQuery("#citation-model").val();
            var citationcolor = jQuery("#citation-color").val();
            var citationstreet = jQuery("#citation-street").val();
            var citationcity = jQuery("#citation-city").val();
            $.post('http://mdt/submit-citation', JSON.stringify({officer_name: citationofficername, firstname: citationoffender_first_name, lastname: citationoffender_last_name, charges: citationcharges, fine: citationfine, plate: citationplate, model: citationmodel, color: citationcolor, street: citationstreet, city: citationcity}));
    });
    $("#warrant-add").click(function(event){
        closeWarrants();
        $('#warrantsedit').show();
    });
    $("#submit-warrant").click(function(event){
        closeWarrants();
        var w1 = jQuery('#warranteditfirstname').val();
        var w2 = jQuery('#warranteditlastname').val();
        var w3 = jQuery('#warranteditdescription').val();
        var w4 = jQuery('#warranteditofficer').val();
        var w5 = jQuery('#warranteditreason').val();
        var w6 = jQuery('#warranteditevidence').val();
        var w7 = jQuery('#warranteditsignature').val();
        var w8 = jQuery('#warranteditheader').val();
        $.post('http://mdt/submit-warrant', JSON.stringify({firstname: w1, lastname: w2, description: w3, officer: w4, reason: w5, evidence: w6, signature: w7, header: w8}));
        $('#warrantsedit').hide();
    });
    $("#delete-warrant").click(function(event){
        isDeleting = true
    });
    $("#warrant-remove").click(function(){
        if (confirm('Are you sure you want permanently delete this warrant?') === true) {
          $.post('http://mdt/warrantDelete', JSON.stringify({desc: $("#warrantid").val()}));
        }
    });
    $("#notepad-submit").click(function(event){
            var notepadtext = $("#notepad").val();
            var firstnamecheck = $("#playerfirstname").html();
            var lastnamecheck = $("#playerlastname").html();
            $.post('http://mdt/submit-notepad', JSON.stringify({firstname: firstnamecheck, lastname: lastnamecheck, notes: notepadtext}));
    });
    $('#citation-autofill').click(function(event){
        $.post('http://mdt/autofillCitations', JSON.stringify({}));
    });
    $('#arrest-autofill').click(function(event){
        $.post('http://mdt/autofillArrest', JSON.stringify({}));
    });
    $('#report-submit').click(function(event){
        if (confirm('Are you sure you want to submit this report?') === true) {
            var reportfullname = $('#reportfullname').val();
            var reportage = $('#reportage').val();
            var reportphonenumber = $('#reportphonenumber').val();
            var reportdate = $('#reportdate').val();
            var reporttime = $('#reporttime').val();
            var reportpolice = $('#reportpolice').val();
            var reportlocation = $('#reportlocation').val();
            var reportdescription = $('#reportdescription').val();
            var reportwchecky = $('#reportwchecky').is(":checked");
            var reportwcheckn = $('#reportwcheckn').is(":checked");
            var reportdetails = $('#reportdetails').val();
            var reportinjury = $('#reportinjury').val();
            var reportmedicaly = $('#reportmedicaly').is(":checked");
            var reportmedicaln = $('#reportmedicaln').is(":checked");
            var reportmedicalr = $('#reportmedicalr').is(":checked");
            var reportmedicalon = $('#reportmedicalon').is(":checked");
            var reportmedicaluc = $('#reportmedicaluc').is(":checked");
            var reportmedicaler = $('#reportmedicaler').is(":checked");
            var reportmedicalother = $('#reportmedicalother').is(":checked");
            var reportofficername = $('#reportofficername').val();
            var reportsignature = $('#reportsignature').val();
            var reportcompleted = $('#reportcompleted').val();
            $(reports).hide();
            $.post('http://mdt/submit-report', JSON.stringify({r1: reportfullname, r2: reportage, r3: reportphonenumber, r4: reportdate, r5: reporttime, r6: reportpolice, r7: reportlocation, r8: reportdescription, r9: reportwchecky, r10: reportwcheckn, r11: reportdetails, r12: reportinjury, r13: reportmedicaly, r14: reportmedicaln, r15: reportmedicalr, r16: reportmedicalon, r17: reportmedicaluc, r18: reportmedicaler, r19: reportmedicalother, r20: reportofficername, r21: reportsignature, r22: reportcompleted}));
        }
    });
    var olddescription = ""
    $('#warranteditbtn').click(function(event){
        $('#selectedwarrantdescription').attr("readonly", false); 
        $('#selectedwarrantcharges').attr("readonly", false); 
        olddescription = jQuery('#selectedwarrantdescription').val();
    });
    $('#warrantsubmitchanges').click(function(event){ 
        var editdesc = jQuery('#selectedwarrantdescription').val();
        var editcharge = jQuery('#selectedwarrantcharges').val();
        $.post('http://mdt/edit-warrant', JSON.stringify({description: olddescription, charges: editcharge, newdescription: editdesc}));
        $('#selectedwarrantdescription').text("" ); 
        $('#selectedwarrantcharges').text(" ");
        $('#selectedwarrantdescription').attr("readonly", true); 
        $('#selectedwarrantcharges').attr("readonly", true);
    });
    $('#report-new').click(function(event){
        $(reports).hide();
        $('#reportst').hide();
        $('#reportfullname').val("");
        $('#reportage').val("");
        $('#reportphonenumber').val("");
        $('#reportdate').val("");
        $('#reporttime').val("");
        $('#reportpolice').val("");
        $('#reportlocation').val("");
        $('#reportdescription').val("");
        $('#reportwchecky').prop('checked', false);
        $('#reportwcheckn').prop('checked', false);
        $('#reportdetails').val("");
        $('#reportinjury').val("");
        $('#reportmedicaly').prop('checked', false);
        $('#reportmedicaln').prop('checked', false);
        $('#reportmedicalr').prop('checked', false);
        $('#reportmedicalon').prop('checked', false);
        $('#reportmedicaluc').prop('checked', false);
        $('#reportmedicaler').prop('checked', false);
        $('#reportmedicalother').prop('checked', false);
        $('#reportofficername').val("");
        $('#reportsignature').val("");
        $('#reportcompleted').val(""); 
        $(reports).show();
        $('#report-submit').show();
    });

    function fillWarrant(offender_name, id, description, datez, officer, reason, evidence, signature) {
        $('#selectedwarrant').show();
        var splitString = offender_name.split(" ");
        var dateVal ="/Date(" + (datez * 1000) + ")/"; var date = new Date( parseFloat( dateVal.substr(6 ))); let timestamp = (date.getMonth() + 1) + "/" +    date.getDate() + "/" + date.getFullYear()
        jQuery('p#warrantfirstname').text(splitString[0]);
        jQuery('p#warrantlastname').text(splitString[1]);
        jQuery('p#warrantid').text(id);
        jQuery('p#warrantdescription').text(description);
        jQuery('p#warrantdate').text(timestamp);
        jQuery('p#warrantposting').text(officer);
        jQuery('p#warrantreason').text(reason);
        jQuery('p#warrantevidence').text(evidence);
        jQuery('p#warrantsignature').text(officer);
        jQuery('p#warrantheader').text(offender_name)
        closeWarrants();
    }

    var jobs = ["","Unemployed","Police","Pharmacist","futurjob2","futurjob","Farmer","Lumberjack","Gang","Miner","Fisher","Docker","Brewer","Vigneron","Livreur","Emergency","Mechanic","Taxi","FBI","Courier","Pool Cleaner","Garbage Collector","Tow","DOJ","Trucker","Bus Driver","Journalist"];

    function PlayerSearch(items) {
        $('#playertablez').empty();
        for(let i in items) {
            let item = items[i];
            $('#playertablez').append('<tr id = "playersearchzz" class="playerrow"><td>' + item.character_id + '</td><td>' + item.last_name + '</td><td>' + item.first_name + '</td><td>'  + jobs[item.job_id] + '</td></tr>')
        }
    }
    function PlayerArrests(items) {
        for(let i in items) {
            let item = items[i];
            var dateVal ="/Date(" + (item.timestamp * 1000) + ")/"; var date = new Date( parseFloat( dateVal.substr(6 ))); let timestamp = (date.getMonth() + 1) + "/" +    date.getDate() + "/" + date.getFullYear() + " " + date.getHours() + ":" + date.getMinutes() + ":" + date.getSeconds()    
            $('#playerarrestrow').append('<tr id = "playerarrestrow2"><td>' + item.id + '</td><td>' + timestamp + '</td><td>'  + "$" + item.fine + '</td><td>' + item.sentence + " Months" + '</td></tr>');        }
    }
    function PlayerTickets(items) {
        for(let i in items) {
            let item = items[i];
            var dateVal ="/Date(" + (item.timestamp * 1000) + ")/"; var date = new Date( parseFloat( dateVal.substr(6 ))); let timestamp = (date.getMonth() + 1) + "/" +    date.getDate() + "/" + date.getFullYear() + " " + date.getHours() + ":" + date.getMinutes() + ":" + date.getSeconds()                
            $('#playerticketsrow').append('<tr id = "playerticketsrow2"><td>' + item.id + '</td><td>' + timestamp + '</td><td>'  + "$" + item.fine + '</td></tr>');
        }
    }
    function PlayerVehicles(items) {
        for(let i in items) {
            let item = items[i];
            if(item.state.match("~g~")) {
                var stored = item.state.slice(3);
            }
            if(item.state.match("~r~")) {
                var stored = item.state.slice(3);
            }
            $('#playervehiclesrow').append('<tr id = "playervehicleszz"><td>' + item.model.charAt(0).toUpperCase() + item.model.substr(1) + '</td><td>' + item.plate + '</td><td>' + stored + '</td></tr>');
        }
    }
    function LoadWarrants(items) {
        for(let i in items) {
            let item = items[i];
            $('#WarrantRowOne').append('<div class="col-md-4 playerwarrant" id = "playerwarrant" style="background-color:#ffffff;border:groove;"><p class="text-center" id="' + item.id + '">'+ item.offender_name +'</p></div>');
        }
    }
    function PlayerNotepad(items){
        for(let i in items) {
            let item = items[i];
            $('#notepad').text(item.notes)   
        }
    }
    function loadReports(items){
        for(let i in items) {
            let item = items[i]
            $('#reportsdirectory').append(('<tr id = "reportstable"><td>' + item.id + '</td><td>' + item.r20 + '</td><td>' + item.r4 + '</td></tr>'))
        }
    }

    function loadAnnouncements(items){
        for(let i in items) {
            let item = items[i]
            $('#AppendAnnounc').append('<p class = "announcement" style="font-size:11px;" id = "' + item.id + '">' + item.officer + ": " + item.description + '</p><hr>')
        }
    }

    function loadBolos(items){
        for(let i in items) {
            let item = items[i]
            $('#AppendBolos').append('<p class = "bolo" style="font-size:13px;color:rgb(255,0,0);font-weight:bold;" id = "' + item.id + '">' + item.name + ": " + item.description + '</p><hr>')
        }
    }

    function loadEvents(items){
        for(let i in items) {
            let item = items[i]
            $('#AppendEvents').append('<p class = "event" style="font-size:11px;" id = "' + item.id + '">' + item.date + " | @ " + item.time + ' | ' + item.description + '</p><hr>')
        }
    }

    function fillCitationSlip(name, id, datez, plate, model, color, street, city, charges, fine, officer_name){
        var dateVal ="/Date(" + (datez * 1000) + ")/"; var date = new Date( parseFloat( dateVal.substr(6 ))); let timestamp = (date.getMonth() + 1) + "/" + date.getDate() + "/" + date.getFullYear()    
        $('p#citationname').text(name);
        $('p#citationid').text(id);
        $('p#citationdate').text(timestamp);
        $('p#citiationplate').text(plate);
        $('p#citationmodel').text(model);
        $('p#citationcolor').text(color);
        $('p#citationstreet').text(street);
        $('p#citationcity').text(city);
        $('p#citationcharges').text(charges);
        $('p#citationfine').text("$" + fine);
        $('p#citationsignature').text(officer_name);
        $(citationview).show();
    }

    function fillArrestSlip(offender_name, id, description, datez, officer, charges, jail, fine, officersignature){
        var splitString = offender_name.split(" ");
        var dateVal ="/Date(" + (datez * 1000) + ")/"; var date = new Date( parseFloat( dateVal.substr(6 ))); let timestamp = (date.getMonth() + 1) + "/" +    date.getDate() + "/" + date.getFullYear()    
        $('p#arrestfirstname').text(splitString[0]);
        $('p#arrestlastname').text(splitString[1]);
        $('p#arrestid').text(id);
        $('p#arrestdescription').text(description);
        $('p#arrestdate').text(timestamp);
        $('p#arrestofficer').text(officer);
        $('p#arrestcharges').text(charges);
        $('p#arrestjail').text(jail + " Months");
        $('p#arrestfine').text("$" + fine);
        $('p#arrestofficersignature').text(officer)
        $(arrestview).show();
    }

    function LoadInformation(warrants, arrests, citations, citizenid, firstname, lastname, weapons, drivers) {
        jQuery("#playerwarrants").text(warrants);
        jQuery("#playerarrests").text(arrests);
        jQuery("#playercitations").text(citations);
        jQuery("#playercitizenid").text(citizenid);
        jQuery("#playerfirstname").text(firstname);
        jQuery("#playerlastname").text(lastname);
        if (weapons === "true"){
            jQuery("#playerweaponsl").text("True");
        } else{
            jQuery("#playerweaponsl").text("False");
        }
        if (drivers === "true"){
            jQuery("#playerdriversl").text("Active");
        } else{
            jQuery("#playerdriversl").text("Suspended");
        }
    }

    // Listen for NUI Events
  window.addEventListener('message', function(event){
    var item = event.data;
    if(item.openSection == "police_mdt") {
        closeLoginScreen();
        $(policefooter).show();
        $('#homepage').show();
    }
    if(item.openSection == "tableofplayers") {
      PlayerSearch(item.list);
      $(playertable).show();
    }
    if(item.openSection == "playerinformation") {
        LoadInformation(item.warrants, item.arrests, item.citations, item.citizenid, item.firstname, item.lastname, item.weaponsl, item.driversl);
        openPlayerInformation();
    }
    if(item.openSection == "playerarrests") {
        jQuery("#playerarrestrow").empty();
        PlayerArrests(item.list);
    }
    if(item.openSection == "playertickets") {
        jQuery("#playerticketsrow").empty();
        PlayerTickets(item.list);
    }
    if(item.openSection == "playervehicles") {
        jQuery("#playervehiclesrow").empty();
        PlayerVehicles(item.list);
    }
    if(item.openSection == "addNewArrest") {
        $('#arrest-officer_name').text("");
        $('#arrest-firstname').text("");
        $('#arrest-lastname').text("");
        $('#arrest-description').text("");
        $('#arrest-charges').text("");
        $('#arrest-fine').text("");
        $('#arrest-sentence').text("");
    }
    if(item.openSection == "addNewCitation") {
        $('#citation-officer_name').text("");
        $('#citation-firstname').text("");
        $('#citation-lastname').text("");
        $('#citation-charges').text("");
        $('#citation-fine').text("");
        $('#citation-plate').text("");
        $('#citation-model').text("");
        $('#citation-color').text("");
        $('#citation-street').text("");
        $('#citation-city').text("");
    }
    if(item.openSection == "openNotepad") {
        $("#notepad").empty();
        PlayerNotepad(item.list)
    }
    if(item.active === true) {
        openMDT();
    }
    if(item.active === false) {
       closeMDT();
    }
    if(item.openSection == "loadwarrants") {
        LoadWarrants(item.list);
    }
    if(item.openSection == "loadReports"){
        loadReports(item.list)
    } 
    if(item.openSection == "loadselectedwarrant") {
        fillWarrant(item.offender_name, item.id, item.description, item.datez, item.officer, item.reason, item.evidence, item.signature);
    }
    if(item.openSection == "autofill_arrests"){
        var splitString = item.offender_name.split(" ");
        $('#arrest-officer_name').text(item.officer_name);
        $('#arrest-firstname').text(splitString[0]);
        $('#arrest-lastname').text(splitString[1]);
        $('#arrest-charges').text(item.charges);
        $('#arrest-fine').text(item.fine);
        $('#arrest-sentence').text(item.sentence);
    }
    if(item.openSection == "autofill_citations"){
        var splitString = item.offender_name.split(" ");
        $('#citation-officer_name').text(item.officer_name);
        $('#citation-firstname').text(splitString[0]);
        $('#citation-lastname').text(splitString[1]);
        $('#citation-charges').text(item.charges);
        $('#citation-fine').text(item.fine);
    }
    if(item.openSection == "loadReport"){
        $(reports).show();
        $('#reportst').hide();

        $('#reportfullname').val("");
        $('#reportage').val("");
        $('#reportphonenumber').val("");
        $('#reportdate').val("");
        $('#reporttime').val("");
        $('#reportpolice').val("");
        $('#reportlocation').val("");
        $('#reportdescription').val("");
        $('#reportwchecky').prop('checked', false);
        $('#reportwcheckn').prop('checked', false);
        $('#reportdetails').val("");
        $('#reportinjury').val("");
        $('#reportmedicaly').prop('checked', false);
        $('#reportmedicaln').prop('checked', false);
        $('#reportmedicalr').prop('checked', false);
        $('#reportmedicalon').prop('checked', false);
        $('#reportmedicaluc').prop('checked', false);
        $('#reportmedicaler').prop('checked', false);
        $('#reportmedicalother').prop('checked', false);
        $('#reportofficername').val("");
        $('#reportsignature').val("");
        $('#reportcompleted').val(""); 

        $('#reportfullname').val(item.reportfullname);
        $('#reportage').val(item.reportage);
        $('#reportphonenumber').val(item.reportphonenumber);
        $('#reportdate').val(item.reportdate);
        $('#reporttime').val(item.reporttime);
        $('#reportpolice').val(item.reportpolice);
        $('#reportlocation').val(item.reportlocation);
        $('#reportdescription').val(item.reportdescription);
        if(item.reportwchecky == 0){
            $('#reportwchecky').prop('checked', false);
        } else {
            $('#reportwchecky').prop('checked', true);
        }
        if(item.reportwcheckn == 0){
            $('#reportwcheckn').prop('checked', false);
        } else {
            $('#reportwcheckn').prop('checked', true);
        }
        $('#reportdetails').val(item.reportdetails);
        $('#reportinjury').val(item.reportinjury);
        if(item.reportmedicaly == 0){
            $('#reportmedicaly').prop('checked', false);
        } else {
            $('#reportmedicaly').prop('checked', true);
        }
        if(item.reportmedicaln == 0){
            $('#reportmedicaln').prop('checked', false);
        } else {
            $('#reportmedicaln').prop('checked', true);
        }
        if(item.reportmedicalr == 0){
            $('#reportmedicalr').prop('checked', false);
        } else {
            $('#reportmedicalr').prop('checked', true);
        }
        if(item.reportmedicalon == 0){
            $('#reportmedicalon').prop('checked', false);
        } else {
            $('#reportmedicalon').prop('checked', true);
        }
        if(item.reportmedicaluc == 0){
            $('#reportmedicaluc').prop('checked', false);
        } else {
            $('#reportmedicaluc').prop('checked', true);
        }
        if(item.reportmedicaler == 0){
            $('#reportmedicaler').prop('checked', false);
        } else {
            $('#reportmedicaler').prop('checked', true);
        }
        if(item.reportmedicalother == 0){
            $('#reportmedicalother').prop('checked', false);
        } else {
            $('#reportmedicalother').prop('checked', true);
        }
        $('#reportofficername').val(item.reportofficername);
        $('#reportsignature').val(item.reportsignature);
        $('#reportcompleted').val(item.reportcompleted);
    }
    if(item.openSection == "loadSelectedCitation"){
        fillCitationSlip(item.name, item.id, item.date, item.plate, item.model, item.color, item.street, item.city, item.charges, item.fine, item.officer_name)
    }

    if(item.openSection == "loadSelectedArrest"){
        fillArrestSlip(item.name, item.id, item.description, item.date, item.officer, item.charges, item.jail, item.fine, item.signature)
    }

    if(item.openSection == "loadAnnouncements"){
        $('#AppendAnnounc').empty();
        loadAnnouncements(item.list)
    }

    if(item.openSection == "loadBolos"){
        $('#AppendBolos').empty();
        loadBolos(item.list)
    }

    if(item.openSection == "loadEvents"){
        $('#AppendEvents').empty();
        loadEvents(item.list)
    }
  });

    /*
    |--------------------------------------------------------------------------|
    | EMS MDT PORTION                                                          |
    |--------------------------------------------------------------------------|
    */

    var PatientTreatment = '#medicalsearch'
    var PatientTreatmentBtn = '#PatientTreatment'
    var AddTreatementBtn = '#AddTreatment'
    var PatientNotepadBtn = '#PatientNotepad'
    var PatientTable = '#medicaltable'
    var MedicalStats = '#medicalstats'
    var MedicalTabs = '#medicaltabs'
    var emsfooter = '#emsfooter'
    var mdatabase = '#medicaldatabasebtn'
    var mcertificates = '#deathdertificatesbtn'
    var mreports = '#medicalreportsbtn'
    var mlogout = '#medicallogoutbtn'
    var TreatementTable = '#TreatmentTable'
    var AddTreatmentForm = '#AddMedicalReport'
    var PatientNotepad = '#MedicalNotepad'

    $(PatientTreatment).hide();
    $(PatientTable).hide();
    $(MedicalStats).hide();
    $(MedicalTabs).hide();
    $(emsfooter).hide();
    $(TreatementTable).hide();
    $(AddTreatmentForm).hide();
    $(PatientNotepad).hide();
    $('#SelectedMedicalReport').hide();
    $('#SelectedMedicalReport2').hide();

    function emsLogout() {
        $(PatientTreatment).hide();
        $(PatientTable).hide();
        $(MedicalStats).hide();
        $(MedicalTabs).hide();
        $(emsfooter).hide();
        $(TreatementTable).hide();
        $(AddTreatmentForm).hide();
        $(PatientNotepad).hide();
        $('#SelectedMedicalReport').hide();
        $('#SelectedMedicalReport2').hide();
        openLoginScreen()
    }

    function closeAllEMSNoFooter(){
        $(PatientTreatment).hide();
        $(PatientTable).hide();
        $(MedicalStats).hide();
        $(MedicalTabs).hide();
        $(TreatementTable).hide();
        $(AddTreatmentForm).hide();
        $(PatientNotepad).hide();
        $('#SelectedMedicalReport').hide();
        $('#SelectedMedicalReport2').hide();
    }

    function EMSPlayerSearch(items) {
        $('#emsplayertablez').empty();
        for(let i in items) {
            let item = items[i];
            $('#emsplayertablez').append('<tr id = "emsplayertablezz" class="emsplayerrow"><td>' + item.character_id + '</td><td>' + item.last_name + '</td><td>' + item.first_name + '</td><td>'  + jobs[item.job_id] + '</td></tr>')
        }
    }

    function EMSLoadInformation(citizenid, firstname, lastname, record, dob, healthstatus, mentalstatus) {
        jQuery("#playermedicalreports").text(record);
        jQuery("#playdob").text(dob);
        jQuery("#playerhealthstatus").text(healthstatus);
        jQuery("#emscitizenid").text(citizenid);
        if (mentalstatus == 1){
            $('#emsdangerous').prop('checked', true);
        }else if(mentalstatus == 2){
            $('#emsmental').prop('checked', true);
        }else{
            $('#emssane').prop('checked', true);
        }
    }

    function EMSLoadRecord(items) {
        $('#playerrecordrow').empty();
        for(let i in items) {
            let item = items[i];
            var dateVal ="/Date(" + (item.date * 1000) + ")/"; var date = new Date( parseFloat( dateVal.substr(6 ))); let timestamp = (date.getMonth() + 1) + "/" +    date.getDate() + "/" + date.getFullYear() + " " + date.getHours() + ":" + date.getMinutes() + ":" + date.getSeconds()    
             $('#playerrecordrow').append('<tr id = "playerrecordrow2"><td class="cell-which-triggers-popup">' + item.id + '</td><td>' + timestamp + '</td><td>' + item.description + '</td></tr>');
        }
    }

    function emsNotepad(items){
        for(let i in items) {
            let item = items[i];
            $('#patientnotepadval').text(item.notes)   
        }
    }

    $("#lsfdmdt").click(function(event){
        $.post('http://mdt/emsopen', JSON.stringify({}));
    });

    function hideTabForms(){
        $(TreatementTable).hide();
        $(AddTreatmentForm).hide();
        $(PatientNotepad).hide();
        $('#SelectedMedicalReport').hide();
        $('#SelectedMedicalReport2').hide();
    }

    function hideSlip(){
        $('#mdfirstname').hide();
        $('#mdlastname').hide();
        $('#mdage').hide();
        $('#mdgender').hide();
        $('#mddate').hide();
        $('#mdlocation').hide();
        $('#mdinjuries').hide();
        $('#mdtreatment').hide();
        $('#mdparasignature').hide();
        $('#mddocsignature').hide();
    }

    function FillSlip(firstname, lastname, age, gender, datez, location, description, treatment, parasign, docsign){
        var dateVal ="/Date(" + (datez * 1000) + ")/"; var date = new Date( parseFloat( dateVal.substr(6 ))); let timestamp = (date.getMonth() + 1) + "/" +    date.getDate() + "/" + date.getFullYear()    
        $('p#mdfirstname').text(firstname);
        $('p#mdlastname').text(lastname);
        $('p#mdage').text(age);
        $('p#mdgender').text(gender);
        $('p#mddate').text(timestamp);
        $('p#mdlocation').text(location);
        $('p#mdinjuries').text(description);
        $('p#mdtreatment').text(treatment);
        $('p#mdparasignature').text(parasign);
        $('p#mddocsignature').text(docsign);
        $('#SelectedMedicalReport').show();
        $('#SelectedMedicalReport2').show();
    }

    $(PatientTreatmentBtn).click(function(event){
        hideTabForms();
        $(TreatementTable).show();
        var firstnamev = jQuery("#emsfirstnametwo").html();
        var lastnamev = jQuery("#emslastnametwo").html();
        $.post('http://mdt/emsreportsload', JSON.stringify({firstname: firstnamev, lastname: lastnamev}));
    });

    $(AddTreatementBtn).click(function(event){
        hideTabForms();
        $(AddTreatmentForm).show();
    });

    $(PatientNotepadBtn).click(function(event){
        hideTabForms();
        $(PatientNotepad).show();
    });

    $("#playerrecordrow").delegate("#playerrecordrow2", 'click', function(event){
        var $row = jQuery(this).closest('tr');
        var $columns = $row.find('td');

        var values = [];

        jQuery.each($columns, function(i, item) {
            values.push(item.innerHTML);
        });
        
        cell_value = values[0]
        $.post('http://mdt/loadmedicalslip', JSON.stringify({id: cell_value}));
    });

    $("#emsplayertablez").delegate('.emsplayerrow', 'click', function(event){
        var $row = jQuery(this).closest('tr');
        var $columns = $row.find('td');

        var values = [];

        jQuery.each($columns, function(i, item) {
            values.push(item.innerHTML);
        });
        
        firstnamev = values[2]
        lastnamev = values[1]

        $("#emsfirstnametwo").text(firstnamev);
        $("#emslastnametwo").text(lastnamev);
        
        $.post('http://mdt/emsplayer', JSON.stringify({lastname: lastnamev, firstname: firstnamev}));
/*        $.post('http://mdt/ems-notepad', JSON.stringify({firstname: firstnamev, lastname: lastnamev}));
*/    });

    $(mdatabase).click(function(event){
        closeAllEMSNoFooter();
        $(PatientTreatment).show();
    });

    $('#patientescape').click(function(event){
        $(AddTreatmentForm).hide();
    });

    function ClearPatientInput(){
        var mdfirstname = $('#firstnamemd').val('');
        var mdlastname = $('#lastnamemd').val('');
        var mdage = $('#agemd').val('');
        var mdgender = $('#gendermd').val('');
        var mddate = $('#datemd').val('');
        var mdlocation = $('#locationmd').val('');
        var mdinjuries = $('#injuriesmd').val('');
        var mdtreatment = $('#treatmentmd').val('');
        var mdtparasign = $('#parasignaturemd').val('');
        var mddocsign = $('#docsignaturemd').val('');
    }

    $('#patientsubmit').click(function(event){
        hideTabForms();
        var mdfirstname = $('#firstnamemd').val();
        var mdlastname = $('#lastnamemd').val();
        var mdage = $('#agemd').val();
        var mdgender = $('#gendermd').val();
        var mddate = $('#datemd').val();
        var mdlocation = $('#locationmd').val();
        var mdinjuries = $('#injuriesmd').val();
        var mdtreatment = $('#treatmentmd').val();
        var mdtparasign = $('#parasignaturemd').val();
        var mddocsign = $('#docsignaturemd').val();
        $.post('http://mdt/submitmedicalreport', JSON.stringify({firstname: mdfirstname, lastname: mdlastname, age: mdage, gender: mdgender, date: mddate, location: mdlocation, injuries: mdinjuries, treatment: mdtreatment, parasign: mdtparasign, docsign: mddocsign}));
        ClearPatientInput();
    });

    $('#patientnotepadsubmit').click(function(event){
        var notepadv = $('#patientnotepadval').val();
        var firstnamev = jQuery("#emsfirstnametwo").html();
        var lastnamev = jQuery("#emslastnametwo").html();
        $.post('http://mdt/emsnotepad', JSON.stringify({firstname: firstnamev, lastname: lastnamev, notepad: notepadv}));
    });

    $('#emssearch').click(function(event){
        var emsfirstname = $('#emsfirstname').val(); 
        var emslastname =  $('#emslastname').val();
        $.post('http://mdt/emssearch', JSON.stringify({firstname: emsfirstname}));
        $('#emsdangerous').prop('checked', false);
        $('#emsmental').prop('checked', false);
        $('#emssane').prop('checked', false);
    });

    $('#healthstatus').click(function(event){
        var firstnamev = jQuery("#emsfirstnametwo").html();
        var lastnamev = jQuery("#emslastnametwo").html();
        var healthstatusd = $('#emsdangerous').is(":checked");
        var healthstatusm = $('#emsmental').is(":checked");
        var healthstatuss = $('#emssane').is(":checked");
        if(healthstatusd = 1){
            $.post('http://mdt/emsmentalstatus', JSON.stringify({firstname: firstnamev, lastname: lastnamev, status: 1}))
            $('#emsmental').prop('checked', false);
            $('#emssane').prop('checked', false);
        }
        if(healthstatusm = 1){
            $.post('http://mdt/emsmentalstatus', JSON.stringify({firstname: firstnamev, lastname: lastnamev, status: 2}))
            $('#emsdangerous').prop('checked', false);
            $('#emssane').prop('checked', false);
        }
        if(healthstatuss = 1){
            $.post('http://mdt/emsmentalstatus', JSON.stringify({firstname: firstnamev, lastname: lastnamev, status: 3}))
            $('#emsdangerous').prop('checked', false);
            $('#emsmental').prop('checked', false);
        }
    });

    $(mlogout).click(function(event){
        emsLogout();
    });

    window.addEventListener('message', function(event){
        var item = event.data;
        if(item.openSection == "ems_mdt") {
            closeLoginScreen();
            $(emsfooter).show();
        }
        if(item.openSection == "emstable") {
          EMSPlayerSearch(item.list);
          $(PatientTable).show();
        }
        if(item.openSection == "ems-playerinformation") {
            EMSLoadInformation(item.citizenid, item.firstname, item.lastname, item.record, item.dob, item.healthstatus, item.mentalstatus);
            $(PatientTable).hide();
            $(PatientTreatment).hide();
            $(MedicalStats).show();
            $(MedicalTabs).show();
        }
        if(item.openSection == "playeremsrecords") {
          EMSLoadRecord(item.list);
        }
        if(item.openSection == "emsOpenNotepad") {
            $("#patientnotepadval").empty();
            emsNotepad(item.list);
        }
        if(item.openSection == "loadSelectedReport") {
            FillSlip(item.firstname, item.lastname, item.age, item.gender, item.date, item.location, item.description, item.treatment, item.parasign, item.docsign);
        }
    });
});