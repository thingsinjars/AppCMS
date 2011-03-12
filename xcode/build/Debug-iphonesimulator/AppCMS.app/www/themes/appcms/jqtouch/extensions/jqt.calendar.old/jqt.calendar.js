/*
  #####################################################################

  jQTouch iCal, 1.0 alpha
  @created by
    Bruno Alexandre, 26.03.2010
    twitter.com/balexandre
    balexandre.com
    bruno.in.dk [at] gmail.com

    Modified by Simon Madine for the AppCMS

	This entire codebase needs an overhaul
	- Make it into a proper jQTouch extension
	- get rid of all the explocit class setting
	- tidy the month generation
	- have events read from the DOM

  #####################################################################
*/

// Global variables
var now = new Date();

// Loads the calendar for the passed Month and Year
function getCalendar(date) {
  var d = date.getDate();
  var m = date.getMonth(); // zero index based
  var y = date.getFullYear();

  // clear existing calendar
  $('#ical').empty();
  // append generated calendar markup
  $(calendarCode(m,y)).appendTo('#ical');

  //Run through dates and add a class to those with events
  loadEvents();

  // set all clicks (don't use live or tap to avoid bugs)
  setBindings();

  // today if exists
  setToday();

  // verify if selected date has events, if it has, load them
  setSelectedAndLoadEvents(date);

}
function getEvents(date) {
  var d = date.getDate();
  var m = date.getMonth() + 1; // zero index based
  var y = date.getFullYear();

  $('#ical .events').empty();
  $(generateEvents(d,m,y)).appendTo('#ical .events');
}

// no events
function getNoEvents() {
  var noEvents = "<li class='no-event'>No Events</li>";
  $('#ical .events').empty();
  $(noEvents).appendTo('#ical .events');
}

// Sets all clicks
function setBindings() {
	var now = new Date();
  // calendar days
  $('#ical td').bind("click", function() {
    RemoveSelectedCell();
	$(this).addClass('selected');

    var clickedDate = getClickedDate($(this));


    setToday();

    if( $(this).hasClass('date_has_event') ) {
      	getEvents(clickedDate);
		jQT.setPageHeight();
    } else {
      getNoEvents();
	}

    if( $(this).hasClass('prevmonth') || $(this).hasClass('nextmonth') ) {
      getCalendar(clickedDate);
    }
  });

  // load previous Month
  $("#ical .goto-prevmonth").bind("click", function() {
    loadPrevNextMonth(-1);
  });
  // load next Month
  $("#ical .goto-nextmonth").bind("click", function() {
    loadPrevNextMonth(1);
  });

}
// Resets today's/chosen day
function RemoveSelectedCell() {
  $('#ical .selected').removeClass('selected');
}
// get clicked Date
function getClickedDate(cell) {
  var date = $(cell).find('input').val();

  var clickedDate = getDateFromHiddenField(date);
  return clickedDate;
}
// Load the previous
function loadPrevNextMonth(num) {
  var day = $('#ical .selected').text();
  if(day == "") day = $('#ical .selected').text();

  var mmm = parseInt($('#ical > #month').val());
  var yyy = $('#ical > #year').val();

  var currentDay = new Date(yyy, mmm - 1, day);
  if(num == 1)
    currentDay.nextMonth();
  else
    currentDay.prevMonth();

  getCalendar(currentDay);
}
// Set Today's date
function setToday() {
	$("#ical :hidden").each(function(index){
		var dt = getDateFromHiddenField($(this).val());
		var now = new Date();
		if(!isNaN(dt)) {
			if( now.getDate() == dt.getDate() && now.getMonth() == dt.getMonth() && now.getFullYear() == dt.getFullYear()) {
            	var td = $(this).closest('td');
				$(td).addClass('today');
      		}
    	}
  	});
}

function getDateFromHiddenField(date) {
  var a = date.split('-');
  return new Date(a[2],a[1]-1,a[0]);
}
function loadEvents() {
  $('#ical td').each( function(index) {
    clickedDate = getClickedDate($(this));
    if(hasEvent(clickedDate.getDate(), clickedDate.getMonth(), clickedDate.getFullYear())) {
        $(this).addClass('date_has_event');
    }
  });
}
// Set Selected date and Load events if exists
function setSelectedAndLoadEvents(date) {
	RemoveSelectedCell();
	$('#ical td').each( function(index) {
		var clickedDate = getClickedDate($(this));
    	// set todays date
    	if( !$(this).hasClass("prevmonth") && !$(this).hasClass("nextmonth") && date.getDate() == clickedDate.getDate() && date.getMonth() == clickedDate.getMonth() && date.getFullYear() == clickedDate.getFullYear()) {
        	$(this).addClass('selected');
	      	if( !$(this).hasClass("date_has_event") ) {
		        getEvents(date);
			} else {
	        	getNoEvents();
		    }
    	}
	});
  setToday();
}

/******************* Utilities *******************/

// http://www.webtoolkit.info/javascript-trim.html
function trim(str, chars) {
  return ltrim(rtrim(str, chars), chars);
}

function ltrim(str, chars) {
  chars = chars || "\\s";
  return str.replace(new RegExp("^[" + chars + "]+", "g"), "");
}

function rtrim(str, chars) {
  chars = chars || "\\s";
  return str.replace(new RegExp("[" + chars + "]+$", "g"), "");
}

// http://www.ozzu.com/programming-forum/javascript-dateadd-function-t47986.html
function dateAddExtention(p_Interval, p_Number){
    var thing = new String();

    //in the spirt of VB we'll make this function non-case sensitive
    //and convert the charcters for the coder.
    p_Interval = p_Interval.toLowerCase();

    if(isNaN(p_Number)){
        //Only accpets numbers
        //throws an error so that the coder can see why he effed up
        throw "The second parameter must be a number. \n You passed: " + p_Number;
        return false;
    }

    p_Number = new Number(p_Number);
    switch(p_Interval.toLowerCase()){
        case "yyyy": {// year
            this.setFullYear(this.getFullYear() + p_Number);
            break;
        }
        case "q": {        // quarter
            this.setMonth(this.getMonth() + (p_Number*3));
            break;
        }
        case "m": {        // month
            this.setMonth(this.getMonth() + p_Number);
            break;
        }
        case "y":        // day of year
        case "d":        // day
        case "w": {      // weekday
            this.setDate(this.getDate() + p_Number);
            break;
        }
        case "ww": {    // week of year
            this.setDate(this.getDate() + (p_Number*7));
            break;
        }
        case "h": {        // hour
            this.setHours(this.getHours() + p_Number);
            break;
        }
        case "n": {        // minute
            this.setMinutes(this.getMinutes() + p_Number);
            break;
        }
        case "s": {        // second
            this.setSeconds(this.getSeconds() + p_Number);
            break;
        }
        case "ms": {        // second
            this.setMilliseconds(this.getMilliseconds() + p_Number);
            break;
        }
        default: {

            //throws an error so that the coder can see why he effed up and
            //a list of elegible letters.
            throw    "The first parameter must be a string from this list: \n" +
                    "yyyy, q, m, y, d, w, ww, h, n, s, or ms. You passed: " + p_Interval;
            return false;
        }
    }
    return this;
}
Date.prototype.dateAdd = dateAddExtention;

// http://dansnetwork.com/2008/09/18/javascript-date-object-adding-and-subtracting-months/
function prevMonth() {
  var thisMonth = this.getMonth();
  this.setMonth(thisMonth-1);
  if(this.getMonth() != thisMonth-1 && (this.getMonth() != 11 || (thisMonth == 11 && this.getDate() == 1)))
  this.setDate(0);
}
function nextMonth() {
  var thisMonth = this.getMonth();
  this.setMonth(thisMonth+1);
  if(this.getMonth() != thisMonth+1 && this.getMonth() != 0)
  this.setDate(0);
}

Date.prototype.nextMonth = nextMonth;
Date.prototype.prevMonth = prevMonth;

/* Calendar generation here */

  var dow = ['Sun','Mon','Tue','Wed','Thu','Fri','Sat'];
  var monthList = ['January','February','March','April','May','June','July','August','September','October','November','December'];

  function monthLength(month,year) {
    var dd = new Date(year, month, 0);
    return dd.getDate();
  }

  function setCell(f,day,month,year,col) {
    var c = [];
    var t = '<td';
    if (f==0) {
      c.push('prevmonth');
    }
    if (col==0 || col==6) {
//      c.push('weekend');
    }
    if (f==9) {
      c.push('nextmonth');
    }
    if (c.length>0) {
      t+=' class="'+c.join(' ')+'"';
    }
    t += '>'+day+'<input type="hidden" value="' + day + '-' + (month+1) + '-' + year + '" /><\/td>\n';
    return t;
  }

  function setCal(m,y) {
//    if (y < 1901 || y > 2100) {
//       alert('year must be after 1900 and before 2101');
//       return false;
//     }
    var c = new Date();
    c.setDate(1);
    c.setMonth(m);
    c.setFullYear(y);
    var x = parseInt(1,10);
    var s = (c.getDay()-x)%7; if (s<0) s+=7;
    var dm = monthLength(m,y);
    var h = '<table  cellspacing="0">\n<thead>\n<tr>\n';


    for (var i=0;i<1;i++) {
      h+= '<th';
      h+= ' class="goto-prevmonth"';
      h+= '>'+dow[(i+x)%7]+'<\/th>\n';
    }
    for (var i=1;i<3;i++) {
      h+= '<th';
      h+= '>'+dow[(i+x)%7]+'<\/th>\n';
    }
    for (var i=3;i<4;i++) {
      h+= '<th';
      h+= '><span>' + monthList[m] + ' ' + y + '</span>'+dow[(i+x)%7]+'<\/th>\n';
    }
    for (var i=4;i<6;i++) {
      h+= '<th';
      h+= '>'+dow[(i+x)%7]+'<\/th>\n';
    }
    for (var i=6;i<7;i++) {
      h+= '<th';
      h+= ' class="goto-nextmonth"';
      h+= '>'+dow[(i+x)%7]+'<\/th>\n';
    }

    h += '<\/tr>\n<\/thead>\n';
    h += '<tfoot><tr><th colspan="7">&nbsp;</th></tr></tfoot>';
    h += '<tbody>\n<tr>\n';
    for (var i=s;i>0;i--) {
		var this_y = (m-1)<0?y-1:y;
      h += setCell(0,dm-i+1, m-1, this_y, (s-i+x)%7);
    }
    dm = monthLength(m+1,y);
    for(var i=1; i <= dm; i++) {
      if((s%7)==0) {h += '<\/tr><tr>\n'; s = 0;}
      h += setCell(1,i,m, y, (s+x)%7);
      s++;
    }
    var j=1;
    for (var i=s;i<7;i++) {
		var this_y = (m+1)>11?y+1:y;
      h += setCell(9,j,(m+1)%12, y, (i+x)%7);
      j++;
    }
    h += '<\/tr>\n<\/tbody>\n<\/table>';
    return h;
  }

  function calendarCode(month, year) {
    var cal = setCal(month, year);

    var intro = '<input type="hidden" id="month" value="' + (month+1) + '" /><input type="hidden" id="year" value="' + year + '" />';

    var outro = '<ul class="events"></ul>';

    return intro + cal + outro;
  }

/* Event Generation here */
  var events = {'2011-1-25': [
    {
      time : '7.30',
      task: 'breakfast with Catherine'
    },
    {
      time : '11.30',
      task: 'brunch with Anna'
    },
    {
      time : '15.30',
      task: 'lunch with Candy'
    },
    {
      time : '19.30',
      task: 'dinner with the wife'
    }

  ]};
function generateEvents(day, month, year) {
  // Some code here to grab the data from the DOM
  // It'll probably be within the #ical div
  var returnable = '';

  var this_day = events[""+year+"-"+month+"-"+day+""];
if(this_day) {
  for (var e=0; e<this_day.length;e++) {
    returnable += '<li><span>' + this_day[e].time + '</span><a href="#">' + this_day[e].task + '</a></li>';
  }
}
  return returnable;
}
function hasEvent(day, month, year) {
  return (events[""+year+"-"+(month+1)+"-"+day+""] && events[""+year+"-"+(month+1)+"-"+day+""].length);
}
