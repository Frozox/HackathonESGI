<?php

namespace App\Entity;

use App\Repository\PageRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: PageRepository::class)]
class Page
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column(type: 'integer')]
    private $id;

    #[ORM\Column(type: 'string', length: 255)]
    private $slug;

    #[ORM\ManyToMany(targetEntity: PageBlock::class)]
    private $blockList;

    public function __construct()
    {
        $this->blockList = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getSlug(): ?string
    {
        return $this->slug;
    }

    public function setSlug(string $slug): self
    {
        $this->slug = $slug;

        return $this;
    }

    /**
     * @return Collection<int, PageBlock>
     */
    public function getBlockList(): Collection
    {
        return $this->blockList;
    }

    public function addBlockList(PageBlock $blockList): self
    {
        if (!$this->blockList->contains($blockList)) {
            $this->blockList[] = $blockList;
        }

        return $this;
    }

    public function removeBlockList(PageBlock $blockList): self
    {
        $this->blockList->removeElement($blockList);

        return $this;
    }
}
