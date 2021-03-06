<#--

    ExtLinks is an alfresco and alfresco share module that supplies an extended
     bookmarks dashlets.

    Copyright (C) Itl Developpement 2013

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as
    published by the Free Software Foundation, either version 3 of the
    License, or (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with this program.  If not, see `<http://www.gnu.org/licenses/>`.

-->

<div id="${args.htmlid}-addLinkDialog">
   <div class="hd">${msg("label.dialogTitle")}</div>

   <div class="bd">
      <form id="${args.htmlid}-form" action="" method="POST">
         <div class="yui-gd">
            <div class="yui-u first"><label for="${args.htmlid}-title">${msg("label.link-title")}:</label></div>
            <div class="yui-u"><input  id="${args.htmlid}-title" type="text" name="linkname" value="" maxlength="50" /></div>
         </div>

        <div class="yui-gd">
            <div class="yui-u first"><label for="${args.htmlid}-dest">${msg("label.link-dest")}:</label></div>
            <div class="yui-u"><input  id="${args.htmlid}-dest" type="text" name="link" value="" /></div>
         </div>

        <div class="yui-gd">
            <div class="yui-u first"><label for="${args.htmlid}-category">${msg("label.link-category")}:</label></div>
                <div class="yui-u">
                        <select id="${args.htmlid}-categories-menu-addlink" name="categoryNodeRef">
                                <#list categories as cat>
                                    <#if "${cat.name}" == "${categoryName}" >
                                         <option selected value="${cat.nodeRef}">${cat.name}</option>
                                    <#else>
                                         <option value="${cat.nodeRef}">${cat.name}</option>
                                    </#if>
                                </#list>
                        </select>
                </div>
         </div>
       
         <div class="bdft">
            <input type="submit" id="${args.htmlid}-ok" value="${msg("button.ok")}" />
            <input type="button" id="${args.htmlid}-cancel" value="${msg("button.cancel")}" />
         </div>
      </form>
   </div>

</div>