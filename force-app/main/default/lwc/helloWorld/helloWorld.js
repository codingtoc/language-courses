/**
 * @description       : 
 * @author            : chaeeun.lim@dkbmc.com
 * @group             : 
 * @last modified on  : 02-20-2023
 * @last modified by  : chaeeun.lim@dkbmc.com
**/
import { LightningElement } from 'lwc';

export default class HelloWorld extends LightningElement {
  greeting = 'World';
  changeHandler(event) {
    this.greeting = event.target.value;
  }
}