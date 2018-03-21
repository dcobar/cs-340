var express = require('express');
var bodyParser = require('body-parser');
var mysql = require('mysql');
var pool = mysql.createPool(
{
	host: 'oniddb.cws.oregonstate.edu',
	user: 'cobard-db',
	database: 'cobard-db',
	password: 'qHMPrfqsIDA7Eigx',
});

var app = express();
var handlebars = require('express-handlebars').create({defaultLayout: 'main'});

app.engine('handlebars', handlebars.engine);
app.set('view engine', 'handlebars');
app.set('port', 9856);
app.use(bodyParser.urlencoded({extended: false}));
app.use(bodyParser.json());
app.use(express.static('public'));

app.get('/', function(req, res) 
{
	res.render('home');
});

var selectTableData = function(res, table) 
{
  var ctx = {};
  pool.query('SELECT * FROM ' + table, function(err, rows, fields) 
  {
    if (err) 
	{
      console.log(err);
      return;
    }
    ctx.results = rows;
    res.send(ctx);
  });
};

app.get('/unit', function(req, res) 
{
  selectTableData(res, 'unit');
});

app.get('/startingClass', function(req, res) 
{
  selectTableData(res, 'startingClass');
});

app.get('/weaponTypes', function(req, res) 
{
  selectTableData(res, 'weaponTypes');
});

app.get('/promotion', function(req, res) 
{
  selectTableData(res, 'difficulty');
});

app.get('/items', function(req, res) 
{
  selectTableData(res, 'maps');
});

app.get('/unit_startingClass', function(req, res) 
{
  selectTableData(res, 'unit_startingClass');
});

app.get('/startingClass_weaponTypes', function(req, res) 
{
  selectTableData(res, 'startingClass_weaponTypes');
});

app.get('/startingClass_promotion', function(req, res) 
{
  selectTableData(res, 'startingClass_promotion');
});

app.get('/unit_items', function(req, res) 
{
  selectTableData(res, 'unit_items');
});

app.post('/search_unit_items', function(req, res) 
{
  var ctx = {};
  var body = req.body;
  var queryStr = "SELECT unit.name FROM unit ";
  queryStr += 'INNER JOIN unit_items ON unit.id = unit_maps.unit_id ';
  queryStr += 'INNER JOIN unit ON items.id = unit_items.items_id';
  queryStr += ' WHERE items.items = "' + body.items + '";';

  pool.query(queryStr, function(err, rows, fields) 
  {
    if (err) 
	{
      console.log(err);
      return;
    }
    ctx.results = rows;
    res.send(ctx);
  });
});

var generateUpdateStr = function(body, table) 
{
  var keys = [];
  var values = [];
  var str = '';
  for (var key in body) 
  {
    keys.push(key);
    values.push("'" + body[key] + "'");
  }
  str += "INSERT INTO " + table;
  str += "(" + keys.join(",") + ")";
  str += " VALUES (" + values.join(",") + ");";

  return str;
};

var updateEntry = function(req, res, table) 
{
  var updateStr = generateUpdateStr(req.body, table);

  pool.query(updateStr, function(err, rows, fields) 
  {
    if (err) 
	{
      console.log(err);
      return;
    }
    res.send(JSON.stringify(rows));
  });
};

app.post('/unit', function(req, res) 
{
  updateEntry(req, res, 'unit');
});

app.post('/startingClass', function(req, res) 
{
  updateEntry(req, res, 'startingClass');
});

app.post('/weaponTypes', function(req, res) 
{
  updateEntry(req, res, 'weaponTypes');
});

app.post('/promotion', function(req, res) 
{
  updateEntry(req, res, 'promotion');
});

app.post('/items', function(req, res) 
{
  updateEntry(req, res, 'items');
});

app.post('/unit_startingClass', function(req, res) 
{
  updateEntry(req, res, 'unit_startingClass');
});

app.post('/startingClass_weaponTypes', function(req, res) 
{
  updateEntry(req, res, 'startingClass_weaponTypes');
});

app.post('/startingClass_promotion', function(req, res) 
{
  updateEntry(req, res, 'startingClass_promotion');
});

app.post('/unit_items', function(req, res) 
{
  updateEntry(req, res, 'unit_items');
});

var deleteEntry = function(req, res, table) 
{
  var ctx = {};
  var id = req.body.id;
  pool.query('DELETE FROM ' + table + ' WHERE id = ' + id, function(err, rows, fields) 
  {
    if (err) 
	{
      console.log(err);
      return;
    }
    ctx.results = JSON.stringify(rows);
    res.send(ctx);
  });
};

app.delete('/unit', function(req, res) 
{
  deleteEntry(req, res, 'unit');
});

app.delete('/startingClass', function(req, res) 
{
  deleteEntry(req, res, 'startingClass');
});

app.delete('/weaponTypes', function(req, res) 
{
  deleteEntry(req, res, 'weaponTypes');
});

app.delete('/promotion', function(req, res) 
{
  deleteEntry(req, res, 'promotion');
});

app.delete('/items', function(req, res) 
{
  deleteEntry(req, res, 'items');
});

app.delete('/unit_startingClass', function(req, res) 
{
  var ctx = {};
  var body = req.body;
  var unit_id = body.unit_id;
  var startingClass_id = body.startingClass_id;

  var queryStr = 'DELETE FROM unit_startingClass WHERE unit_id = ' + unit_id;
  queryStr += ' AND startingClass_id = ' + startingClass_id + ';';

  pool.query(queryStr, function(err, rows, fields) 
  {
    if (err) 
	{
      console.log(err);
      return;
    }
    ctx.results = JSON.stringify(rows);
    res.send(ctx);
  });
});

app.delete('/startingClass_weaponTypes', function(req, res) 
{
  var ctx = {};
  var body = req.body;
  var startingClass_id = body.startingClass_id;
  var weaponTypes_id = body.weaponTypes;

  var queryStr = 'DELETE FROM startingClass_weaponTypes WHERE startingClass_id = ' + startingClass_id;
  queryStr += ' AND startingClass_id = ' + startingClass_id + ';';

  pool.query(queryStr, function(err, rows, fields) 
  {
    if (err) 
	{
      console.log(err);
      return;
    }
    ctx.results = JSON.stringify(rows);
    res.send(ctx);
  });
});

app.delete('/startingClass_promotion', function(req, res) 
{
  var ctx = {};
  var body = req.body;
  var startingClass_id = body.startingClass_id;
  var promotion_id = body.promotion_id;

  var queryStr = 'DELETE FROM startingClass_promotion WHERE startingClass_id = ' + startingClass_id;
  queryStr += ' AND promotion_id = ' + promotion_id + ';';

  pool.query(queryStr, function(err, rows, fields) 
  {
    if (err) 
	{
      console.log(err);
      return;
    }
    ctx.results = JSON.stringify(rows);
    res.send(ctx);
  });
});

app.delete('/unit_items', function(req, res) 
{
  var ctx = {};
  var body = req.body;
  var unit_id = body.unit_id;
  var items_id = body.items_id;

  var queryStr = 'DELETE FROM unit_items WHERE unit_id = ' + unit_id;
  queryStr += ' AND items_id = ' + items_id + ';';

  pool.query(queryStr, function(err, rows, fields) 
  {
    if (err) 
	{
      console.log(err);
      return;
    }
    ctx.results = JSON.stringify(rows);
    res.send(ctx);
  });
});

app.use(function(req, res) 
{
	res.status(404);
	res.render('404');
});

app.use(function(err, req, res, next)
{
	console.log(err.stack);
	res.status(500);
	res.render('500');
});

app.listen(app.get('port'), function() 
{
	console.log('Application started on port ' + app.get('port'));
});