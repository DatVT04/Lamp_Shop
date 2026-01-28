/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package login;

/**
 *
 * @author nguye
 */
public class ClientSecret {

    //https://console.cloud.google.com/apis/credentials
    public static final String GOOGLE_CLIENT_ID = "634017246561-nm8fa8tdkoiq87jp0qubtuce77mnv2n5.apps.googleusercontent.com";

    public static final String GOOGLE_CLIENT_SECRET = "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";

    public static final String GOOGLE_REDIRECT_URI = "http://localhost:9999/lampshop/login";

    public static final String GOOGLE_GRANT_TYPE = "authorization_code";

    public static final String GOOGLE_LINK_GET_TOKEN = "https://accounts.google.com/o/oauth2/token";

    public static final String GOOGLE_LINK_GET_USER_INFO = "https://www.googleapis.com/oauth2/v1/userinfo?access_token=";

    /*
    json:
    {
    "id": "123456789",
    "email": "example@gmail.com",
    "verified_email": true,
    "name": "Nguyen Van A",
    "given_name": "Van A",
    "family_name": "Nguyen",
    "picture": "https://lh3.googleusercontent.com/a/ABC123...",
    "locale": "vi"
    }
     */
}
