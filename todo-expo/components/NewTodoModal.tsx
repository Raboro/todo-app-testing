import {Modal} from "react-native";
import {ITodo} from "@/data/ITodo";

interface NewTodoModalProps {
    onSubmit: (todo: ITodo) => void,
}

export function NewTodoModal(props: Readonly<NewTodoModalProps>) {
    return (
        <Modal />
    );
}
