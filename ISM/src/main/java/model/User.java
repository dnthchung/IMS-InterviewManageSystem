/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import lombok.*;

@Builder
@Data
@lombok.NoArgsConstructor
@lombok.AllArgsConstructor
public class User {
    private Long userId;
    private String userName;
}