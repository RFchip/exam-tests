function timeOut(){
				$("#example_2").everyTime(1000, 'timer2', function(i) {
					$(this).text(i);
					flag++;
					if(flag==5){
						alert("FAIL!!!");
						
						if (qId < (qq + 1)) {
							uA[qId - 1] = status_wa;
						}
						if (qId < qq) {
							
							

							$("#output").load("next/" + qId + " #question", 
								$.timeOut());
							flag =0;
//		 					qId++;
							};
					};
				}, 5);
			};