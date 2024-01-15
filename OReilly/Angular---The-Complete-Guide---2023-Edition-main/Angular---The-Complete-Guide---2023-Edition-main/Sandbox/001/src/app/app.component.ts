import { Component, OnInit } from '@angular/core';
import { CommonModule } from '@angular/common';
import { RouterOutlet } from '@angular/router';
import {FormsModule} from '@angular/forms';
import { ServerComponent } from './server/server.component';
import {LoginComponent} from './pages/login/login.component';
import { NgModule} from '@angular/core';
import { LogComponent } from './pages/log/log.component';
@Component({

  selector: 'app-root',
  standalone: true,
  imports: [CommonModule, RouterOutlet, FormsModule, ServerComponent, LoginComponent, LogComponent],
  styleUrl: './app.component.css',
  templateUrl: './app.component.html',
})
export class AppComponent implements OnInit {
  applicant_name = '';
  ngOnInit(): void {
  }
}
