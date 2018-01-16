# -*- coding: utf-8 -*-

<%inherit file="base.mako"/>

<%def name="table_body(c,lang)">
<%
    lang = lang if lang in ('de','fr','it','rm','en') else None
%>
    <tr><td class="cell-left">${_('ch.bag.radonkarte.probability_prozent')}</td>    <td>${c['attributes']['probability_prozent']  or '0'} %</td></tr>
    % if c['attributes']['confidence'] <= 1000 :
      <tr><td class="cell-left">${_('ch.bag.radonkarte.confidence')}</td>      <td>${_('vertrauensindex_hoch') or '-'}</td></tr>
    % elif (c['attributes']['confidence'] > 1000 and c['attributes']['confidence'] <= 5000) :
      <tr><td class="cell-left">${_('ch.bag.radonkarte.confidence')}</td>      <td>${_('vertrauensindex_mittel') or '-'}</td></tr>
    % elif (c['attributes']['confidence'] > 5000 and c['attributes']['confidence'] <= 10000) :
      <tr><td class="cell-left">${_('ch.bag.radonkarte.confidence')}</td>      <td>${_('vertrauensindex_gering') or '-'}</td></tr>      
    % elif c['attributes']['confidence'] > 10000 : 
      <tr><td class="cell-left">${_('ch.bag.radonkarte.confidence')}</td>      <td>${_('vertrauensindex_sehr_gering') or '-'}</td></tr>
    % endif
</%def>

