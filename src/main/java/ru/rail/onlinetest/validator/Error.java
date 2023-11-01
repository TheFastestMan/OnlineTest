package ru.rail.onlinetest.validator;

import lombok.Value;

@Value(staticConstructor = "of")
public class Error {
     String error;
     String message;
}
