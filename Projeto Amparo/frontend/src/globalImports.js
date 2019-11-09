import Vue from 'vue'
import NavBar from '../src/components/geral/NavBar'
import MenuSideBar from '../src/components/geral/MenuSidebar'
import Modal from '../src/components/geral/Modal'
import Gmaps from '../src/components/geral/Gmaps'
import ButtonAction from '../src/components/geral/ButtonAction'
import ModalAjuda from '../src/components/geral/ModalAjuda'
/** Component Menu */
Vue.component("nav-bar",NavBar)
Vue.component("menu-side-bar",MenuSideBar)
Vue.component("modal",Modal)
Vue.component("g-maps",Gmaps)
Vue.component("button-action",ButtonAction)
Vue.component("modal-ajuda",ModalAjuda)