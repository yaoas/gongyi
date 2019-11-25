package com.pm.background.welfare.core.active.entity;

import lombok.Data;

import java.util.List;

@Data
public class ActiveChatList {
  private  ActiveInfo activeInfo;
  private List<ActiveChat> list;


}
