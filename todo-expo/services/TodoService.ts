import { db } from '@/db/db';
import { type TodosInsert, type TodosSelect, todos } from '@/db/schema';
import type { ExpoSQLiteDatabase } from 'drizzle-orm/expo-sqlite';

class TodoService {
  constructor(private readonly db: ExpoSQLiteDatabase) {}

  getAll(): TodosSelect[] {
    return this.db.select().from(todos).all();
  }

  insert(todosInsert: TodosInsert) {
    this.db.insert(todos).values(todosInsert);
  }
}

export const todoService: TodoService = new TodoService(db);
