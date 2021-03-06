<?php
/** no direct access **/
defined('_WPLEXEC') or die('Restricted access');
?>
<script type="text/javascript">
var trash_class = 'icon-trash';
var restore_class = 'icon-restore';
var confirm_class = 'icon-confirm';
var unconfirm_class = 'icon-unconfirm';
var ajax_loader_image_class = 'ajax-inline-save';
var delete_class = 'icon-delete';
var clone_class = 'icon-clone';

function wpl_search_listings()
{
    /** Create full url of search **/
    var search_str = '<?php echo wpl_global::get_full_url(); ?>';

    wplj("#wpl_listing_manager_search_form_cnt select").each(function(ind, elm)
	{
        if(wplj(elm).val() != '-1') search_str = wpl_update_qs(elm.id, wplj(elm).val(), search_str);
        else if(wplj(elm).val() == '-1') search_str = wpl_update_qs(elm.id, '', search_str);
	});

    wplj("#wpl_listing_manager_search_form_cnt input:text, #wpl_listing_manager_search_form_cnt input[type='hidden']").each(function(ind, elm)
	{
        search_str = wpl_update_qs(elm.id, wplj(elm).val(), search_str);
	});

    window.location = search_str;
}

function wpl_reset_listings()
{
    wplj("#wpl_listing_manager_search_form_cnt").find(':input').each(function()
    {
        switch(this.type)
        {
            case 'text':

                wplj(this).val('');
                break;

            case 'select-multiple':

                wplj(this).multiselect("uncheckAll");
                break;

            case 'select-one':

                wplj(this).val('-1');
                wplj(this).trigger("chosen:updated");
                break;

            case 'password':
            case 'textarea':

                wplj(this).val('');
                break;

            case 'checkbox':
            case 'radio':

                this.checked = false;
                break;
        }
    });
    
    wpl_search_listings();
}

function select_all_checkboxes()
{
    wplj(".js-pcheckbox").each(function()
	{
        wplj(this).attr("checked", status);
    });
}

function deselect_all_checkboxes()
{
    wplj(".js-pcheckbox").each(function()
	{
        wplj(this).removeAttr('checked');
    });
}

function toggle_checkboxes()
{
    wplj(".js-pcheckbox").each(function()
	{
        if(wplj(this).attr("checked"))
            wplj(this).removeAttr('checked');
        else
            wplj(this).attr("checked", status);
    });
}

function mass_delete_completely_properties()
{
    var message = '<?php echo addslashes(__("Are you sure you want to delete these properties?", 'wpl')); ?>';
    var confirmation = confirm(message);

    if(!confirmation) return

    wplj('.js-pcheckbox:checked').each(function()
	{
        var pid = wplj(this).attr('id');
        purge_property(pid, true);
    });
}

function mass_trash_properties()
{
    wplj('.js-pcheckbox:checked').each(function()
	{
        var pid = wplj(this).attr('id');

        if(wplj("#pmanager_trash"+pid).find('i').hasClass(trash_class)) trash_property(pid);
    });
}

function mass_restore_properties()
{
    wplj('.js-pcheckbox:checked').each(function()
	{
        var pid = wplj(this).attr('id');

        if(wplj("#pmanager_trash"+pid).find('i').hasClass(restore_class)) trash_property(pid);
    });
}

function mass_confirm_properties()
{
    wplj('.js-pcheckbox:checked').each(function()
	{
        var pid = wplj(this).attr('id');

        if(wplj("#pmanager_confirm"+pid).find('i').hasClass(unconfirm_class)) confirm_property(pid);
    });
}

function mass_unconfirm_properties()
{
    wplj('.js-pcheckbox:checked').each(function()
	{
        var pid = wplj(this).attr('id');

        if(wplj("#pmanager_confirm"+pid).find('i').hasClass(confirm_class)) confirm_property(pid);
    });
}

function mass_change_user(uid)
{
    if(!uid)
    {
        wpl_show_messages('<?php echo addslashes(__('User is not valid!', 'wpl')); ?>', '.wpl_property_manager_list .wpl_show_message', 'wpl_red_msg');
        return false;
    }

    wplj('.js-pcheckbox:checked').each(function()
	{
        var pid = wplj(this).attr('id');
        wplj("#pmanager_change_user_select"+pid).val(uid);

        change_user(pid, uid);
    });
}

function purge_property(pid, confirmation)
{
    if(typeof confirmation == 'undefined') confirmation = 0;
    
    if(!confirmation)
    {
        var message = '<?php echo addslashes(__("Are you sure you want to delete this property?", 'wpl')); ?>';
        confirmation = confirm(message);

        if(!confirmation) return;
    }

	var request_str = "wpl_format=b:listings:ajax&wpl_function=purge_property&pid="+pid+'&_wpnonce=<?php echo $this->nonce; ?>';
    wplj("#pmanager_delete"+pid+" i").removeClass(delete_class).addClass(ajax_loader_image_class);

    var ajax = wpl_run_ajax_query('<?php echo wpl_global::get_full_url(); ?>', request_str);
    ajax.success(function(data)
	{
		if(data.success == 1)
		{
			wplj("#plist_main_div_"+pid).fadeOut('slow');
		}
		else if(data.success != 1)
		{
			wplj("#pmanager_delete"+pid+" i").removeClass(ajax_loader_image_class).addClass(delete_class);
			wpl_show_messages(data.message, '.wpl_property_manager_list .wpl_show_message', 'wpl_red_msg');
		}
    });
}

function confirm_property(pid)
{
    if(wplj("#pmanager_confirm"+pid+" i").hasClass(confirm_class))
    {
        var new_class = unconfirm_class;
        var prev_class = confirm_class;
        var confirmed = 0;
    }

    if(wplj("#pmanager_confirm"+pid+" i").hasClass(unconfirm_class))
    {
        var new_class = confirm_class;
        var prev_class = unconfirm_class;
        var confirmed = 1;
    }

    wplj("#pmanager_confirm"+pid+" i").removeClass(prev_class).addClass(ajax_loader_image_class);

    var request_str = "wpl_format=b:listings:ajax&wpl_function=update_property&pid="+pid+"&action=confirm&value="+confirmed+'&_wpnonce=<?php echo $this->nonce; ?>';
    var ajax = wpl_run_ajax_query('<?php echo wpl_global::get_full_url(); ?>', request_str);

    ajax.success(function(data)
	{
		if(data.success == 1)
		{
			wplj("#pmanager_confirm"+pid+" i").removeClass(ajax_loader_image_class).addClass(new_class);

			if(confirmed) wplj("#pmanager_confirm"+pid+" span").text("<?php echo addslashes(__('Confirmed', 'wpl')); ?>");
			else wplj("#pmanager_confirm"+pid+" span").text("<?php echo addslashes(__('Unconfirmed', 'wpl')); ?>");
		}
		else if(data.success != 1)
		{
			wplj("#pmanager_confirm"+pid+" i").removeClass(ajax_loader_image_class).addClass(prev_class);
			wpl_show_messages(data.message, '.wpl_property_manager_list .wpl_show_message', 'wpl_red_msg');
		}
    });
}

function trash_property(pid)
{
	if(wplj("#pmanager_trash"+pid+" i").hasClass(trash_class))
	{
		var new_class = restore_class;
		var prev_class = trash_class;
		var deleted = 1;
	}

	if(wplj("#pmanager_trash"+pid+" i").hasClass(restore_class))
	{
		var new_class = trash_class;
		var prev_class = restore_class;
		var deleted = 0;
	}

	wplj("#pmanager_trash"+pid+" i").removeClass(prev_class).addClass(ajax_loader_image_class);

	var request_str = "wpl_format=b:listings:ajax&wpl_function=update_property&pid="+pid+"&action=trash&value="+deleted+'&_wpnonce=<?php echo $this->nonce; ?>';
	var ajax = wpl_run_ajax_query('<?php echo wpl_global::get_full_url(); ?>', request_str);

	ajax.success(function(data)
	{
		if(data.success == 1)
		{
			wplj("#pmanager_trash"+pid+" i").removeClass(ajax_loader_image_class).addClass(new_class);

			if(deleted) wplj("#pmanager_trash"+pid+" span").text("<?php echo addslashes(__('Restore', 'wpl')); ?>");
			else wplj("#pmanager_trash"+pid+" span").text("<?php echo addslashes(__('Delete', 'wpl')); ?>");
		}
		else if(data.success != 1)
		{
			wplj("#pmanager_trash"+pid+" i").removeClass(ajax_loader_image_class).addClass(prev_class);
			wpl_show_messages(data.message, '.wpl_property_manager_list .wpl_show_message', 'wpl_red_msg');
		}
	});
}

function clone_property(pid)
{
	var request_str = "wpl_format=b:listings:ajax&wpl_function=clone_property&pid="+pid+'&_wpnonce=<?php echo $this->nonce; ?>';
    wplj("#pmanager_clone"+pid+" i").removeClass(clone_class).addClass(ajax_loader_image_class);

    var ajax = wpl_run_ajax_query('<?php echo wpl_global::get_full_url(); ?>', request_str);
    ajax.success(function(data)
	{
		if(data.success == 1)
		{
			window.location = data.data.edit_link;
		}
		else if(data.success != 1)
		{
			wplj("#pmanager_clone"+pid+" i").removeClass(ajax_loader_image_class).addClass(clone_class);
			wpl_show_messages(data.message, '.wpl_property_manager_list .wpl_show_message', 'wpl_red_msg');
		}
    });
}

function change_user(pid, uid)
{
    var request_str = "wpl_format=b:listings:ajax&wpl_function=change_user&pid="+pid+"&uid="+uid+'&_wpnonce=<?php echo $this->nonce; ?>';
    wplj("#pmanager_change_user_label"+pid).html('<img src="<?php echo wpl_global::get_wpl_asset_url('img/ajax-loader3.gif'); ?>" />');

    var ajax = wpl_run_ajax_query('<?php echo wpl_global::get_full_url(); ?>', request_str);
    ajax.success(function(data)
	{
		if(data.success === 1)
		{
			wplj("#pmanager_change_user_label"+pid).html('<?php echo addslashes(__('User', 'wpl')); ?>: ');
		}
		else if(data.success !== 1)
		{
			wplj("#pmanager_change_user_label"+pid).html('<?php echo addslashes(__('User', 'wpl')); ?>: ');
			wpl_show_messages(data.message, '.wpl_property_manager_list .wpl_show_message', 'wpl_red_msg');
		}
    });
}

function additional_agents(pid)
{
    var uids = wplj("#pmanager_additional_agents_select"+pid).val();
    
    var request_str = "wpl_format=b:listings:ajax&wpl_function=additional_agents&pid="+pid+"&uids="+uids+'&_wpnonce=<?php echo $this->nonce; ?>';
    wplj("#pmanager_additional_agents_label"+pid).html('<img src="<?php echo wpl_global::get_wpl_asset_url('img/ajax-loader3.gif'); ?>" />');

    var ajax = wpl_run_ajax_query('<?php echo wpl_global::get_full_url(); ?>', request_str);
    ajax.success(function(data)
	{
		if(data.success === 1)
		{
			wplj("#pmanager_additional_agents_label"+pid).html("<?php echo addslashes(__('Additional Agents', 'wpl')); ?>: ");
		}
		else if(data.success !== 1)
		{
			wplj("#pmanager_additional_agents_label"+pid).html("<?php echo addslashes(__('Additional Agents', 'wpl')); ?>: ");
			wpl_show_messages(data.message, '.wpl_property_manager_list .wpl_show_message', 'wpl_red_msg');
		}
    });
}
</script>