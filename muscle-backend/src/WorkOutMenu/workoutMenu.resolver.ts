import { Query, Resolver } from '@nestjs/graphql';

@Resolver()
export class WorkoutMenuResolver {
  @Query(() => Boolean)
  outputLog() {
    console.log('Yeahhhhhhhhhhhhhhh');
    return true;
  }
}
