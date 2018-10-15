---
to: src/store/modules/<%= name %>/state.ts
---
import { I<%= Name %> } from "@/entities/<%= Name %>";

export interface I<%= Name %>State {
  items: I<%= Name %>[];
  item: I<%= Name %> | null;
}

export const initialState = (): I<%= Name %> => ({
  items: [],
  item: null
})

