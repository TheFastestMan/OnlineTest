package ru.rail.onlinetest.validator;

public interface Validator<T> {
    ValidateResult isValid(T object);
}
