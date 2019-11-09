import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { IonicModule } from '@ionic/angular';
import { RouterModule } from '@angular/router';
import {Camera} from '@ionic-native/camera/ngx'

import { HomePage } from './home.page';
import { Geolocation } from '@ionic-native/geolocation/ngx';
import { NativeGeocoder } from '@ionic-native/native-geocoder/ngx';
import { MediaCapture } from '@ionic-native/media-capture/ngx';
import { VideoCapturePlus } from '@ionic-native/video-capture-plus/ngx';

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    RouterModule.forChild([
      {
        path: '',
        component: HomePage
      }
    ])
  ],
  declarations: [HomePage],
  providers: [
    Camera,
    Geolocation,
    NativeGeocoder,
    MediaCapture,
    VideoCapturePlus
  ]
})
export class HomePageModule {}
