<%inherit file="base.mako"/>

<%def name="preview()">
  %if lang == 'de': 
      ${c['value'] or '-'}
  %elif lang == 'fr':
      ${c['attributes']['genese_fr'] or '-'}
  %elif lang == 'en':
      ${c['attributes']['genese_en'] or '-'}
  %elif lang == 'it':
      ${c['attributes']['genese_it'] or '-'}
  %elif lang == 'rm':
      ${c['attributes']['genese_rm'] or '-'}
  %endif
</%def>

<%def name="table_body(c,lang)">
    <tr><td colspan="3">&nbsp;</tr>
    <tr>
      <td colspan="3">${_('tt_gk500-genese')}</td>
    </tr>
    <tr><td colspan="3">&nbsp;</tr>
    <tr>
      <td width="30" bgcolor="${c['attributes']['bgdi_tooltip_color']}" style="border-style: solid; border-width: 1px; -webkit-print-color-adjust:exact;">&nbsp;</td>
      <td width="20">&nbsp;</td>
      <td>${c['value']}</td>
    </tr>
    <tr><td colspan="3">&nbsp;</tr>
</%def>
