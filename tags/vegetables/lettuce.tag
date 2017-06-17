<lettuce>
	<h1>Lettuce</h1>
	<p>{ name } だよ。</p>
</lettuce>
<script>
	this.name = this.opts.name;

	this.on('mount' , () => {
		console.log(this.name + ' mount');
	});
	this.on('unmount', () => {
		console.log(this.name + ' unmount');
	});
</script>