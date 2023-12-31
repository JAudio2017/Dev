import { outputAst } from '@angular/compiler';
import { Component, Input, OnInit, Output } from '@angular/core';

@Component({
  selector: 'app-alert',
  standalone: true,
  imports: [],
  templateUrl: './alert.component.html',
  styleUrl: './alert.component.css',
})
export class AlertComponent implements OnInit {
  @Input() visible:boolean = false;
  @Input() alertmsg:string = '';
  @Input() alerttype:string = 'succeed'

  constructor(){

  }
  ngOnInit(): void {

  }

}
