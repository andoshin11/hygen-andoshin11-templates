---
to: src/usecases/<%= Name %>UseCase.ts
---
import ErrorService from "@/services/ErrorService";

export interface I<%= Name %>UseCase {
  errorService: ErrorService;
}

export default class <%= Name %>UseCase implements BaseUseCase {
  errorService: ErrorService;

  constructor({ errorService }: I<%= Name %>UseCase) {
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
