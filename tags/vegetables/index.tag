<vegetable>
    <div class="row">
        <div class="col-md-2">
            <div id="nav">
                <div class="list-group">
                    <a href="#vegetables/carrot" class="list-group-item">にんじん</a>
                    <a href="#vegetables/pumpkin" class="list-group-item">かぼちゃ</a>
                    <a href="#vegetables/lettuce" class="list-group-item">れたす</a>
                </div>
            </div>
        </div>
        <div class="col-md-10">
            <div id="container">
                <h1>やさいいんでっくす</h1>
            </div>
        </div>
    </div>
    <script>
		import route from 'riot-route';

		var subRoute = route.create();

		this.on('mount' , () => {
			console.log('vegetable-index mount');

			subRoute('vegetables/carrot', () => {
				console.log('vegetables carrot');
				riot.mount('#container', 'carrot', { name: "にんじん" });
			});
			subRoute('vegetables/pumpkin', () => {
				console.log('vegetables pumpkin');
				riot.mount('#container', 'pumpkin', { name: "かぼちゃ" });
			});
			subRoute('vegetables/lettuce', () => {
				console.log('vegetables lettuce');
				riot.mount('#container', 'lettuce', { name: "れたす" });
			});

//			subRoute(route.current, null , true);
		});

        this.on('unmount', () => {
            console.log('vegetable-index unmount');
        });
    </script>
    <style>
        h1 {
            margin-top: 0;
        }
    </style>
</vegetable>