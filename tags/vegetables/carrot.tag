<carrot>
	<h1>Carrot</h1>
	<p>{ name } だよ。</p>
</carrot>
<script>
	this.name = this.opts.name;
	console.log('this.opts.name: ' + this.opts.name);

	this.on('mount' , () => {
		console.log('carrot mount');
	});
	this.on('unmount', () => {
		console.log('carrot unmount');
	});
</script>