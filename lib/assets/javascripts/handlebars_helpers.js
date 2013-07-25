
/* Include
  Usage: Include({config:{file: 'folder_name/file_name', container: $('#selector'), data: my_json_Data }})
  Depends on: jQuery & Handlebars
*/
var Include = {
  init: function( config ){
    this.data = config.data;
    this.file = 'app/views/guides/' + config.file;
    this.container = config.container;
    return this.view();
  },
  
  view: function(){
    
    var self = this;
          
    $.get(this.view_url, function(data) {
      var template = Handlebars.compile( data );
      self.container.append(template( self.data ));
    });
  }
}; // end Include