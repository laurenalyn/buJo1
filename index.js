require('dotenv').config();

const express = require('express');
const app = express();
const bodyParser = require('body-parser');

const session = require('express-session');
const pgSession = require('connect-pg-simple')(session);
