// app.module.ts
import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import {AppComponent} from './app.component';
import { ServerComponent } from './server/server.component';


@NgModule({
  declarations: [
    // Other components, directives, and pipes
  ],
  imports: [
    BrowserModule,
    AppComponent,
    ServerComponent, // Import the ServerModule here

  ],
  bootstrap: [
    // The root component that will be bootstrapped
    // (e.g., AppComponent)
  ],
})
export class AppModule {}
