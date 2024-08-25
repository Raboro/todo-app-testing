import { db } from '@/db/db';
import {
  type CategoryInsert,
  type CategorySelect,
  category,
} from '@/db/schema';
import type { ExpoSQLiteDatabase } from 'drizzle-orm/expo-sqlite';

class CategoryService {
  constructor(private readonly db: ExpoSQLiteDatabase) {}

  getAll(): CategorySelect[] {
    return this.db.select().from(category).all();
  }

  insert(categoryInsert: CategoryInsert) {
    this.db.insert(category).values(categoryInsert);
  }
}

export const categoryService: CategoryService = new CategoryService(db);
