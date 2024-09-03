import { describe, it, expect } from '@jest/globals'
import { render } from '@testing-library/react-native'
import { Todo } from './Todo';
import { ITodo } from '@/data/ITodo';

describe('Todo Tests', () => {

    it('Todo component should be rendered correctly', () => {
        const todo = render(<Todo todo={{name: 'Homework', description: 'Do your homework'}} onDelete={(todo: ITodo) => {}} />);
        expect(todo).not.toBeNull();
    });
});