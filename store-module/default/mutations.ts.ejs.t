---
to: src/store/modules/<%= name %>/mutations.ts
---
import { MutationTree } from "vuex";
import { I<%= Name %>State, initialState } from "@/store/modules/<%= name %>/state";
import {
  Types,
  StoreItems,
  StoreItem,
} from "@/store/modules/<%= name %>/types";

export const mutations: MutationTree<I<%= Name %>State> = {
  [Types.STORE_ITEMS]: (state, action: StoreItems) => {
    const items = action.payload;
    state.items = items;
  },
  [Types.RESET_ITEMS]: state => {
    const { items } = initialState();
    state.items = items;
  },
  [Types.STORE_ITEM]: (state, action: StoreItem) => {
    const item = action.payload;
    state.item = item;
  },
  [Types.RESET_ITEM]: state => {
    const { item } = initialState();
    state.item = item;
  }
};
