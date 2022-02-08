import { Injectable } from '@nestjs/common';
import { Message } from '@ts-starter-proj/api-interfaces';

@Injectable()
export class AppService {
  getData(): Message {
    return { message: 'Welcome to api!' };
  }
}
