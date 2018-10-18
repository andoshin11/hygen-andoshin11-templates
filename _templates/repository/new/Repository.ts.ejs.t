---
to: src/repositories/<%= Name %>Repository.ts
---
import Store from '@/store'
import { StoreItem, ResetItem, StoreItems, ResetItems } from '@/store/modules/<%= name %>/types'
import <%= Name %>Entity, { I<%= Name %>Props } from '@/entities/<%= Name %>'

export default class <%= Name %>Repository {
  private _store: typeof Store

  constructor(store: typeof Store) {
    this._store = store
  }

  saveItem(item: I<%= Name %>Props) {
    this._store.commit(new StoreItem(item))
  }

  resetItem() {
    this._store.commit(new ResetItem())
  }

  getItem(): <%= Name %>Entity | null {
    const Item = this._store.state.<%= name %>.item
    return Item ? new <%= Name %>Entity(Item) : null
  }

  saveItemList(itemList: I<%= Name %>Props[]) {
    this._store.commit(new StoreItems(itemList))
  }

  resetItems(){
    this._store.commit(new ResetItems())
  }

  getItemList(): <%= Name %>Entity[] {
    return this._store.state.<%= name %>.items.map(item => new <%= Name %>Entity(item))
  }
}