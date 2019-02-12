Javascript
===
<!-- TOC -->

- [Asychronous Programming](#asychronous-programming)
    - [Asyn Await](#asyn-await)
    - [Error Handling](#error-handling)
- [Mongoose](#mongoose)
    - [Methods & Statics](#methods--statics)
        - [Methods](#methods)
            - [Define](#define)
            - [Use](#use)

<!-- /TOC -->
# Asychronous Programming
## Asyn Await
> The purpose of async/await functions is to simplify the behavior of using promises synchronously and to perform some behavior on a group of Promises. Just as Promises are similar to structured callbacks, async/await is similar to combining generators and promises.

    function resolveAfter2Seconds(x) {
    return new Promise(resolve => {
        setTimeout(() => {
        resolve(x);
        }, 2000);
    });
    }


    async function add1(x) {
    const a = await resolveAfter2Seconds(20);
    const b = await resolveAfter2Seconds(30);
    return x + a + b;
    }

## Error Handling
1. [Promise Based Error Handling with Mongoose](http://thecodebarbarian.com/mongoose-error-handling.html)


# Mongoose
## Methods & Statics
### Methods
#### Define
var AnimalSchema = new Schema({
        name: String
    , type: String
    });

    AnimalSchema.methods.findSimilarType = function findSimilarType (cb) {
    return this.model('Animal').find({ type: this.type }, cb);
    };

#### Use
    var Animal = mongoose.model('Animal', AnimalSchema);
    var dog = new Animal({ name: 'Rover', type: 'dog' });

    dog.findSimilarType(function (err, dogs) {
    if (err) return ...
    dogs.forEach(..);
    })