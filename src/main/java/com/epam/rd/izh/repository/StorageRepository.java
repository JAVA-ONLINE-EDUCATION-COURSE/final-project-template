package com.epam.rd.izh.repository;

import com.epam.rd.izh.entity.AuthorizedUser;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class StorageRepositoryUser {
    private static int currentId = 1;
    private static final HashMap<Integer, AuthorizedUser> users = new HashMap<>();
    private final AuthorizedUser user;

    public StorageRepositoryUser(AuthorizedUser user) {
        this.user = user;
    }

    public static List<AuthorizedUser> getAllUsers() {
        ArrayList<AuthorizedUser> userList = new ArrayList<AuthorizedUser>(users.values());
        return userList;
    }

    public static AuthorizedUser add(AuthorizedUser user) {
        int id = currentId++;
        user.setId((long) id);
        users.put(id, user);
        return user;
    }

    public static AuthorizedUser edite(int userId, AuthorizedUser user) {
        users.replace(userId, user);
        return user;
    }

    public static void remove(int userId) throws UserNotFoundException {
        AuthorizedUser removeUser = users.remove(userId);  // удаляем дело и получаем его содержимое

        if (removeUser == null) { // если дела нет, то тогда бросаем исключение, его можно будет перехватить
            throw new UserNotFoundException();
        }
    }

    public static AuthorizedUser get(int userId) {
        if (users.containsKey(userId)) {
            return users.get(userId);
        }
        return null;
    }

    @Override
    public String toString() {
        return "index: " + user.getLogin() + " name: " + user.getLogin() + "n/ день рождение - " + user.getBirthday();
    }
}
