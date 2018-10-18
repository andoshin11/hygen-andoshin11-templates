---
to: src/typings/service.d.ts
---
declare interface BaseService {
  handle: (param?: any) => Promise<any>
}
