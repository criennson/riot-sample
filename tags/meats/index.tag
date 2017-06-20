<meat>
    <div class="row">
        <div class="col-md-2">
            <div id="nav">
                <div class="list-group">
                    <a href="#meats/beef" class="list-group-item">うし</a>
                    <a href="#meats/pork" class="list-group-item">ぶた</a>
                    <a href="#meats/chicken" class="list-group-item">とり</a>
                </div>
            </div>
        </div>
        <div class="col-md-10">
            <div id="container">
                29日は肉の日。
            </div>
        </div>
    </div>
    <script>
		import route from 'riot-route';

		var subRoute = route.create();

		this.on('mount' , () => {
			console.log('meats-index mount');

			subRoute('meats/beef', () => {
				console.log('meats beef');
				setTimeout( function() {
					console.log('meats beef 2');
					riot.mount('#container', 'beef', { name: "うし" });
				}, 1500 );
			});
			subRoute('meats/pork', () => {
				console.log('meats pork');
				riot.mount('#container', 'pork', { name: "ぶた" });
			});
			subRoute('meats/chicken', () => {
				console.log('meats chicken');
				riot.mount('#container', 'chicken', { name: "とり" });
			});

			subRoute(route.current, null , true);
		});

		this.on('unmount', () => {
			console.log('fruits-index unmount');
		});
    </script>
</meat>