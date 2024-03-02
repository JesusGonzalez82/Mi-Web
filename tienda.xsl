<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0" 
	xmlns="http://www.w3.org/1999/xhtml">

<xsl:template match='/'>
<html>
	<head>
	<link rel="stylesheet" type="text/css" href="styles.css" />
		<title>Tienda</title>
	</head>
	<body>
		<header>
			<div class="container">
				<p class="logo">Bicicletas Sierra Norte!</p>
				<nav>
					<a href="#Por_que_nosotros">Nosotros</a>
					<a href="#Nuestras_Bicis">Modalidades</a>
					<a href="#datos">Bicicletas</a>
					<a href="#caracteristicas">Caracteristicas</a>
				</nav>
			</div>
		</header>
		<section id='hero'>
			<h1>Las mejores Bicicletas <br> del mercado</br></h1>
			<button>Accede</button>
		</section>
		
		<section id='Por_que_nosotros'>
			<div class='container'>
				<div class="img-container"></div>
				<div class= 'texto'>
				<h1>Nos gustan <span class='color-mio'>LAS BICIS</span></h1>
				<p>¡Bienvenido a nuestro santuario ciclista!
					En nuestra tienda, no solo vendemos bicicletas; compartimos una pasión. Cada bicicleta que ofrecemos es más que un simple medio de transporte: es una entrada a la libertad, la aventura y la exploración.
					Aquí, cada clic de cambio, cada giro de pedal, está impregnado de emoción y dedicación. Nos dedicamos a ayudarte a encontrar la bicicleta perfecta que refleje tu estilo, tus sueños y tus aspiraciones.
					Ven y únete a nuestra comunidad de ciclistas apasionados. Juntos, recorreremos caminos, desafiaremos límites y crearemos recuerdos que durarán toda la vida. ¡Descubre el poder transformador del ciclismo y únete a nosotros en nuestra misión de pedalear con propósito y pasión! </p>
				</div>
			</div>
		</section>
		
		<section id='Nuestras_Bicis'>
			<div class='container'>
				<h2>Categorias</h2>
				<div class='bicis'>
					<div class='carta'>
						<h3>Carretera</h3>
						<p>¿Qué es la carretera sino el lienzo donde pintamos nuestros sueños? 
						
						Con nuestras bicicletas de carretera, cada pedaleo es una nota en la sinfonía de la libertad, 
						
						una melodía que nos lleva más allá de lo conocido hacia horizontes nuevos. Sentir el viento acariciando tu rostro, el suave zumbido de las ruedas sobre el asfalto... 
						
						
						Es como si el mundo se desvaneciera y solo quedara el presente, la pura esencia de la vida en movimiento. 

						
						
						¡La aventura te espera, solo tienes que pedalear hacia ella!</p>
						<button onclick="window.location.href = 'road.xml';">+ Info</button>
						<button type="button" onclick="history.back()">Volver atrás</button>
						
					</div>
					<div class='carta'>
						<h3>Gravel</h3>
						<p>¡Descubre la aventura con nuestras bicicletas de gravel!

						Construidas para conquistar cualquier terreno, nuestras bicicletas de gravel te llevan más allá de los límites. Diseñadas para la exploración y la aventura, cada bicicleta ofrece rendimiento y resistencia inigualables.

						Desde caminos de tierra hasta senderos sinuosos, nuestras bicicletas de gravel te permiten abrazar lo desconocido con confianza y estilo. Encuentra tu compañera perfecta para aventuras épicas y descubre un nuevo mundo de posibilidades sobre dos ruedas.

						¡Explora nuestra selección ahora y comienza tu próxima gran aventura!</p>
						<button onclick="window.location.href = 'gravel.xml';">+ Info</button>
						<button type="button" onclick="history.back()">Volver atrás</button>
					</div>
					<div class='carta'>
						<h3>MTB</h3>
						<p>¡Desata tu espíritu aventurero con nuestras bicicletas de montaña (MTB)!

						Diseñadas para desafiar los senderos más exigentes, nuestras MTB combinan resistencia, agilidad y rendimiento para llevarte a nuevas alturas en cada salida.

						Ya sea que estés buscando conquistar terrenos técnicos o simplemente disfrutar del aire libre, nuestras bicicletas de montaña están listas para enfrentar cualquier desafío que se presente en tu camino.

						Explora nuestra selección y prepárate para vivir emocionantes aventuras en la naturaleza. ¡Encuentra tu MTB perfecta y empieza a pedalear hacia la diversión hoy mismo!</p>
						<button onclick="window.location.href = 'mtb.xml';">+ Info</button>
						<button type="button" onclick="history.back()">Volver atrás</button>
					</div>
				</div>
			</div>
		</section>
			<style>
				img{
					width:50px;
					height:50px;
				}
			</style>
			<section id='datos'>
				<div class='container'>
					<div class="titulo-container">
						<h1>Bicicletas</h1>
					</div>
						<div class="tabla-container" />
							<table>
							<thead>
							<tr><th>Código</th><th>Marca</th><th>Modelo</th><th>Año</th><th>Material</th><th>Horquilla</th><th>Amortiguador</th><th>Ruedas</th><th>Cambio</th><th>Marchas</th><th>Peso</th><th>PVP</th><th>Imagen</th><th>Enlace</th></tr>
							</thead>
							<xsl:for-each select='/bicicletas/bicicleta'>
								<tr>
									<td><xsl:value-of select='./@cod_bici'/></td>
									<td><xsl:value-of select='marca'/></td>
									<td><xsl:value-of select='modelo'/></td>
									<td><xsl:value-of select='anio_modelo'/></td>
									<td><xsl:value-of select='material'/></td>
									<td><xsl:value-of select='horquilla'/></td>
									<td><xsl:value-of select='amortiguador'/></td>
									<td><xsl:value-of select='ruedas'/></td>
									<td><xsl:value-of select='cambio'/></td>
									<td><xsl:value-of select='relacion_marchas'/></td>
									<td><xsl:value-of select='peso'/></td>
									<td><xsl:value-of select='PVP'/></td>
									<td>
										<xsl:element name='a'>
											<xsl:attribute name='href'>
												imagenes/<xsl:value-of select='imagen'/>
											</xsl:attribute>
										<xsl:element name='img'>
											<xsl:attribute name='src'>
												imagenes/<xsl:value-of select='imagen'/>
											</xsl:attribute>
											<xsl:attribute name='alt'>
												<xsl:value-of select='imagen'/>
											</xsl:attribute>
										</xsl:element>
										</xsl:element>
									</td>
									<td>
									<a href="{compra/enlace}" target="_blank"><xsl:value-of select="compra/nombre"/></a>
									</td>
								</tr>
							</xsl:for-each>
						</table>
					</div>
				</section>
					
		<section id='caracteristicas'>
			<div class='container'>
				<ul>
					<li>✔️ 100% online</li>
					<li>✔️ Horario flexible</li>
					<li>✔️ Consejos Técnicos</li>
					<li>✔️ Financiacion</li>
				</ul>
			</div>
		</section>
		<footer>
			<div class='container'>
				<p>©️ Jesús González Blanco</p>
			</div>
		</footer>
	</body>
</html>
</xsl:template>
</xsl:stylesheet>