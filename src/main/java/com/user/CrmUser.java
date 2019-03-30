package com.user;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 * Created by 8e3Yn4uK on 30.03.2019
 */

public class CrmUser {

    @NotNull(message="is required")
    @Size(min=1, message="is required")
    private String userName;

    @NotNull(message="is required")
    @Size(min=1, message="is required")
    private String password;

    public CrmUser() {
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
