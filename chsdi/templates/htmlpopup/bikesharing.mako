<%inherit file="base.mako"/>

<%def name="table_body(c,lang)">
<%
  lang = lang if lang in ('fr','it','en') else 'de'
  providerlink = 'providerlink_%s' % lang
  time = 'time_%s' % lang
  rent = 'rent_%s' % lang
  description = 'description_%s' % lang
  giveback = 'return_%s' % lang
  feedback = 'feedback_%s' % lang
%>
  <td>${_('ch.bfe.bikesharing.providerlink')}</td>                             <td>${c['attributes'][providerlink] or '-'}</td></tr>
  <tr><td class="cell-left">${_('ch.bfe.bikesharing.address')}</td>            <td>${c['attributes']['address'] or '-'}</td></tr>
  <tr><td class="cell-left">${_('ch.bfe.bikesharing.time')}</td>               <td>${c['attributes'][time] or '-'}</td></tr>
  <tr><td class="cell-left">${_('ch.bfe.bikesharing.rent')}</td>               <td>${c['attributes'][rent] or '-'}</td></tr>
  <tr><td class="cell-left">${_('ch.bfe.bikesharing.descriptionde')}</td>        <td>${c['attributes'][description] or '-'}</td></tr>
  <tr><td class="cell-left">${_('ch.bfe.bikesharing.return')}</td>             <td>${c['attributes'][giveback] or '-'}</td></tr>
  <td>${_('ch.bfe.bikesharing.feedback')}</td>                                 <td>${c['attributes'][feedback] or '-'}</td></tr>
</%def>
