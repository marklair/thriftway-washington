/* Use this script if you need to support IE 7 and IE 6. */

window.onload = function() {
	function addIcon(el, entity) {
		var html = el.innerHTML;
		el.innerHTML = '<span style="font-family: \'Iconstop\'">' + entity + '</span>' + html;
	}
	var icons = {
			'icon-coupons' : '&#x25;',
			'icon-edit' : '&#x23;',
			'icon-photos' : '&#x21;',
			'icon-video' : '&#x24;',
			'icon-new' : '&#x26;',
			'icon-tag' : '&#x27;',
			'icon-cart' : '&#x28;',
			'icon-phone' : '&#x29;',
			'icon-mail' : '&#x2a;',
			'icon-location' : '&#x2b;',
			'icon-user' : '&#x2d;',
			'icon-loading' : '&#x2e;',
			'icon-settings' : '&#x2f;',
			'icon-trash' : '&#x30;',
			'icon-list' : '&#x31;',
			'icon-tree' : '&#x32;',
			'icon-web' : '&#x33;',
			'icon-chains' : '&#x34;',
			'icon-starburst' : '&#x35;',
			'icon-half-star' : '&#x36;',
			'icon-star' : '&#x37;',
			'icon-heart' : '&#x38;',
			'icon-add' : '&#x39;',
			'icon-info' : '&#x3b;',
			'icon-checkmark' : '&#x3c;',
			'icon-delete' : '&#x3a;',
			'icon-google-plus' : '&#x3d;',
			'icon-facebook' : '&#x3e;',
			'icon-instagram' : '&#x3f;',
			'icon-twitter' : '&#x40;',
			'icon-feed' : '&#x41;',
			'icon-youtube' : '&#x42;',
			'icon-vimeo' : '&#x43;',
			'icon-github' : '&#x45;',
			'icon-apple' : '&#x46;',
			'icon-android' : '&#x47;',
			'icon-windows8' : '&#x48;',
			'icon-reddit' : '&#x49;',
			'icon-linkedin' : '&#x4a;',
			'icon-pinterest' : '&#x4c;',
			'icon-delicious' : '&#x4d;',
			'icon-stumbleupon' : '&#x4e;',
			'icon-paypal' : '&#x50;',
			'icon-yelp' : '&#x51;',
			'icon-pdf' : '&#x52;',
			'icon-foursquare' : '&#x4f;',
			'icon-flickr' : '&#x44;',
			'icon-home' : '&#x22;',
			'icon-search' : '&#x53;',
			'icon-cookbook' : '&#x54;',
			'icon-camera' : '&#x55;',
			'icon-barcode' : '&#x56;',
			'icon-healthy' : '&#x57;',
			'icon-power' : '&#x58;',
			'icon-html5' : '&#x59;',
			'icon-css' : '&#x5a;',
			'icon-html' : '&#x5b;',
			'icon-chrome' : '&#x5c;',
			'icon-firefox' : '&#x5d;',
			'icon-IE' : '&#x5e;',
			'icon-opera' : '&#x5f;',
			'icon-safari' : '&#x60;',
			'icon-power-2' : '&#x4b;',
			'icon-interface' : '&#x61;',
			'icon-wholesalers' : '&#x62;',
			'icon-independents' : '&#x63;',
			'icon-social' : '&#x2c;',
			'icon-mobile' : '&#x64;',
			'icon-stats' : '&#x65;',
			'icon-recipe' : '&#x66;',
			'icon-display' : '&#x67;'
		},
		els = document.getElementsByTagName('*'),
		i, attr, html, c, el;
	for (i = 0; i < els.length; i += 1) {
		el = els[i];
		attr = el.getAttribute('data-icon');
		if (attr) {
			addIcon(el, attr);
		}
		c = el.className;
		c = c.match(/icon-[^\s'"]+/);
		if (c && icons[c[0]]) {
			addIcon(el, icons[c[0]]);
		}
	}
};