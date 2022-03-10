<?php

namespace App\Entity;

use App\Repository\PageBlockRepository;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\HttpFoundation\File\Exception\FileException;
use Symfony\Component\HttpFoundation\File\File;

#[ORM\Entity(repositoryClass: PageBlockRepository::class)]
class PageBlock
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column(type: 'integer')]
    private $id;

    #[ORM\Column(type: 'string', nullable: true)]
    private $content;

    #[ORM\Column(type: 'string', nullable: true)]
    private $image;

    #[ORM\Column(type: 'string', length: 255)]
    private $name;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getContent(): ?string
    {
        return $this->content;
    }

    public function setContent(?string $content): self
    {
        $this->content = $content;

        return $this;
    }

    public function getImage(): ?string
    {
        return $this->image;
    }

    public function setImage(?File $image): self
    {
        $newFilename = uniqid() . '.' . $image->guessExtension();
        $fullFilePath = '/images/block/' . $newFilename;

        $image->move(
            '../public/images/block/',
        $newFilename
        );

        $this->image = $fullFilePath;

        return $this;
    }

    public function getName(): ?string
    {
        return $this->name;
    }

    public function setName(string $name): self
    {
        $this->name = $name;

        return $this;
    }
}
