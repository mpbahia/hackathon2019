import { Component, OnInit } from '@angular/core';
import {Camera, CameraOptions} from '@ionic-native/camera/ngx'
import { DomSanitizer } from '@angular/platform-browser'
import { NativeGeocoder, NativeGeocoderOptions, NativeGeocoderResult} from '@ionic-native/native-geocoder/ngx'
import { Geolocation } from '@ionic-native/geolocation/ngx'
import {MediaCapture, MediaFile, CaptureError, CaptureImageOptions} from '@ionic-native/media-capture/ngx'
import {VideoCapturePlus, VideoCapturePlusOptions, MediaFile as vMediaFile} from '@ionic-native/video-capture-plus/ngx'

@Component({
  selector: 'app-home',
  templateUrl: 'home.page.html',
  styleUrls: ['home.page.scss'],
})
export class HomePage implements OnInit {

  private image: any = null;
  private video: any = null;
  private audio: any = null;
  private dateString: string = ""
  private deletionOptions = {
    desc: "",
    location: "",
    context: "",
    link: "",
    number: "",
    date: "",
    time: "",
    photo: false,
    video: false,
    audio: false,
    emergency: false,
  }


  constructor(private camera: Camera, private sn: DomSanitizer, private geoCoder: NativeGeocoder,
    private geoLocale: Geolocation, private mediaCapture: MediaCapture, 
    private videoCapturePlus: VideoCapturePlus) {
      const date = new Date()
      this.deletionOptions.date = `${date.getDay()}/${date.getMonth()}/${date.getFullYear()}`;
      this.deletionOptions.time = `${date.getHours()}:${date.getMinutes()}:${date.getSeconds()}`;
    }

  private options: CameraOptions = {
    quality: 50,
    destinationType: this.camera.DestinationType.DATA_URI,
    encodingType: this.camera.EncodingType.JPEG,
    mediaType: this.camera.MediaType.PICTURE
  }

  private geoOptions: NativeGeocoderOptions = {
    useLocale: true,
    maxResults: 5
  }

  private mediaOptions = {
    limit: 3
  }

  private videoOptions: VideoCapturePlusOptions = {
    limit: 1,
    highquality: true,
    portraitOverlay: 'assets/img/camera/overlay/portrait.png',
    landscapeOverlay: 'assets/img/camera/overlay/landscape.png'
 }


  ngOnInit() { }

  takePicture() {
    this.camera.getPicture(this.options).then((imageData) => {
      this.image = 
      this.sn.bypassSecurityTrustResourceUrl('data:image/jpeg;base64,' + imageData);
      this.deletionOptions.photo = true
    }, (err) => {
      alert('Ops!\nHouve um erro');
      console.log(err)
    });
  }

  getLocation() {
    this.geoLocale.getCurrentPosition()
      .then(resp => {
        const lat = resp.coords.latitude, long = resp.coords.longitude
        this.geoCoder.reverseGeocode(lat, long, this.geoOptions)
          .then((result: NativeGeocoderResult[]) => {
            this.deletionOptions.location = JSON.stringify(result[0])
            console.log(JSON.stringify(result[0]))
          })
          .catch((error: any)=> console.log(error))
      })
      .catch((e) => {
        console.log(e)
      })
  }

  getAudio () {
    this.mediaCapture.captureAudio(this.mediaOptions)
      .then((data: MediaFile[]) => {console.log(data), this.deletionOptions.audio = true},
            (err: CaptureError) => console.error(err)
      )
  }

  recordVideo () {
    this.videoCapturePlus.captureVideo(this.videoOptions)
      .then((mediaFile: MediaFile[]) => {console.log(mediaFile), this.deletionOptions.video = true}, err => console.log('Something went wrong!'))
  }

  setDesc (descy) {
    this.deletionOptions.desc = descy
  }

  setLink (linky) {
    this.deletionOptions.link = linky
  }

  setContext (ctx) {
    this.deletionOptions.context = ctx
  }

  setNumber (phone) {
    this.deletionOptions.number = phone
  }

  sentNormal () {
  }

  sentEmergency () {
    this.takePicture()
  }
}