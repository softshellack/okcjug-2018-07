#![feature(plugin, decl_macro)]
#![plugin(rocket_codegen)]
#![allow(unused_imports)]

#[macro_use] extern crate rocket;

#[get("/<name>/<age>")]
fn hello(name: String, age: u8) -> String {
    format!("Hello, {} year old named {}! (from rust)", age, name)
}

fn main() {
    rocket::ignite().mount("/hello", routes![hello]).launch();
}

