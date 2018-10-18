---
to: src/store/modules/<%= name %>/state.ts
---
import { I<%= Name %>Props } from "@/entities/<%= Name %>";

export interface I<%= Name %>State {
  items: I<%= Name %>Props[];
  item: I<%= Name %>Props | null;
}

export const initialState = (): I<%= Name %>State => ({
  items: [],
  item: null
})

