---
inject: true
to: src/store/index.ts
after: export interface RootState
---
  <%= name %>: <%= name %>.I<%= Name %>State;