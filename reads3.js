console.log('Loading function');

var AWS = require('aws-sdk');
var s3 = new AWS.S3();
var src_bkt = 'testdc222';
var src_key = '/empty1.fastq';

exports.handler = function(event, context, callback) {
     s3.getObject({
        Bucket: src_bkt,
        Key: src_key
    }, function(err, data) {
        if (err) {
            console.log(err, err.stack);
            callback(err);
        } else {
            console.log("Raw text:\n" + data.Body.toString('ascii'));
            callback(null, null);
        }
    });

    console.log('value1 =', event.key1);
    console.log('value2 =', event.key2);
    console.log('value3 =', event.key3);
    callback(null, "Success");
    
};
