---
to: src/entities/<%= Name %>.ts
---
export interface I<%= Name %>Props {
  id:string
}

export default class <%= Name %>Entity {
  private _props: I<%= Name %>Props

  constructor(props: I<%= Name %>Props) {
    this._props = props
  }

  get props(): I<%= Name %>Props {
    return this._props
  }
}

export const <%= Name %>Factory = (): <%= Name %>Entity => {
  const dummyProps: I<%= Name %>Props = {
    id: 'dummyId'
  }

  return new <%= Name %>Entity(dummyProps)
}
