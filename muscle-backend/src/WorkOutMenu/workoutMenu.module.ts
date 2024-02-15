import { Module } from '@nestjs/common';
import { WorkoutMenuResolver } from './workoutMenu.resolver';

@Module({
  providers: [WorkoutMenuResolver],
})
export class WorkoutMenuModule {}
