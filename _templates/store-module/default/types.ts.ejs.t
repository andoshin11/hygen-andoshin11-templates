---
to: src/store/modules/<%= name %>/types.ts
---
import { I<%= Name %> } from "@/entities/<%= Name %>";

export enum Types {
  STORE_ITEMS = "<%= name %>/store_items",
  RESET_ITEMS = "<%= name %>/reset_items",
  STORE_ITEM = "<%= name %>/store_item",
  RESET_ITEM = "<%= name %>/reset_item",
  REMOVE_ITEM = "<%= name %>/remove_item"
}

export class StoreItems implements FluxStandardAction {
  type = Types.STORE_ITEMS;
  constructor(public payload: I<%= Name %>[]) {}
}

export class ResetItems implements FluxStandardAction {
  type = Types.RESET_ITEMS;
  payload = null;
}

export class StoreItem implements FluxStandardAction {
  type = Types.STORE_ITEM;
  constructor(public payload: I<%= Name %>) {}
}

export class ResetItem implements FluxStandardAction {
  type = Types.RESET_ITEM;
  payload = null;
}

