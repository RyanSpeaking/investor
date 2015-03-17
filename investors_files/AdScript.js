var tile = 1;

function OAS_NORMAL_DC(pos, identifier)
{
    var objSiteAd = null;
    snippet = '';
    if (typeof (OAS_TranslatePos) != 'undefined')
    {
        pos = OAS_TranslatePos(pos, identifier);
    }
    dcopt = "";

    var strKeyword = GetAdKeywords();
    if (strKeyword.length > 0)
    {
        strKeyword = ';kw=' + strKeyword;
    }

    var strUserSubType = typeof (userSubType) != 'undefined' ? userSubType : "0";
    strUserSubType = ';sub=' + strUserSubType;

    var strAdTrade = GetAdVariable('trade');
    var strAdTime = GetAdVariable('time');
    var strAdHold = GetAdVariable('hold');
    var strAdJob = GetAdVariable('job');
    var strAdAge = GetAdVariable('age');

    /* special case for ibdtv to have same referrer as flash player */
    var strRefUrl = '';
    if (window.location.host.toLowerCase().indexOf('ibdtv') > -1)
    {
        strRefUrl = ";dc_ref=" + encodeURIComponent(window.location);
    }
    
    /* special case when in phone view to hide pushdown ad */
    if ((pos == 'pushdown' || pos == 'pos=pushdown;') && dartResponsive.getCurrentDeviceView() == 3) {
        width = "";
        height = "";
        return objSiteAd;
    }

    if (site != "" && pos != '')
    {
        /* special process for leader on test page, dcopt=ist */
        if (pos == 'pos=leader;' && window.location.toString().toLowerCase().indexOf('/testadpage.aspx') > -1)
        {
            dcopt = ";dcopt=ist";
        }
        
        document.write('<SCR' + 'IPT language="JavaScript" src="http://ad.doubleclick.net/N4824/adj/' + site + strKeyword + strUserSubType + strAdTrade + strAdTime + strAdHold + strAdJob + strAdAge + strRefUrl + ';tile=' + tile + ';' + pos + section + dcopt + 'sz=' + width + 'x' + height + snippet + ';ord=' + ord + '?" type="text/javascript"></scr' + 'ipt>');
        document.write('<a href="http://ad.doubleclick.net/N4824/jump/' + site + strKeyword + strUserSubType + strAdTrade + strAdTime + strAdHold + strAdJob + strAdAge + strRefUrl + ';tile=' + tile + ';' + pos + section + dcopt + 'sz=' + width + 'x' + height + snippet + ';ord=' + ord + '?" style="display:none;"><img src="http://www1.ibdcd.com/images/eTables/px.gif" width="2px" height="1px" /></a>');

        objSiteAd = new SiteAd(site, pos, section, width, height, tile, displaySponsorshipText);

        IncreaseTileCount();
    }

    width = "";
    height = "";

    return objSiteAd;
}

function OAS_IFRAME_DC(pos, identifier, iFrameId)
{
    var objSiteAd = null;
    snippet = '';
    if (typeof (OAS_TranslatePos) != 'undefined')
    {
        pos = OAS_TranslatePos(pos, identifier);
    }
    dcopt = "";

    var strKeyword = GetAdKeywords();
    if (strKeyword.length > 0)
    {
        strKeyword = ';kw=' + strKeyword;
    }

    var strUserSubType = typeof (userSubType) != 'undefined' ? userSubType : "0";
    strUserSubType = ';sub=' + strUserSubType;

    var strAdTrade = GetAdVariable('trade');
    var strAdTime = GetAdVariable('time');
    var strAdHold = GetAdVariable('hold');
    var strAdJob = GetAdVariable('job');
    var strAdAge = GetAdVariable('age');

    if (site != "" && pos != '')
    {
        var frameAdUrl = 'http://ad.doubleclick.net/N4824/adi/' + site + strKeyword + strUserSubType + strAdTrade + strAdTime + strAdHold + strAdJob + strAdAge + ';tile=' + tile + ';' + pos + section + 'sz=' + width + 'x' + height + ';ord=' + ord + '?';
        var frameNode = "<iframe src=\"" + frameAdUrl + "\" id=\"" + iFrameId + "_frame\" width=\"" + width + "\" height=\"" + height + "\" marginwidth=\"0\" marginheight=\"0\" frameborder=\"0\" scrolling=\"no\"></iframe>";

        $(document).ready(function()
        {
            $("#" + iFrameId).empty();
            $("#" + iFrameId).append(frameNode);
        });

        objSiteAd = new SiteAd(site, pos, section, width, height, tile, displaySponsorshipText);

        IncreaseTileCount();
    }

    width = "";
    height = "";

    return objSiteAd;
}

function OAS_IFRAME_SPONSOR_DC(pos, identifier, iFrameId, page)
{
    var objSiteAd = null;
    var pos2 = '';
    if (typeof (OAS_TranslatePos) != 'undefined')
    {
        pos2 = OAS_TranslatePos(pos, identifier);
    }

    if (site != "" && pos2 != '')
    {
        var frameAdUrl = '/SiteAds/Sponsorship.aspx?page=' + page + '&position=' + pos + '&identifier=' + identifier + '&tile=' + tile + '&ord=' + ord;
        var frameNode = "<iframe src=\"" + frameAdUrl + "\" id=\"" + iFrameId + "_frame\" width=\"" + width + "\" height=\"" + height + "\" marginwidth=\"0\" marginheight=\"0\" frameborder=\"0\" scrolling=\"no\"></iframe>";

        $(document).ready(function()
        {
            $("#" + iFrameId).empty();
            $("#" + iFrameId).append(frameNode);
        });

        objSiteAd = new SiteAd(site, pos2, section, width, height, tile, displaySponsorshipText);

        IncreaseTileCount();
    }

    width = "";
    height = "";

    return objSiteAd;
}

function OAS_IFRAME_SITE_DC(pos, identifier, iFrameId, page, adPage)
{
    var objSiteAd = null;
    var pos2 = '';
    if (typeof (OAS_TranslatePos) != 'undefined')
    {
        pos2 = OAS_TranslatePos(pos, identifier);
    }

    if (site != "" && pos2 != '')
    {
        var frameAdUrl = adPage+'?page=' + page + '&position=' + pos + '&identifier=' + identifier + '&tile=' + tile + '&ord=' + ord;
        var frameNode = "<iframe src=\"" + frameAdUrl + "\" id=\"" + iFrameId + "_frame\" width=\"" + width + "\" height=\"" + height + "\" marginwidth=\"0\" marginheight=\"0\" frameborder=\"0\" scrolling=\"no\"></iframe>";

        $(document).ready(function()
        {
            $("#" + iFrameId).empty().append(frameNode);
        });

        objSiteAd = new SiteAd(site, pos2, section, width, height, tile, displaySponsorshipText);
        
        IncreaseTileCount();
    }

    width = "";
    height = "";

    return objSiteAd;
}

function GetAdUrl(pos, identifier)
{
    var adUrl = '';
    snippet = '';
    if (typeof (OAS_TranslatePos) != 'undefined')
    {
        pos = OAS_TranslatePos(pos, identifier);
    }
    dcopt = "";

    var strKeyword = GetAdKeywords();
    if (strKeyword.length > 0)
    {
        strKeyword = ';kw=' + strKeyword;
    }

    var strUserSubType = typeof (userSubType) != 'undefined' ? userSubType : "0";
    strUserSubType = ';sub=' + strUserSubType;

    var strAdTrade = GetAdVariable('trade');
    var strAdTime = GetAdVariable('time');
    var strAdHold = GetAdVariable('hold');
    var strAdJob = GetAdVariable('job');
    var strAdAge = GetAdVariable('age');
    var strRefUrl = '';

    if (site != "" && pos != '')
    {
        dartResponsive.setSizesForPhoneView(pos);
    
        adUrl = 'http://ad.doubleclick.net/N4824/adj/' + site + strKeyword + strUserSubType + strAdTrade + strAdTime + strAdHold + strAdJob + strAdAge + strRefUrl + ';tile=' + tile + ';' + pos + section + dcopt + 'sz=' + width + 'x' + height + snippet + ';ord=' + ord + '?';

        IncreaseTileCount();
    }

    width = "";
    height = "";

    return adUrl;
}

function OAS_AD(pos, identifier)
{
    return OAS_NORMAL_DC(pos, identifier);
}

function IncreaseTileCount()
{
    var maxTiles = 16;
    
    tile++;
    
    if (tile > maxTiles)
    {
        tile = 1;
    }
}

/*Site Ad object (constructor)*/
function SiteAd(pSite, pPosition, pSection, pWidth, pHeight, pTileCount, pDisplaySponsorshipText)
{
    this.Site = pSite;
    this.Position = pPosition;
    this.Section = pSection;
    this.Width = pWidth;
    this.Height = pHeight;
    this.TileCount = pTileCount;
    this.DisplaySponsorshipText = pDisplaySponsorshipText;
}

function GetAdUrlChartsPage(pos, identifier) {
    var adUrl = '';
    snippet = '';
    if (typeof (OAS_TranslatePos) != 'undefined') {
        pos = OAS_TranslatePos(pos, identifier);
    }
    dcopt = "";


    if (typeof(GetAdKeywords) == typeof(Function))
    {
        var strKeyword = GetAdKeywords();
        if (strKeyword.length > 0) {
            strKeyword = ';kw=' + strKeyword;
        }
    }

    var strUserSubType = typeof (userSubType) != 'undefined' ? userSubType : "0";
    strUserSubType = ';sub=' + strUserSubType;

    if (typeof (GetAdVariable) == typeof (Function)) {
        var strAdTrade = GetAdVariable('trade');
        var strAdTime = GetAdVariable('time');
        var strAdHold = GetAdVariable('hold');
        var strAdJob = GetAdVariable('job');
        var strAdAge = GetAdVariable('age');
        var strRefUrl = '';
        ord = GetNewOrdValue();
        if (site != "" && pos != '') {
            adUrl = 'http://ad.doubleclick.net/N4824/adj/' + site + strKeyword + strUserSubType + strAdTrade + strAdTime + strAdHold + strAdJob + strAdAge + strRefUrl + ';tile=' + tile + ';' + pos + section + dcopt + 'sz=' + width + 'x' + height + snippet + ';ord=' + ord + '?';

            //IncreaseTileCount();
        }
    }

    width = "";
    height = "";

    return adUrl;
}

var dartResponsive = new function() {
    var debugMode = false;
    
    this.init = function() {
        consoleLog('DART: init');
        resizeChecker(false);
    };
    
    this.onResize = function() {
        consoleLog('DART: resize');
        resizeChecker(true);
    };
    
    this.getCurrentDeviceView = function() {
        return currentDeviceView(); 
    };
    
    this.setSizesForPhoneView = function(position) {
        var currentView = this.getCurrentDeviceView();
        if (currentView == 3) {
            if (position == 'pos=rec1;' || position == 'pos=rec2;') {
                consoleLog('setting size for phone position: ' + position);
                width = "300";
                height = "250";
            }
            else if (position == 'pos=housetop;') {
                consoleLog('setting size for phone position: ' + position);
                width = "300";
                height = "130";
            }
        }
    };
    
    var consoleLog = function(msg) {
        if (console && debugMode) {
            console.log(msg);
        }
    };
    
    var inIframe = function() {
        try {
            return window.self !== window.top;
        } catch (e) {
            return true;
        }
    };
    
    var deviceView = {
        Desktop: 0,
        Tablet_Horizontal: 1,
        Tablet_Vertical: 2,
        Phone: 3
    };
    
    var currentDeviceView = function() {
        var doc = document;
        if (doc.getElementById('header') == null) {
            doc = parent.document;
        }
        var header = doc.getElementById('header');
        var sideBar = doc.getElementById('sideBar');
        var mobileMenuSearch = doc.getElementById('mobile-menu-search');
        
        var isHeaderVisible = header != null ? doc.defaultView.getComputedStyle(header).display != 'none' : false;
        var isSideBarVisible = sideBar != null ? doc.defaultView.getComputedStyle(sideBar).display != 'none' : false;
        var isMobileMenuSearchVisible = mobileMenuSearch != null ? doc.defaultView.getComputedStyle(mobileMenuSearch).display == 'block' : false;
        
        var isDesktopView = isHeaderVisible;
        var isHorzTabletView = !isHeaderVisible && isSideBarVisible;
        var isVertTabletView = !isHeaderVisible && !isSideBarVisible;
        var isPhoneView = !isHeaderVisible && !isSideBarVisible && !isMobileMenuSearchVisible;
        
        if (isDesktopView) {
            return deviceView.Desktop;
        }
        else if (isHorzTabletView) {
            return deviceView.Tablet_Horizontal;
        }
        else if (isVertTabletView && !isPhoneView) {
            return deviceView.Tablet_Vertical;
        }
        else if (isPhoneView) {
            return deviceView.Phone;
        }
        else {
            return deviceView.Desktop;
        }
    };
    
    var addMobileAd = function(id, pos, identifier) {
        var adUrl = GetAdUrl(pos, identifier);
        if (adUrl.length > 0) {
            consoleLog('postscribe for ad position: ' + pos + ', at id: ' + id);
            postscribe("#" + id, '<script src="' + adUrl + '"></script>');
        }
    };

    var resizeChecker = function(isResize) {
        consoleLog('DART: is resize method call: ' + isResize);
        
        // only move ads on pages that support responsive design
        if (typeof (adPage) == 'undefined' ||
            (adPage.toLowerCase() != '/newsandanalysis/article.aspx' && adPage.toLowerCase() != '/testpages/testmobile.aspx')) {
            
            return;
        }
        
        var currentView = currentDeviceView();
        var textPTags = $('#article-content-full > p');        
        var dfpResizeSelector = new Array();
        var identifier = typeof(adIdentifier) != 'undefined' ? adIdentifier : '';
        
        if (currentView == deviceView.Desktop) {
            /*
                - restore ads to desktop positions if not already there
                leader
                336x130 to normal/hide
                marketing module
                rec1
                rec2
            */
            consoleLog('DART: desktop view');
            
            // hide horz/vert/phone ads
            // hide vert/phone ads
            if (isResize) {
                $('#mobile-ad-leader').hide();
                $('#mobile-ad-horz-housetop2').hide();
                $('#mobile-ad-vert-housetop').hide();
                $('#mobile-ad-vert-rec1').hide();
                $('#mobile-ad-vert-rec2').hide();
                $('#mobile-ad-phone-housetop').hide();
                $('#mobile-ad-phone-rec1').hide();
                $('#mobile-ad-phone-rec2').hide();
            }
        }
        else if (currentView == deviceView.Tablet_Horizontal) {
            /*
                leader to top
                housetop2 after 5th paragraph
            */
            consoleLog('DART: horizontal table view');
            
            // hide vert/phone ads
            $('#mobile-ad-vert-housetop').hide();
            $('#mobile-ad-vert-rec1').hide();
            $('#mobile-ad-vert-rec2').hide();
            $('#mobile-ad-phone-housetop').hide();
            $('#mobile-ad-phone-rec1').hide();
            $('#mobile-ad-phone-rec2').hide();
            
            if ($('#mobile-ad-leader').length == 0) {
                var leaderItem = $('<div align="center"></div>');
                leaderItem.attr('id', 'mobile-ad-leader');
                leaderItem.insertBefore($('div.colWrap'));
                addMobileAd('mobile-ad-leader', 'leader', identifier);
            }
            else if (isResize && !$('#mobile-ad-leader').is(':visible')) {
               $('#mobile-ad-leader').show();
            }
            
            if ($('#mobile-ad-horz-housetop2').length == 0) {
                var ht2Item = $('<div id="mobile-ad-horz-housetop2" align="center"></div>');
                if (textPTags.length > 4) {
                    ht2Item.insertAfter(textPTags[4]);
                    addMobileAd('mobile-ad-horz-housetop2', 'housetop2', identifier);
                }
            }
            else if (isResize && !$('#mobile-ad-horz-housetop2').is(':visible')) {
               $('#mobile-ad-horz-housetop2').show();
            }
        }
        else if (currentView == deviceView.Tablet_Vertical) {
            /*
                leader to top
                marketing module after 2nd paragraph
                rec1 after 5th paragraph
                rec2 after 9th paragraph
            */
            consoleLog('DART: vertical tablet view');
            
            // hide horz/phone ads
            $('#mobile-ad-horz-housetop2').hide();
            $('#mobile-ad-phone-housetop').hide();
            $('#mobile-ad-phone-rec1').hide();
            $('#mobile-ad-phone-rec2').hide();
            
            if ($('#mobile-ad-leader').length == 0) {
                var leaderItem = $('<div align="center"></div>');
                leaderItem.attr('id', 'mobile-ad-leader');
                leaderItem.insertBefore($('div.colWrap'));
                addMobileAd('mobile-ad-leader', 'leader', identifier);
            }
            else if (isResize && !$('#mobile-ad-leader').is(':visible')) {
               $('#mobile-ad-leader').show(); 
            }
            
            if ($('#mobile-ad-vert-housetop').length == 0) {
                var htItem = $('<div align="center"></div>');
                htItem.attr('id', 'mobile-ad-vert-housetop');
                if (textPTags.length > 1) {
                    htItem.insertAfter(textPTags[1]);
                    addMobileAd('mobile-ad-vert-housetop', 'housetop', identifier);
                }
            }
            else if (isResize && !$('#mobile-ad-vert-housetop').is(':visible')) {
               $('#mobile-ad-vert-housetop').show(); 
            }
            
            if ($('#mobile-ad-vert-rec1').length == 0) {
                var rec1Item = $('<div align="center" style="clear:both;"></div>');
                rec1Item.attr('id', 'mobile-ad-vert-rec1');
                var isAdded = false;
                if (textPTags.length > 5) {
                    rec1Item.insertAfter(textPTags[5]);
                    isAdded = true;
                }
                else if (textPTags.length >= 3 || textPTags.length <= 5) {
                    rec1Item.insertAfter(textPTags[textPTags.length-1]);
                    isAdded = true;
                }
                
                if (isAdded) {
                    addMobileAd('mobile-ad-vert-rec1', 'rec1', identifier);
                }
            }
            else if (isResize && !$('#mobile-ad-vert-rec1').is(':visible')) {
               $('#mobile-ad-vert-rec1').show();
            }
            
            if ($('#mobile-ad-vert-rec2').length == 0) {
                var rec2Item = $('<div align="center"></div>');
                rec2Item.attr('id', 'mobile-ad-vert-rec2');
                var isAdded = false;
                if (textPTags.length > 9) {
                    rec2Item.insertAfter(textPTags[9]);
                    isAdded = true;
                }
                else if (textPTags.length >= 8 && textPTags.length <= 9){
                    rec2Item.insertAfter(textPTags[textPTags.length-1]);
                    isAdded = true;
                }
                    
                if (isAdded) {
                    addMobileAd('mobile-ad-vert-rec2', 'rec2', identifier);
                }
            }
            else if (isResize && !$('#mobile-ad-vert-rec2').is(':visible')) {
               $('#mobile-ad-vert-rec2').show(); 
            }
        }
        else if (currentView == deviceView.Phone) {
            /*
                marketing module to top
                rec1 after 2nd paragraph
                rec2 after 6th paragraph
            */
            consoleLog('DART: phone view');
            
            // hide horz/vert ads
            $('#mobile-ad-leader').hide();
            $('#mobile-ad-horz-housetop2').hide();
            $('#mobile-ad-vert-housetop').hide();
            $('#mobile-ad-vert-rec1').hide();
            $('#mobile-ad-vert-rec2').hide();
            
            if ($('#mobile-ad-phone-housetop').length == 0) {
                var htItem = $('<div align="center"></div>');
                htItem.attr('id', 'mobile-ad-phone-housetop');
                htItem.insertBefore($('div.colWrap'));
                addMobileAd('mobile-ad-phone-housetop', 'housetop', identifier);
            }
            else if (isResize && !$('#mobile-ad-phone-housetop').is(':visible')) {
                $('#mobile-ad-phone-housetop').show();
            }
            
            if ($('#mobile-ad-phone-rec1').length == 0) {
                var rec1Item = $('<div align="center"></div>');
                rec1Item.attr('id', 'mobile-ad-phone-rec1');
                if (textPTags.length > 1) {
                    rec1Item.insertAfter(textPTags[1]);
                    addMobileAd('mobile-ad-phone-rec1', 'rec1', identifier);
                }
            }
            else if (isResize && !$('#mobile-ad-phone-rec1').is(':visible')) {
                $('#mobile-ad-phone-rec1').show();
            }
            
            if ($('#mobile-ad-phone-rec2').length == 0) {
                var rec2Item = $('<div align="center"></div>');
                rec2Item.attr('id', 'mobile-ad-phone-rec2');
                if (textPTags.length > 5) {
                    rec2Item.insertAfter(textPTags[5]);
                    addMobileAd('mobile-ad-phone-rec2', 'rec2', identifier);
                }
            }
            else if (isResize && !$('#mobile-ad-phone-rec2').is(':visible')) {
                $('#mobile-ad-phone-rec2').show();
            }
        }
    };
};

if (typeof ($) != 'undefined') {
    $(document).ready(function(){
        dartResponsive.init();

        $(window).on('resize', function() {
            dartResponsive.onResize();
        });
    });
}





//common
var width = "";
var height = "";
var site = "";
var section = "";
var displaySponsorshipText = false;

function GetNewOrdValue() {
    return Math.random() * 10000000000000000;
}
ord = GetNewOrdValue();

/*Parses the query string and returns the necessary parameter*/
function QueryStringForAd(ji)
{
    hu = window.location.search.substring(1);
    gy = hu.split("&");
    for (i = 0; i < gy.length; i++)
    {
        ft = gy[i].split("=");
        if (ft[0].toLowerCase() == ji.toLowerCase())
        {
            return ft[1];
        }
    }

    try
    {
        /* try parent window incase of iframe url */
        if (parent != null && parent.window != null)
        {
            hu = parent.window.location.search.substring(1);
            gy = hu.split("&");
            for (i = 0; i < gy.length; i++)
            {
                ft = gy[i].split("=");
                if (ft[0].toLowerCase() == ji.toLowerCase())
                {
                    return ft[1];
                }
            }
        }
    }
    catch (e) { }

    return '';
}

/*Cleans the given string for use in the keywords key/value pair for the ad url*/
function CleanSearchKeywords(strSearch)
{
    var cleanString = decodeURIComponent(strSearch);

    /* can't include following characters: # " , * . ( ) = + < > [ ] % ; */
    cleanString = cleanString.replace(/#|\"|,|\*|\.|\(|\)|=|\+|<|>|\[|\]|%|;/gi, '');

    /* length must be < 55 */
    if (cleanString.length > 55)
    {
        cleanString = cleanString.substring(0, 55);
    }

    return cleanString;
}

/*Retrieves the keywords value for key/value pair for the ad (symbols,search keywords)*/
function GetAdKeywords()
{
    var strKeywords = '';
    var strTicker = QueryStringForAd('Symbol');
    var strQuoteTicker = GetQuoteCheckupTicker();
    var strSearch = QueryStringForAd('ntt');

    /* override symbol with ibdChartSymbol */
    if (typeof (ibdChartSymbol) != 'undefined' && ibdChartSymbol.length > 0)
    {
        strTicker = ibdChartSymbol;
    }

    if (strTicker.length > 0)
    {
        strKeywords = strTicker.toUpperCase();
    }
    else if (strQuoteTicker.length > 0)
    {
        strKeywords = strQuoteTicker.toUpperCase();
    }
    else if (strSearch.length > 0)
    {
        strKeywords = CleanSearchKeywords(strSearch);
    }

    return strKeywords;
}

function GetQuoteCheckupTicker()
{
    var ticker = '';
    var url = window.location.href.toLowerCase();
    if (url.indexOf('/quotes/') > -1 ||
		url.indexOf('/stock-checkup/') > -1)
    {
        var pos = url.lastIndexOf('-');
        if (pos > -1)
        {
            pos += 1;
            var ext = url.indexOf('.htm') > -1 ? '.htm' : '.aspx';
            ticker = url.substr(pos, url.indexOf(ext) - pos);
        }
    }

    try
    {
        /* try parent window incase of iframe url */
        if (ticker.length == 0 && parent != null && parent.window != null)
        {
            url = parent.window.location.href.toLowerCase();
            if (url.indexOf('/quotes/') > -1 ||
			    url.indexOf('/stock-checkup/') > -1)
            {
                var pos = url.lastIndexOf('-');
                if (pos > -1)
                {
                    pos += 1;
                    var ext = url.indexOf('.htm') > -1 ? '.htm' : '.aspx';
                    ticker = url.substr(pos, url.indexOf(ext) - pos);
                }
            }
        }
    }
    catch (e) { }

    return ticker;
}

function GetAdVariable(name, forMediaCenter)
{
    var adVar = "";
    var isMedia = ((typeof(forMediaCenter) != 'undefined' && forMediaCenter) ? true : false);
    switch (name)
    {
        case "trade":
            if (typeof (userAdTrade) != 'undefined' && userAdTrade.length > 0)
            {
                adVar = (isMedia ? "" : ";") + "trade=" + userAdTrade;
            }
            break;
        case "time":
            if (typeof (userAdTime) != 'undefined' && userAdTime.length > 0)
            {
                adVar = (isMedia ? "" : ";") + "time=" + userAdTime;
            }
            break;
        case "hold":
            if (typeof (userAdHold) != 'undefined' && userAdHold.length > 0)
            {
                var holdVars = userAdHold.split(',');
                for (var i = 0; i < holdVars.length; i++)
                {
                    if (isMedia)
                    {
                        var val = holdVars[i];
                        if (val == 'funds/etfs')
                        {
                            val = "funds";
                        }
                        
                        if (adVar.length > 0)
                        {
                            adVar = adVar + ",";
                        }
                        
                        adVar = adVar + val;
                    }
                    else
                    {
                        if (holdVars[i] == 'funds/etfs')
                            adVar = adVar + ";hold=funds";
                        else
                            adVar = adVar + ";hold=" + holdVars[i];
                    }
                }
                
                if (isMedia && adVar.length > 0)
                {
                    adVar = "hold=" + adVar;
                }
            }
            break;
        case "job":
            if (typeof (userAdJob) != 'undefined' && userAdJob.length > 0)
            {
                adVar = (isMedia ? "" : ";") + "job=" + userAdJob;
            }
            break;
        case "age":
            if (typeof (userAdAge) != 'undefined' && userAdAge.length > 0)
            {
                adVar = (isMedia ? "" : ";") + "age=" + userAdAge;
            }
            break;
    }

    return adVar;
}

function GetMediaCenterAdURL() 
{
    var strUrl = '';

    if (typeof (OAS_TranslatePos) != 'undefined')
    {
        pos = OAS_TranslatePos('video', '');
    }
    
    if (site != "" && pos != '')
    {
        /*strUrl = 'http://pubads.g.doubleclick.net/gampad/ads?sz=400x300&' +
        'iu=%2F6062%2Fiab_vast_samples&ciu_szs=300x250%2C728x90&impl=s&' +
        'gdfp_req=1&env=vp&output=xml_vast2&unviewed_position_start=1&' +
        'url=' + encodeURIComponent(window.location) + '&correlator=' + ord + '&' +
        'cust_params=iab_vast_samples%3Dlinear';*/

        var folder = 'video';
        /* ptest is special */
        if (window.location.host.toLowerCase().indexOf('ptest') > -1)
        {
            folder = 'test';
        }
        
        
        /* need to encode / for iu value, use 4824 instead of N4824 */
        strUrl = 'http://pubads.g.doubleclick.net/gampad/ads?' +
            'env=vp' +
            '&gdfp_req=1' +
            '&impl=s' +
            '&output=xml_vast2' +
            '&iu=%2F4824%2F' + site + '%2F' + folder +
            '&sz=' + width + 'x' + height +
            '&unviewed_position_start=1' +
            '&url=' + encodeURIComponent(window.location) +
            '&ciu_szs=728x90' +
            '&cust_params=' + GetMediaCenterCustomParams() +
            '&correlator=' + ord;
            
    }

    width = "";
    height = "";

    return strUrl;
}

function GetArticleMediaCenterAdURL() {
    var strUrl = '';

    if (typeof (OAS_TranslatePos) != 'undefined') {
        pos = OAS_TranslatePos('newsvideo', parent.adIdentifier);
    }

    if (site != "" && pos != '') {
        /*strUrl = 'http://pubads.g.doubleclick.net/gampad/ads?sz=400x300&' +
        'iu=%2F6062%2Fiab_vast_samples&ciu_szs=300x250%2C728x90&impl=s&' +
        'gdfp_req=1&env=vp&output=xml_vast2&unviewed_position_start=1&' +
        'url=' + encodeURIComponent(window.location) + '&correlator=' + ord + '&' +
        'cust_params=iab_vast_samples%3Dlinear';*/

        var folder = 'newsvideo';
        /* ptest is special */
        if (window.location.host.toLowerCase().indexOf('ptest') > -1) {
            folder = 'test';
        }


        /* need to encode / for iu value, use 4824 instead of N4824 */
        strUrl = 'http://pubads.g.doubleclick.net/gampad/ads?' +
            'env=vp' +
            '&gdfp_req=1' +
            '&impl=s' +
            '&output=xml_vast2' +
            '&iu=%2F4824%2F' + site +
            '&sz=' + width + 'x' + height +
            '&unviewed_position_start=1' +
            '&url=' + encodeURIComponent(window.location) +
            '&ciu_szs=' +
            '&cust_params=' + GetMediaCenterCustomParams() +
            '&correlator=' + ord;

    }

    width = "";
    height = "";

    return strUrl;
}

function GetMediaCenterCustomParams()
{
    var params = '';
    
    var strUserSubType = typeof (userSubType) != 'undefined' ? userSubType : "0";
    strUserSubType = 'sub=' + strUserSubType;

    var strAdTrade = GetAdVariable('trade', true);
    var strAdTime = GetAdVariable('time', true);
    var strAdHold = GetAdVariable('hold', true);
    var strAdJob = GetAdVariable('job', true);
    var strAdAge = GetAdVariable('age', true);
    
    params = strUserSubType;
    if (strAdTrade.length > 0) {
        params += "&" + strAdTrade;
    }
    if (strAdTime.length > 0) {
        params += "&" + strAdTime;
    }
    if (strAdHold.length > 0) {
        params += "&" + strAdHold;
    }
    if (strAdJob.length > 0) {
        params += "&" + strAdJob;
    }
    if (strAdAge.length > 0) {
        params += "&" + strAdAge;
    }
    
    return params.replace(/=/g,'%3D').replace(/&/g,'%26').replace(/,/g,'%2C');
}

function GetMediaCenterCompanionAdSlot()
{
    if (typeof (OAS_TranslatePos) != 'undefined')
    {
        pos = OAS_TranslatePos('leader', '');
    }

    var adInfo = { Slot: '', Width: 728, Height: 90 };

    if (site != "" && pos != '')
    {
        /* use 4824 instead of N4824 */
        adInfo.Slot = '/4824/' + site + '/leader';
        adInfo.Width = +width;
        adInfo.Height = +height;
    }

    width = "";
    height = "";

    return adInfo;
}
