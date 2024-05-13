<?php

use Pusher\Pusher;

  require __DIR__ . '/vendor/autoload.php';

  $options = [
    'cluster' => 'sa1',
    'useTLS' => true
  ];

  $pusher = new Pusher(
    'f458c5448697a0e1a749', //auth key
    '8dd615b3490ca98bbd33', //secret
    '1802338', //app id
    $options
  );

  $data['message'] = 'aro oceeeeeeee meoo';
  $pusher->trigger('my-channel', 'my-event', $data);
?>