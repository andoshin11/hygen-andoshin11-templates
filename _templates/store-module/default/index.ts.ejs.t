---
to: src/store/modules/<%= name %>/index.ts
---
import { Module } from "vuex";
import { RootState } from "@/store";
import { mutations } from "@/store/modules/<%= name %>/mutations";
import { I<%= Name %>State, initialState } from "@/store/modules/<%= name %>/state";

export * from "@/store/modules/<%= name %>/state";

export const store: Module<I<%= Name %>State, RootState> = {
  state: initialState,
  mutations
};

