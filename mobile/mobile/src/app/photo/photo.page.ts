import { Component, OnInit } from '@angular/core';
import { Camera, CameraOptions } from '@ionic-native/camera/ngx';



export class PhotoPage implements OnInit {

  constructor(private camera: Camera) { }


  Photo() {
    const options: CameraOptions = {
      quality: 100,
      destinationType: this.camera.DestinationType.FILE_URI,
      encodingType: this.camera.EncodingType.JPEG,
      mediaType: this.camera.MediaType.PICTURE
    }

    this.camera.getPicture(options).then((imageData) => {
      let base64Image = 'data:image/jpeg;base64,' + imageData;
    }, (err) => {
      console.log(err)
    });

    // @Component({
    //   selector: 'app-photo',
    //   templateUrl: './photo.page.html',
    //   styleUrls: ['./photo.page.scss'],
    // })
  }

  ngOnInit() {
  }

}
