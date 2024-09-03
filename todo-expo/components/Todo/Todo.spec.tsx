import type { ITodo } from '@/data/ITodo';
import { describe, expect, it } from '@jest/globals';
import { render } from '@testing-library/react-native';
import { Todo } from './Todo';

describe('Todo Tests', () => {
  it('Todo component should be rendered correctly', () => {
    const todo = render(
      <Todo
        todo={{ name: 'Homework', description: 'Do your homework' }}
        onDelete={(todo: ITodo) => {}}
      />,
    );
    expect(todo).not.toBeNull();
  });
});
