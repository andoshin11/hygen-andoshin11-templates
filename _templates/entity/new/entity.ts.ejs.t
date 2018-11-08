---
to: <%= path %>/<%= name %>.ts
---
export interface I<%= name %>Props {
  id:string
}

export default class <%= name %>Entity {
  private _props: I<%= name %>Props

  constructor(props: I<%= name %>Props) {
    this._props = props
  }

  get props(): I<%= name %>Props {
    return this._props
  }
}

export const <%= name %>Factory = (): <%= name %>Entity => {
  const dummyProps: I<%= name %>Props = {
    id: 'dummyId'
  }

  return new <%= name %>Entity(dummyProps)
}
