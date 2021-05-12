Feature: Collect Items Cart

	@TEST_AG-49 @TESTSET_AG-16
	Scenario: Add Item
		Given Usuario logado
		And desde la pagina de Prodcutos
		And seleccionado Producto
		When pulsa icono Buy
		Then el producto se añade a la lista de productos de Cart y se incrementa amount con el valor del nuevo producto
	@TEST_AG-50 @TESTSET_AG-16
	Scenario: Delete Item
		Given Usuario logado
		And desde la pagina Cart
		And existen productos en Cart
		When pulsa icono Delete en uno de los productos
		Then el producto desaparece y el amount se resta el valor del producto
	@TEST_AG-51 @TESTSET_AG-16
	Scenario: Add Item ya existe
		Given Usuario logado
		And desde la pagina de Prodcutos
		And seleccionado Producto que ya existe en Cart
		When pulsa icono Buy
		Then en la lista de Cart se ha de incrementar el número de items de ese producto y sumar el valor del producto al Amount total
