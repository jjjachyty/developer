<template>
  <v-app>
    <v-toolbar app>
      <v-toolbar-title class="headline text-uppercase">
        <span>开发者平台</span>
        <span class="font-weight-light caption">智能合约部署</span>
      </v-toolbar-title>
      <v-spacer></v-spacer>
      <v-btn flat href="https://github.com/vuetifyjs/vuetify/releases/latest" target="_blank">
        <v-icon>fas fa-user</v-icon>
      </v-btn>
    </v-toolbar>

    <v-content>
      <router-view />
    </v-content>
  </v-app>
</template>

<script>
import { compiler } from "@/plugins/compiler";
// import { deploy } from "@/plugins/deploy";

export default {
  name: "App",
  data() {
    return {
      //
    };
  },
  created() {
    console.log("created start ");
    // 调用函数,第一个参数是你的合约文件地址，第二个参数是你的合约名，注意冒号不要省略
     compiler("adoption.sol", ":Adoption");
    // deploy("adoption", "0xC05dEb0C5e841Aa564f41f769335BC96D75Ade65", "123456");
    console.log("created end");
  }
};
</script>
