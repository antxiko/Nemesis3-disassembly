# Los textos

El cartucho tiene dos clases de texto:

- **Letras**: listas de bytes con su dirección de pantalla (`p00:4B04`,
  `4B1B`, `4B0C`, `4B1F`); la A es el 0x12 y van en la fuente de 8 x 8 que
  carga `p00:54C3`. Las saca `tools/textos.py`.
- **Dibujos**: la historia y el final no son letras. Cada pantalla de texto
  son caracteres seguidos (0x01, 0x02, 0x03...) cuyo dibujo trae ya las letras,
  en una letra más fina. Aquí van copiados de la imagen, tal como salen.

## Las letras

| Dónde | Texto |
|---|---|
| `p00:479C` | 1 PLAYER / 2 PLAYERS |
| `p02:864C` | GAME OVER / CONTINUE F5 |
| `p02:8668` | PLAYER 1 |
| `p02:8673` | EXTEND PLAY / F5 |
| `p03:BDEF` | HINT / "?X?A?D" / "?OO?" / "?A?D" / "?I?D" |
| `p01:6C86` | SAVE COMPLETED / SAVE FAILED / LOAD COMPLETED / LOAD FAILED |
| `p26:64E3` | SELECT / PLAYER 1 |
| `p26:6F3D` | FULL POWERUP / ALREADY |

La pantalla HINT da las cuatro claves de la pausa con letras tapadas: EXPAND,
GOOD, HARD y FIND (ver [Curiosidades](CURIOSIDADES.html)).

## La historia

> A LONG LONG TIME AGO.
>
> PLANET NEMESIS WAS INVOLVED IN 3 SPACE WARS;
> VERSUS BACTERION
> VERSUS VENOM
> VERSUS SALAMANDER
>
> TIME HAS PASSED... 200 YEARS LATER TO BE EXACT...
>
> IT IS NOW 6809 NEMESIS YEAR.

| YEAR | EVENT |
|---|---|
| G6641 | BIRTH OF JAMES BURTON |
| G6658 | WAR WITH BACTERION |
| G6666 | WAR WITH VENOM. JAMES BECOMES LARS XVIII |
| G6709 | WAR WITH SALAMANDER |
| G6718 | DEATH OF JAMES BURTON |
| G6809 | 『VIXEN』 FIGTHER DEVELOPED |

> 『VIXEN』 FIGHTER DEVELOPED BY NEMESIS' SCI-TECH AGENCY. THERE ARE 4 CLASSES.
>
> 『GAUDIE』 ARTIFICIAL INTELLIGENCE COMPUTER INSTALLED ON VIXEN.
>
> 『DAVID BURTON』 DIRECT DESCENDANT OF JAMES. VIXEN FIGHTER PILOT. HAS HIGH
> LEVEL ESP JUST LIKE JAMES.

| YEAR | EVENT |
|---|---|
| G6809.10 | AT THE CONTROLS OF VIXEN, DAVID BURTON SETS OUT TO REPEL BACTERION. |

En la línea de G6809 pone **FIGTHER**; en la pantalla siguiente, bien:
FIGHTER.

## El ordenador de a bordo

También son dibujos, como la historia:

> Tras la fase 3: 『THE MOVEMENT OF THE BACTERIONS IS ODD.』
>
> El mapa rojo: 『HERE'S A RED MAP.』 『THERE SEEM TO BE 3 DIFFERENT KINDS OF MAP.』
> 『EACH TYPE MATCHES A PRIMARY LIGHT COLOUR; RED, BLUE OR GREEN.』 『WE NEED ALL
> 3 COLOURS FOR THE COMPLETE MAP.』
>
> El aparato: 『I'VE FOUND SOME KIND OF A EXTRA-SENSORY DEVICE.』
>
> Tras la fase 9: 『HERE'S THE ASSEMBLED MAP.』 『WE STILL NEED ONE MAP. I'LL GO
> BACK AND GET IT.』

## El final

> 『THERE'S A KIND OF CAPSULE.』
> 『I'LL BRING IN THE CAPSULE.』
> 『IT'S JAMES... HE LOOKS LIKE HE'S DEAD.』
> 『I'LL PUT IN THE REVIVAL GAS.』
> 『HE'S COMPLETELY RECOVERED.』
> 『LET'S HEAD FOR NEMESIS.』
>
> JAMES BURTON SAFELY RETURNED.
> VIXEN ENTERED TIME-WARP TO RETURN HOME.
>
> EMERGENCY!!
> 『WE'RE UNDER ATTACK FROM AN UNIDENTIFIED CRAFT.』
> 『THERE'S A MESSAGE COMING THROUGH...』
> 『THINK YOU CAN GET AWAY? HA, FOOLS!!!』 (en rojo: Venom)
> 『WE MAY NOT HAVE GOT LARS BUT YOU WON'T ESCAPE. DIE!』
> 『VENOM IS NOT DEAD!』
> 『THE VIXEN CRAFT CANNOT USE THE SHIELD IN WARP MODE.』
> 『CANCEL WARP THOUGH WHO KNOWS WHERE WE'LL EMERGE.』
> 『WARP OFF.』

| YEAR | EVENT |
|---|---|
| G6809 | DAVID BURTON SETS OUT IN VIXEN FIGHTER TO REPEL BACTERION. NOT YET RETURNED. |

Mientras dura el viaje en el tiempo, la fecha del ordenador de a bordo salta: G6644.07
durante el rescate y luego G6584, G6951, G7184, G6626...
