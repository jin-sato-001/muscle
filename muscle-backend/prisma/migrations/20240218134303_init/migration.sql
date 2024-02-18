-- CreateTable
CREATE TABLE "User" (
    "id" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "firstName" TEXT NOT NULL,
    "lastName" TEXT NOT NULL,

    CONSTRAINT "User_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TrainingData" (
    "id" TEXT NOT NULL,
    "userId" TEXT NOT NULL,
    "excerciseTypeId" INTEGER NOT NULL,
    "weight" INTEGER,
    "reps" INTEGER NOT NULL,
    "memo" TEXT,
    "date" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "TrainingData_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ExcerciseType" (
    "id" INTEGER NOT NULL,
    "name" TEXT NOT NULL,
    "trainingCategoryId" INTEGER NOT NULL,

    CONSTRAINT "ExcerciseType_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TrainigCategories" (
    "id" INTEGER NOT NULL,
    "name" TEXT NOT NULL,

    CONSTRAINT "TrainigCategories_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "TrainingData" ADD CONSTRAINT "TrainingData_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "TrainingData" ADD CONSTRAINT "TrainingData_excerciseTypeId_fkey" FOREIGN KEY ("excerciseTypeId") REFERENCES "ExcerciseType"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ExcerciseType" ADD CONSTRAINT "ExcerciseType_trainingCategoryId_fkey" FOREIGN KEY ("trainingCategoryId") REFERENCES "TrainigCategories"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
