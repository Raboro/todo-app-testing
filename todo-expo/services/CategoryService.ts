import {db} from "@/db/db";
import {ExpoSQLiteDatabase} from "drizzle-orm/expo-sqlite";
import {category, CategoryInsert, CategorySelect} from "@/db/schema";

class CategoryService {
    constructor(private readonly db: ExpoSQLiteDatabase) {
    }

    getAll(): CategorySelect[] {
        return db.select().from(category).all();
    }

    insert(categoryInsert: CategoryInsert) {
        db.insert(category).values(categoryInsert);
    }
}

export const categoryService: CategoryService = new CategoryService(db);
