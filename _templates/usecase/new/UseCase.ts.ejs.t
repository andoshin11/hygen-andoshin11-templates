---
to: <%= path %>/<%= name %>.ts
---
import ErrorService from "@/services/ErrorService";

export interface I<%= name %> {
  errorService: ErrorService;
}

export default class <%= name %> implements BaseUseCase {
  errorService: ErrorService;

  constructor({ errorService }: I<%= name %>) {
    this.errorService = errorService;
  }

  async execute() {
    try {
    } catch (error) {
      await this.errorService.handle(error);
      throw new Error(error);
    }
  }
}
