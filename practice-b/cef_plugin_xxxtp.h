/*
 * cef_plugin_xxxtp.h
 */

#ifndef __CEF_PLUGIN_XXXTP_HEADER__
#define __CEF_PLUGIN_XXXTP_HEADER__

/*============================================================================
	Transport Plugin
==============================================================================*/

/*-----------------------------------------------------------------
	Default Transport
-------------------------------------------------------------------*/
int
cef_plugin_xxxtp_init (
	CefT_Plugin_Tp*		tp,      /* Transport Plugin Handle */
	void* 			arg_ptr  /* Input argment block */
);

int
cef_plugin_xxxtp_cob (
	CefT_Plugin_Tp*	 	tp,      /* Transport Plugin Handle */
	CefT_Rx_Elem* 		rx_elem
);

int
cef_plugin_xxxtp_interest (
	CefT_Plugin_Tp* 	tp, 	/* Transport Plugin Handle */
	CefT_Rx_Elem* 		rx_elem
);
void
cef_plugin_xxxtp_delpit (
	CefT_Plugin_Tp* 		tp, 	/* Transport Plugin Handle */
	CefT_Rx_Elem_Sig_DelPit* 	info
);
void
cef_plugin_xxxtp_destroy (
	CefT_Plugin_Tp* 		tp 	/* Transport Plugin Handle */
);

#endif // __CEF_PLUGIN_XXXTP_HEADER__
