
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";



CREATE TABLE `tb_ferramentas` (
  `cod_FERRAMENTA` int(11) UNSIGNED NOT NULL,
  `nome_ferramenta` varchar(80) DEFAULT NULL,
  `marca_ferramenta` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



CREATE TABLE `tb_usuario` (
  `cod_usuario` int(11) UNSIGNED NOT NULL,
  `login_usuario` varchar(30) DEFAULT NULL,
  `senha_usuario` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



CREATE TABLE `usuario_ferramenta` (
  `id_usuario` int(10) UNSIGNED DEFAULT NULL,
  `id_ferramenta` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


ALTER TABLE `tb_ferramentas`
  ADD PRIMARY KEY (`cod_FERRAMENTA`);


ALTER TABLE `tb_usuario`
  ADD PRIMARY KEY (`cod_usuario`);


ALTER TABLE `usuario_ferramenta`
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_ferramenta` (`id_ferramenta`);

ALTER TABLE `tb_ferramentas`
  MODIFY `cod_FERRAMENTA` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `tb_usuario`
  MODIFY `cod_usuario` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `usuario_ferramenta`
  ADD CONSTRAINT `usuario_ferramenta_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `tb_usuario` (`cod_usuario`),
  ADD CONSTRAINT `usuario_ferramenta_ibfk_2` FOREIGN KEY (`id_ferramenta`) REFERENCES `tb_ferramentas` (`cod_FERRAMENTA`);
COMMIT;
