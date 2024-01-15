import { Component, OnInit, ViewChild, ElementRef } from '@angular/core';

import { FormsModule } from '@angular/forms';
import { CommonModule } from '@angular/common';

@Component({
  selector: 'app-log',
  standalone: true,
  imports: [FormsModule, CommonModule],
  templateUrl: './log.component.html',
  styleUrl: './log.component.css'
})

export class LogComponent implements OnInit {
  log: string[] = [];
  msg: string = "";

  onNewMessage(){
    if (this.msg != '') {
      this.log.push(this.getTimestamp() + '\t' + this.msg );
      this.msg = '';
    }
  }
  getTimestamp() {
    const currentDate = new Date();
    return currentDate.toLocaleString();


  }
  ngOnInit(): void {

  }
}




