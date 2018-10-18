---
to: src/typings/usecase.d.ts
---
declare interface BaseUseCase {
  execute: (params?: any) => Promise<any>
}
