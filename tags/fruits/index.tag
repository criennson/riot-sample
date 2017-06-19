<fruit>
    <div class="row">
        <div class="col-md-2">
            <div id="nav">
                <div class="list-group">
                    <a href="#fruits/apple" class="list-group-item">りんご</a>
                    <a href="#fruits/peaches" class="list-group-item">もも</a>
                    <a href="#fruits/grape" class="list-group-item">ぶどう</a>
                </div>
            </div>
        </div>
        <div class="col-md-10">
            <div id="container">
                <h1>みっくすじゅーす</h1>
            </div>
        </div>
    </div>
    <script>
		import route from 'riot-route';

		var subRoute = route.create();

		this.on('mount' , () => {
			console.log('fruits-index mount');

			subRoute('fruits/apple', () => {
				console.log('fruits apple');
				riot.mount('#container', 'apple', { name: "りんご" });
			});
			subRoute('fruits/peaches', () => {
				console.log('fruits peaches');
				riot.mount('#container', 'peaches', { name: "もも" });
			});
			subRoute('fruits/grape', () => {
				console.log('fruits grape');
				riot.mount('#container', 'grape', { name: "ぶどう" });
			});

			subRoute(route.current, null , true);
		});

		this.on('unmount', () => {
			console.log('fruits-index unmount');
		});
    </script>
</fruit>