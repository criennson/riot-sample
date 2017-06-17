<pumpkin>
	<h1>Pumpkin</h1>
	<p>{ name } だよ。</p>
</pumpkin>
<script>
	this.name = this.opts.name;

	this.on('mount' , () => {
		console.log(this.name + ' mount');
	});
	this.on('unmount', () => {
		console.log(this.name + ' unmount');
	});
</script>