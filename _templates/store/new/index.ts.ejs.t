---
to: src/store/index.ts
---
import Vue from "vue";
import Vuex from "vuex";

// modules

Vue.use(Vuex);

export interface RootState {
}

export default new Vuex.Store<Rootstate>({
  modules: {
  }
});