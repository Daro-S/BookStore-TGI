import { Component, OnInit } from '@angular/core';
import { CheckoutService } from '../checkout-service/checkout.service';
import { BookService } from '../service/book.service';
import { CartService } from '../service/cart.service';

@Component({
  selector: 'app-view-item-in-cart',
  templateUrl: './view-item-in-cart.component.html',
  styleUrls: ['./view-item-in-cart.component.css']
})
export class ViewItemInCartComponent implements OnInit {

  public products : any = [];
  public grandTotal !: number;
  paymentHandler: any = null;

  success: boolean = false

  failure:boolean = false
  constructor(private cartService : CartService, private bookService: BookService,  private checkout: CheckoutService) { }

  ngOnInit(): void {
    this.cartService.getProducts()
    .subscribe(res=>{
      this.products = res;
      this.grandTotal = this.cartService.getTotalPrice();
      console.log(this.grandTotal);
    })
    this.invokeStripe();
  }
  removeItem(item: any){
    this.cartService.removeCartItem(item);
  }
  emptycart(){
    this.cartService.removeAllCart();
  }
  makePayment(amount: number) {
    const paymentHandler = (<any>window).StripeCheckout.configure({
      key: 'pk_test_51LZtGiC7AiAlPiMpQUyvsUD9659yZoELDdQkI7BJObR2RZxD7pgJjriJCV3q5aJsgm1t1Bx9Wx8VKajcJ5GMg5Bv0006sKGA0o',
      locale: 'auto',
      token: function (stripeToken: any) {
        console.log(stripeToken);
        paymentstripe(stripeToken);
      },
    });

    const paymentstripe = (stripeToken: any) => {
      this.checkout.makePayment(stripeToken).subscribe((data: any) => {
        console.log(data);
        if (data.data === "success") {
          this.success = true
        }
        else {
          this.failure = true
        }
      });
    };

    paymentHandler.open({
      name: 'BOOKSTORE TGI',
      description: 'Buy with TGI Bookstore',
      amount: amount * 100,
    });
  }

  invokeStripe() {
    if (!window.document.getElementById('stripe-script')) {
      const script = window.document.createElement('script');
      script.id = 'stripe-script';
      script.type = 'text/javascript';
      script.src = 'https://checkout.stripe.com/checkout.js';
      script.onload = () => {
        this.paymentHandler = (<any>window).StripeCheckout.configure({
          key: 'pk_test_51LZtGiC7AiAlPiMpQUyvsUD9659yZoELDdQkI7BJObR2RZxD7pgJjriJCV3q5aJsgm1t1Bx9Wx8VKajcJ5GMg5Bv0006sKGA0o',
          locale: 'auto',
          token: function (stripeToken: any) {
            console.log(stripeToken);
          },
        });
      };

      window.document.body.appendChild(script);
    }
  }

}

