---
inject: true
to: src/store/index.ts
after: \/\/ modules
---
import * as <%= name %> from "@/store/modules/<%= name %>"