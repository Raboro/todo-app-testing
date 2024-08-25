import { ExpoSQLiteDatabase } from "drizzle-orm/expo-sqlite";
import { todos, TodosInsert, TodosSelect } from "@/db/schema";
import { db } from "@/db/db";

class TodoService {
    constructor(private readonly db: ExpoSQLiteDatabase) {
    }

    getAll(): TodosSelect[] {
        return db.select().from(todos).all();
    }

    insert(todosInsert: TodosInsert) {
        db.insert(todos).values(todosInsert);
    }
}

export const todoService: TodoService = new TodoService(db);
