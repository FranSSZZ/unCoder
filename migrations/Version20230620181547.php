<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20230620181547 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE entrevista (id INT AUTO_INCREMENT NOT NULL, testigo VARCHAR(255) NOT NULL, tipo_crimen VARCHAR(255) NOT NULL, transcripcion VARCHAR(255) NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE escena (id INT AUTO_INCREMENT NOT NULL, fecha VARCHAR(255) NOT NULL, ciudad VARCHAR(255) NOT NULL, tipo_crimen VARCHAR(255) NOT NULL, descripcion LONGTEXT NOT NULL, testigo1 VARCHAR(255) NOT NULL, testigo2 VARCHAR(255) NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE library (id INT AUTO_INCREMENT NOT NULL, tarjeta_id INT NOT NULL, nombre VARCHAR(255) NOT NULL, seudonimo VARCHAR(255) NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE persona (id INT AUTO_INCREMENT NOT NULL, nombre VARCHAR(255) NOT NULL, c_ojos VARCHAR(255) NOT NULL, c_cabello VARCHAR(255) NOT NULL, t_zapato VARCHAR(255) NOT NULL, genero VARCHAR(255) NOT NULL, tatuaje VARCHAR(255) NOT NULL, t_tatuaje VARCHAR(255) NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('DROP TABLE entrevista');
        $this->addSql('DROP TABLE escena');
        $this->addSql('DROP TABLE library');
        $this->addSql('DROP TABLE persona');
    }
}
