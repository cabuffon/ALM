SELECT s.rut_sostenedor AS rutSostenedor,
      s.nombre_sostenedor AS nombreSostenedor,
      s.telefono_fijo AS telefonoFijo,
      s.telefono_movil AS telefonoMovil,
      s.email AS email,
      s.email_dos AS emailDos,
      s.email_tres AS emailTres,
      s.direccion AS direccion,
      s.numero AS numero,
      (SELECT nombre FROM info.region WHERE id_region = s.id_region) AS idRegionGlosa,
  (SELECT nombre FROM info.comuna WHERE id_comuna = s.id_comuna) AS idComunaGlosa,
      s.vigente AS vigente,
      s.fecha_creacion AS fechaCreacion,
  s.fecha_modificacion AS fechaModificacion,
      (SELECT (nombres || ' ' || paterno) FROM info.usuario WHERE id_usuario = s.usuario_creador) AS usuarioCreador,
      fuente AS fuente
      FROM info.sostenedor s
      WHERE s.rut_sostenedor = :#rutSostenedor::integer
            AND s.vigente = 1