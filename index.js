import * as riot from 'riot';
import route from 'riot-route';
import bootstrap from 'bootstrap';

import 'tags/app.tag!';
import 'tags/home.tag!';
import 'tags/main.tag!';
import 'tags/vegetables/index.tag!';
import 'tags/vegetables/detail.tag!';
import 'tags/vegetables/carrot.tag!';
import 'tags/vegetables/pumpkin.tag!';
import 'tags/vegetables/lettuce.tag!';
import 'tags/fruits/index.tag!';
import 'tags/fruits/apple.tag!';
import 'tags/fruits/peaches.tag!';
import 'tags/fruits/grape.tag!';
import 'tags/meats/index.tag!';
import 'tags/meats/beef.tag!';
import 'tags/meats/pork.tag!';
import 'tags/meats/chicken.tag!';

import 'route.js';

riot.mount('app');
route.start(true);