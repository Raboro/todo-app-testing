import { integer, sqliteTable, text } from 'drizzle-orm/sqlite-core';

export const category = sqliteTable('categories', {
  id: integer('id').primaryKey(),
  name: text('name'),
});

export const todos = sqliteTable('todos', {
  id: integer('id').primaryKey(),
  name: text('name'),
  description: text('description'),
});

export type TodosSelect = typeof todos.$inferSelect;
export type TodosInsert = typeof todos.$inferInsert;

export type CategorySelect = typeof category.$inferSelect;
export type CategoryInsert = typeof category.$inferSelect;
