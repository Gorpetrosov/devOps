import { Injectable } from '@nestjs/common';

@Injectable()
export class AppService {
  getHello(): string {
    return `Hello World! NUMBER_OF_PROCESSORS is ${process.env.NUMBER_OF_PROCESSORS}`;
  }
}
