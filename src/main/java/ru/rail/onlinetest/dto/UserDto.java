package ru.rail.onlinetest.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import ru.rail.onlinetest.entity.Cart;
import ru.rail.onlinetest.entity.Gender;
import ru.rail.onlinetest.entity.Role;

import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class UserDto {
    private Long userId;
    private String username;
    private String email;
    private Role role;
    private Gender gender;
    private String password;
    private List<Cart> carts;

}
