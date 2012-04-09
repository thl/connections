// reference local blank image
Ext.BLANK_IMAGE_URL = '/images/default/s.gif';

function createUserAccessGrid( userList ) {
	store = new Ext.data.JsonStore({
	    root: 'users',
	    fields: [ 
			{ name: 'id', type: 'int' },
			{ name: 'name', type: 'string' },
			{ name: 'url', type: 'string' },
			{ name: 'email', type: 'string' },
			{ name: 'access', type: 'string' },
			{ name: 'banned', type: 'boolean' },
			{ name: 'request', type: 'string' },
                        { name: 'destroy', type: 'boolean'}
		],
		data: userList
	}); 
				
	var accessLevelEditor = new Ext.form.ComboBox({
		editable: false,
        triggerAction: 'all',
        transform: 'access-level',
        lazyRender: true,
        listClass: 'x-combo-list-small'
    });

    var bannedColumn = new Ext.grid.CheckColumn({
       	id: 'disable',
	header: "Banned",
       	dataIndex: 'banned',
	editor: new Ext.form.Checkbox({lazyRender: true}),
       	width: 55,
	sortable: true
    });

    var destroyColumn = new Ext.grid.CheckColumn({
       id: 'delete-user',
       header: "Delete",
       dataIndex: 'destroy',
       editor: new Ext.form.Checkbox({lazyRender: true}),
       width: 55,
       sortable: false
    });

	var colModel = new Ext.grid.ColumnModel([
		{ id: 'request', dataIndex: 'request', header: "Requests", sortable: true, renderer: renderRequest },
		{ id: 'name', dataIndex: 'name', header: "Name", sortable: true, renderer: renderName },
		{ id: 'email', dataIndex: 'email', header: "E-mail", width: 150, sortable: true, renderer: renderEmail },
		{ id: 'access', dataIndex: 'access', header: "Access Level", width: 150, sortable: true, editor: accessLevelEditor, renderer: renderAccess },
		bannedColumn,
                destroyColumn
	 ]);
	
    grid = new Ext.grid.EditorGridPanel( {
        cm: colModel,
        sm: new Ext.grid.RowSelectionModel(),
        store: store,
        renderTo: 'admin-grid',
        title: 'User Access',
        autoExpandColumn: 'name',
        frame: true,
        stripeRows: true,
        clicksToEdit: 1,
        bbar: new Ext.PagingToolbar({
            pageSize: 25,
            store: store,
            displayInfo: true,
            emptyMsg: "No users to display.",
            items: ['-', { text: 'Update', handler: updateAccounts }]
        })
    });
}

function renderName(value, metaData, record) {
    var html = '<a ';
    if( record.data.banned == true ) {
        html += 'class="banned-user"';
    }
    html += 'href="'+record.data.url+'">';
    html += record.data.name + '</a>';
    return html;
}

function renderEmail( value, metaData, record ) {
    var html = '<a ';
    if( record.data.banned == true ) {
        html += 'class="banned-user"';
    }
    html += 'href="mailto:'+record.data.email+'">';
    html += record.data.email + '</a>';
    return html;
}

function renderAccess( value, metaData, record ) {
    var html = '<span ';
    if( record.data.banned == true ) {
        html += 'class="banned-user"';
    }
    html += '>';
    html += record.data.access + '</span>';
    return html;
}

function renderRequest( value, metaData, record ) {
    var html = '<span ';
    if( record.data.banned == true ) {
        html += 'class="banned-user"';
    }
    html += ' style="color:red" >';
    html += record.data.request + '</span>';
    return html;
}

function lockGrid() {
    var el = Ext.get('admin-grid');
    el.mask('Update User Accounts...');
}

function unlockGrid() { 
    var el = Ext.get('admin-grid');
    el.unmask();
}

function commitEdits() {
    var modifiedRows = store.getModifiedRecords();
    store.commitChanges();

    // FUTURE: Use a dataChanged event to update the grid directly when changes are made.
    for (var i = 0; i < modifiedRows.length; ++i) {
        // Remove records marked as destroyed from the store.
        if (modifiedRows[i].data.destroy) store.remove(modifiedRows[i]);
    }
}

function updateAccounts() {
    var pendingCommitIncludesDeletions = false;

    var editedRecords = store.getModifiedRecords();
    if( editedRecords.length <= 0 ) return;

    var updateSet = [];
    // FUTURE: Refactor to avoid inefficient records parameter passing.
    for( var i=0; i < editedRecords.length; i++ ) {
        updateSet[i] = editedRecords[i].data;
        if (editedRecords[i].data.destroy) pendingCommitIncludesDeletions = true;
    }

    // Check to see if we really want to process a commit request with deletions.
    if (pendingCommitIncludesDeletions)
        handlePendingDeletes(records = updateSet);
    else
        finalizeCommit(records = updateSet);
}

function handlePendingDeletes(records) {
    handleProceedWithCommit = function(id) { 
        if (id === 'yes') finalizeCommit(records);
    };

    Ext.MessageBox.show({
        closable: false,
        modal: true,
        buttons: Ext.MessageBox.YESNO,
        title: "Process pending deletes?",
        msg: "You have selected one or more users for deletion. If you continue, these records and all their\n\n\
                  associated data will be lost forever.\n\
                  \n\
                  Are you sure?",
        fn: handleProceedWithCommit
    });
}

function finalizeCommit(records) {
    $.ajax({
        type: "POST",
        url: "admin/update_users",
        data: {
            data: Ext.encode( records )
        },
        beforeSend: lockGrid,
        success: commitEdits,
        complete: unlockGrid
    });
}

Ext.grid.CheckColumn = function(config){
    Ext.apply(this, config);
    if(!this.id){
        this.id = Ext.id();
    }
    this.renderer = this.renderer.createDelegate(this);
};

Ext.grid.CheckColumn.prototype ={
    init : function(grid){
        this.grid = grid;
        this.grid.on('render', function(){
            var view = this.grid.getView();
            view.mainBody.on('mousedown', this.onMouseDown, this);
        }, this);
    },

    onMouseDown : function(e, t){
        if(t.className && t.className.indexOf('x-grid3-cc-'+this.id) != -1){
            e.stopEvent();
            var index = this.grid.getView().findRowIndex(t);
            var record = this.grid.store.getAt(index);
            record.set(this.dataIndex, !record.data[this.dataIndex]);
        }
    },

    renderer : function(v, p, record){
        p.css += ' x-grid3-check-col-td'; 
        return '<div class="x-grid3-check-col'+(v?'-on':'')+' x-grid3-cc-'+this.id+'">&#160;</div>';
    }
};