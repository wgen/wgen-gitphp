{*
 *  tree_filelist_item.tpl
 *  gitphp: A PHP git repository browser
 *  Component: Tree view filelist item template
 *
 *  Copyright (C) 2006 Christopher Han <xiphux@gmail.com>
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation; either version 2 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU Library General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program; if not, write to the Free Software
 *  Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.
 *}
 <tr class="{$class}">
 <td style="font-family:monospace">{$filemode}</td>
 <td class="list">
 {if $type == "blob"}
 <a href="{$SCRIPT_NAME}?p={$project}&a=blob&h={$hash}{if $hashbase}&hb={$hashbase}{/if}&f={if $base}{$base}{/if}{$name}" class="list">{$name}</a></td>
 <td class="link"><a href="{$SCRIPT_NAME}?p={$project}&a=blob&h={$hash}{if $hashbase}&hb={$hashbase}{/if}&f={if $base}{$base}{/if}{$name}">blob</a> | <a href="{$SCRIPT_NAME}?p={$project}&a=history&h={$hashbase}&f={if $base}{$base}{/if}{$name}">history</a>
 {elseif $type == "tree"}
   <a href="{$SCRIPT_NAME}?p={$project}&a=tree&h={$hash}{if $hashbase}&hb={$hashbase}{/if}&f={if $base}{$base}{/if}{$name}">{$name}</a></td>
   <td class="link"><a href="{$SCRIPT_NAME}?p={$project}&a=tree&h={$hash}{if $hashbase}&hb={$hashbase}{/if}&f={if $base}{$base}{/if}{$name}">tree</a>
 {/if}
 </td>
 </tr>
