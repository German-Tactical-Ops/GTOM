package com.gto.app;

import java.util.ArrayList;
import java.util.List;

public class App {
    public static void main(String[] args) {

        for (int i = 0; i < Loadouts.list.size(); i++) {
            List<String> list = transformToSimpleArray(Loadouts.list.get(i));

            System.out.println();
            System.out.println(Loadouts.listOfNames.get(i));
            System.out.println(makeFancyArray(list));
        }
    }

    private static List<String> transformToSimpleArray(String input) {
        if (input.isEmpty()) throw new IllegalArgumentException();

        ArrayList<String> list = new ArrayList<>();

        boolean pointerOnClassName = false;
        StringBuilder inProgressClassName = new StringBuilder();

        for (int i = 0; i < input.length(); i++) {
            char current = input.charAt(i);

            if (current == '\"') {
                if (!pointerOnClassName) {
                    pointerOnClassName = true;
                } else {
                    pointerOnClassName = false;
                    if (!inProgressClassName.isEmpty()) {
                        list.add(inProgressClassName.toString());
                    }
                    inProgressClassName = new StringBuilder();
                }
            } else if (pointerOnClassName) {
                inProgressClassName.append(current);
            }
        }
        return list;
    }

    private static String makeFancyArray(List<String> list) {
        StringBuilder result = new StringBuilder("[");

        for (String s : list) {
            result.append('"').append(s).append('"').append(",");
        }

        result = new StringBuilder(result.substring(0, result.length() - 1));

        return result + "]";
    }
}
