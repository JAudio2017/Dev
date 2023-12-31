import { Component, OnInit } from '@angular/core';
import {AlertComponent} from '../../Component/alert/alert.component';
import {FormsModule} from '@angular/forms';


@Component({
  selector: 'app-login',
  standalone: true,
  imports: [AlertComponent, FormsModule],
  templateUrl: './login.component.html',
  styleUrl: './login.component.css'
})
export class LoginComponent implements OnInit {
  username:string = '';
  password:string = '';
  count:number = 0;


  alertshow:boolean=false;
  alertmsg:string = '';
  alerttype:string = '';

  ngOnInit(): void {
    this.count = 1;
    this.alertshow = false;

  }

  onLogin(){
    if (this.username =='supervisor' && this.password == 'ormed' )
    {
      this.alertmsg = 'Welcome back ' + this.username + '!';
      this.alertshow = true;
      this.alerttype = "succeed";
    }
    else
    {
      this.alertmsg = 'Invalid user name or password!';
      this.alertshow = true;
      this.alerttype = "warning";

    }

  }

}
