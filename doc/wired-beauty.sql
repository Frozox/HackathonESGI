-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : mariadb
-- Généré le : ven. 11 mars 2022 à 17:25
-- Version du serveur : 10.7.1-MariaDB-1:10.7.1+maria~focal
-- Version de PHP : 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `hackathon`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id`, `category_id`, `title`, `body`) VALUES
(5, 3, 'article test 1', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>');

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(3, 'test 1');

-- --------------------------------------------------------

--
-- Structure de la table `page`
--

DROP TABLE IF EXISTS `page`;
CREATE TABLE `page` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `page`
--

INSERT INTO `page` (`id`, `slug`, `name`) VALUES
(5, 'what-we-do', 'What we do'),
(6, 'our-device', 'Our device'),
(7, 'who-we-are', 'Who we are'),
(8, 'scientific-validation', 'Scientific validation'),
(9, 'studies-and-services', 'Studies & Services');

-- --------------------------------------------------------

--
-- Structure de la table `page_block`
--

DROP TABLE IF EXISTS `page_block`;
CREATE TABLE `page_block` (
  `id` int(11) NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `page_block`
--

INSERT INTO `page_block` (`id`, `content`, `image`, `name`) VALUES
(26, '<div class=\"max-w-screen-xl mx-auto page-what-we-doscreen py-8\"><div class=\"flex-row justify-center\"><div class=flex-col><h1 class=title>BeautyTech X Skincare</h1><p class=wired-beauty-is-a-neraleway-normal-mine-shaft-16px>WIRED BEAUTY is a new datadriven market research company dedicated to cosmetic laboratories.<p class=understand-exposomeraleway-normal-mine-shaft-16px>UNDERSTAND exposome and skin<br>TRULY UNDERSTAND skin reactions in absence of product<div class=\"font-medium source-sans-pro-semibold-13px-2\">Our expertise</div><p class=scientific-knowledgeraleway-normal-mine-shaft-16px>Scientific knowledge of exposome and skincare<br>Data science and statistics<br>Ai and signal interpretation<br>Digitally enabled clinical trials and consumer blind tests<div class=\"font-medium we-research-skincare\">WE RESEARCH SKINCARE</div><p class=we-help-our-clientsraleway-normal-mine-shaft-16px>We help our clients evaluate and develop skincare formulae by comparing cosmetics on statistically viable samples of men & women (1000 people) :<br><br>evaluate the efficiency of the products<br><br>consumer feedback after product use<br><br>environmental conditions (UV, pollution) surrounding the consumer’s lifestyle<br><br>skincare performance after 1 day – 8 days – 15 days - X days.</div><div class=flex-col-1><img class=rectangle-70 src=https://anima-uploads.s3.amazonaws.com/projects/622b21f92768f3ed9f15232a/releases/622b22112768f3ed9f15232b/img/rectangle-70@2x.png><img class=rectangle-71 src=https://anima-uploads.s3.amazonaws.com/projects/622b21f92768f3ed9f15232a/releases/622b22112768f3ed9f15232b/img/rectangle-71@2x.png></div></div><div class=overlap-group5><div class=\"flex group-19 h-full items-center justify-between text-center\"><div class=group-17><img class=inbox src=https://anima-uploads.s3.amazonaws.com/projects/622b21f92768f3ed9f15232a/releases/622b30af45d5c70356a62126/img/inbox@2x.svg><p class=nomadic-lab-to-decipher-skin-reactionsraleway-normal-mine-shaft-16px>Nomadic lab to decipher<br>skin reactions</div><div class=group-16><img class=inbox src=https://anima-uploads.s3.amazonaws.com/projects/622b21f92768f3ed9f15232a/releases/622b72e05fce6bb31ab65fb3/img/smartphone-multi-1@2x.svg><div class=customer-feedbackraleway-normal-mine-shaft-16px>Multi-lingual<br>smartphone app</div></div><div class=group-15><img class=group-9 src=https://anima-uploads.s3.amazonaws.com/projects/622b21f92768f3ed9f15232a/releases/622b30af45d5c70356a62126/img/group-9@2x.svg><div class=customer-feedbackraleway-normal-mine-shaft-16px>Customer feedback</div></div><div class=group-14><img class=map-pin src=https://anima-uploads.s3.amazonaws.com/projects/622b21f92768f3ed9f15232a/releases/622b30af45d5c70356a62126/img/map-pin@2x.svg><p class=geolocalisation-uvraleway-normal-mine-shaft-16px><span class=raleway-normal-mine-shaft-16px>Geolocalisation<br></span><span class=span1raleway-normal-mine-shaft-11px>UV - pollution - temperature</span></div></div></div><div class=footer><img class=line-12 src=https://anima-uploads.s3.amazonaws.com/projects/622b21f92768f3ed9f15232a/releases/622b22112768f3ed9f15232b/img/line-12@1x.svg><div class=flex-row-1><img class=image-2 src=https://anima-uploads.s3.amazonaws.com/projects/622b21f92768f3ed9f15232a/releases/622b22112768f3ed9f15232b/img/image-2@2x.png><img class=logos_-bio-a-et-syn-1 src=https://anima-uploads.s3.amazonaws.com/projects/622b21f92768f3ed9f15232a/releases/622b22112768f3ed9f15232b/img/logos-bioa-et-syn-1@2x.png><img class=image-3 src=https://anima-uploads.s3.amazonaws.com/projects/622b21f92768f3ed9f15232a/releases/622b22112768f3ed9f15232b/img/image-3@2x.png></div><img class=line-13 src=https://anima-uploads.s3.amazonaws.com/projects/622b21f92768f3ed9f15232a/releases/622b22112768f3ed9f15232b/img/line-13@1x.svg><div class=flex-row-2><div class=x-container><div class=source-sans-pro-semibold-13px><div class=source-sans-pro-semibold-13px-1><p class=source-sans-pro-semibold-13px-3sourcesanspro-semi-bold-mine-shaft-13px>How can we help ?</div></div><div class=raleway-regular-14px-3><div class=raleway-regular-14pxraleway-normal-mine-shaft-14px>Learn about our services</div></div><div class=raleway-regular-14px-1><div class=raleway-regular-14pxraleway-normal-mine-shaft-14px>Describe your problematic</div></div><div class=raleway-regular-14px-1><div class=raleway-regular-14pxraleway-normal-mine-shaft-14px>Prices</div></div><div class=raleway-regular-14px-1><div class=raleway-regular-14pxraleway-normal-mine-shaft-14px>We are recruiting</div></div><div class=raleway-regular-14px-1><div class=raleway-regular-14pxraleway-normal-mine-shaft-14px>Blog</div></div></div><div class=flex-col-2><div class=source-sans-pro-semibold-px-container><div class=source-sans-pro-semibold-13px><div class=source-sans-pro-semibold-13px-1><div class=source-sans-pro-semibold-13px-4sourcesanspro-semi-bold-mine-shaft-13px>Contact</div></div></div><div class=source-sans-pro-semibold-13px-5><div class=source-sans-pro-semibold-13px-1><div class=source-sans-pro-semibold-13px-6sourcesanspro-semi-bold-mine-shaft-13px>Reference</div></div></div></div><div class=flex-row-3><div class=button-container><div class=\"text-white button-1\"><div class=buttonraleway-medium-white-18px>Book a demo</div></div><div class=\"text-white button-2\"><div class=buttonraleway-medium-white-18px>Webinar</div></div></div><div class=overlap-group4><div class=overlap-group-1><div class=raleway-regular-px-container><div class=raleway-regular-14px-4><div class=raleway-regular-14px-5raleway-normal-mine-shaft-14px>Presse kit</div></div><div class=raleway-regular-14px-6><p class=raleway-regular-14px-7raleway-normal-mine-shaft-14px>Wired beauty is partnering with world class cosmetic companies that want to step up the rationality and research methods.<br><br>We currently work on a NPD project in Asia.<br><br>We also research natural skin reponse to exposome.<br><br>We also work on atopic dermatitis.</div></div><div class=raleway-semibold-14px><div class=ralewayraleway-semi-bold-mine-shaft-14px>Contact presse</div></div><div class=raleway-semibold-14px-1><div class=ralewayraleway-semi-bold-mine-shaft-14px>Contact sales</div></div><div class=raleway-regular-14px-8><p class=raleway-regular-14px-2raleway-normal-mine-shaft-14px>press@wired-beauty.com<br>+33 6 83 72 60 50</div><div class=raleway-regular-14px-9><div class=raleway-regular-14px-2raleway-normal-mine-shaft-14px>Stan@WBT.com<br>Sophie@WBT.com</div></div></div><img class=download src=https://anima-uploads.s3.amazonaws.com/projects/622b21f92768f3ed9f15232a/releases/622b72e05fce6bb31ab65fb3/img/download@2x.svg></div></div><div class=raleway-semibold-14px-2><div class=ralewayraleway-semi-bold-mine-shaft-14px>Contact investor</div></div><div class=raleway-regular-14px-10><div class=ralewayraleway-normal-mine-shaft-14px>Sophie@WBT.com</div></div><div class=flex-row-4><img class=facebook src=https://anima-uploads.s3.amazonaws.com/projects/622b21f92768f3ed9f15232a/releases/622b22112768f3ed9f15232b/img/facebook@2x.svg><img class=flex-row-item src=https://anima-uploads.s3.amazonaws.com/projects/622b21f92768f3ed9f15232a/releases/622b22112768f3ed9f15232b/img/linkedin@2x.svg><img class=flex-row-item src=https://anima-uploads.s3.amazonaws.com/projects/622b21f92768f3ed9f15232a/releases/622b30af45d5c70356a62126/img/twitter@2x.svg></div></div></div><div class=raleway-regular-px-container-1><div class=raleway-regular-14px-11><div class=raleway-regular-14px-12raleway-normal-mine-shaft-14px>Personal data</div></div><div class=raleway-regular-14px-13><div class=raleway-regular-14px-14raleway-normal-mine-shaft-14px>Cookies policy</div></div><div class=raleway-regular-14px-15><div class=raleway-regular-14px-16raleway-normal-mine-shaft-14px>Legal notices</div></div><div class=raleway-regular-14px-17><div class=raleway-regular-14px-18raleway-normal-mine-shaft-14px>Site map</div></div><div class=raleway-regular-14px-19><p class=raleway-regular-14px-20raleway-normal-mine-shaft-14px>© Copyright - Wired Beauty - All rights reserved</div></div></div></div><style>@import url(https://fonts.googleapis.com/css?family=Source+Sans+Pro:200,400,600|Raleway:400,500,600);.hidden,.hidden *{pointer-events:none;visibility:hidden}.page-what-we-do{align-items:center;background-color:var(--white);display:flex;flex-direction:column;height:2133px;width:1280px}.footer{align-items:center;background-color:var(--white);display:flex;flex-direction:column;margin-top:160px;min-height:625px;padding:.5px 108px;width:1280px}.line-13{align-self:flex-end;height:1px;margin-top:36px;width:1063px}.line-12{align-self:flex-end;height:1px;width:1059px}.flex-row-2{align-items:flex-start;display:flex;height:373px;margin-top:80px;min-width:1062px}.flex-col-2{align-items:center;display:flex;flex-direction:column;margin-left:25px;min-height:373px;width:845px}.raleway-regular-14px-10{align-items:flex-start;display:flex;height:19px;margin-left:110px;margin-top:10px;min-width:301px}.raleway{letter-spacing:0;line-height:18.2px;min-height:18px;white-space:nowrap}.raleway-semibold-14px-2{align-items:flex-start;display:flex;height:18px;margin-right:17px;margin-top:27px;min-width:174px}.source-sans-pro-semibold-px-container{align-items:flex-start;align-self:flex-end;display:flex;margin-right:4px;min-width:514px}.source-sans-pro-semibold-13px-5{align-items:flex-start;display:flex;margin-left:138px;min-width:188px}.source-sans-pro-semibold-13px-1{align-items:flex-start;display:flex;height:17px;min-width:188px}.source-sans-pro-semibold-13px-6{letter-spacing:0;line-height:16.9px;min-height:17px;white-space:nowrap}.source-sans-pro-semibold-13px{align-items:flex-start;display:flex;min-width:188px}.source-sans-pro-semibold-13px-4{letter-spacing:0;line-height:16.9px;min-height:17px;white-space:nowrap}.flex-row-3{align-items:flex-start;display:flex;margin-top:30px;min-width:845px}.button-container{align-items:flex-start;display:flex;flex-direction:column;min-height:113px;width:192px}.button-2{background-color:var(--rock-blue);margin-top:21px;padding:11px}.button{letter-spacing:0;line-height:23.4px;min-height:23px;text-align:center;white-space:nowrap;width:192px}.button-1{background-color:var(--rock-blue);padding:11px}.overlap-group4{height:198px;margin-left:135px;position:relative;width:518px}.overlap-group-1{height:198px;left:0;position:absolute;top:0;width:518px}.raleway-semibold-14px{align-items:flex-start;display:flex;height:18px;left:0;min-width:174px;position:absolute;top:37px}.raleway-regular-14px-9{align-items:flex-start;display:flex;height:36px;left:0;min-width:301px;position:absolute;top:159px}.raleway-regular-14px-2{letter-spacing:0;line-height:18.2px;min-height:36px;width:301px}.raleway-semibold-14px-1{align-items:flex-start;display:flex;height:18px;left:0;min-width:174px;position:absolute;top:131px}.raleway-regular-px-container{height:198px;left:25px;position:absolute;top:0;width:493px}.raleway-regular-14px-4{align-items:flex-end;display:flex;height:17px;left:0;min-width:302px;position:absolute;top:0}.raleway-regular-14px-5{letter-spacing:0;line-height:18.2px;margin-bottom:-1px;min-height:18px;white-space:nowrap;width:302px}.raleway-regular-14px-6{height:198px;left:301px;min-width:192px;position:absolute;top:0}.raleway-regular-14px-7{letter-spacing:0;line-height:18.2px;margin-bottom:-54px;min-height:252px;width:192px}.raleway-regular-14px-8{align-items:flex-start;display:flex;height:36px;left:0;min-width:301px;position:absolute;top:65px}.download{height:15px;left:0;position:absolute;top:2px;width:15px}.flex-row-4{align-items:flex-start;display:flex;margin-right:69px;margin-top:30px;min-width:122px}.flex-row-item{height:24px;margin-left:25px;width:24px}.facebook{height:24px;width:24px}.x-container{align-items:flex-start;display:flex;flex-direction:column;min-height:157px;width:192px}.raleway-regular-14px-1{align-items:flex-end;display:flex;height:14px;margin-top:10px;min-width:192px}.raleway-regular-14px{letter-spacing:0;line-height:18.2px;margin-bottom:-4px;min-height:18px;white-space:nowrap;width:192px}.raleway-regular-14px-3{align-items:flex-end;display:flex;height:14px;margin-top:30px;min-width:192px}.source-sans-pro-semibold-13px-3{letter-spacing:0;line-height:16.9px;min-height:17px;white-space:nowrap}.flex-row-1{align-items:flex-start;display:flex;margin-left:.19px;margin-top:34px;min-width:568px}.image-2{height:40px;object-fit:cover;width:206px}.logos_-bio-a-et-syn-1{height:40px;margin-left:56px;width:127px}.image-3{height:40px;margin-left:55px;object-fit:cover;width:125px}.raleway-regular-px-container-1{align-items:flex-start;display:flex;margin-top:80px;min-width:1062px}.raleway-regular-14px-15{align-items:flex-end;display:flex;height:14px;margin-left:32px;min-width:84px}.raleway-regular-14px-16{letter-spacing:0;line-height:18.2px;margin-bottom:-4px;min-height:18px;min-width:87px;white-space:nowrap}.raleway-regular-14px-11{align-items:flex-end;display:flex;height:14px;min-width:83px}.raleway-regular-14px-12{letter-spacing:0;line-height:18.2px;margin-bottom:-4px;min-height:18px;min-width:89px;white-space:nowrap}.raleway-regular-14px-17{align-items:flex-end;display:flex;height:14px;margin-left:23px;min-width:158px}.raleway-regular-14px-18{letter-spacing:0;line-height:18.2px;margin-bottom:-4px;min-height:18px;min-width:58px;white-space:nowrap}.raleway-regular-14px-13{align-items:flex-end;display:flex;height:14px;margin-left:26px;min-width:83px}.raleway-regular-14px-14{letter-spacing:0;line-height:18.2px;margin-bottom:-4px;min-height:18px;min-width:95px;white-space:nowrap}.raleway-regular-14px-19{align-items:flex-end;display:flex;height:14px;margin-left:263px;min-width:310px}.raleway-regular-14px-20{letter-spacing:0;line-height:18.2px;margin-bottom:-4px;min-height:18px;min-width:309px;white-space:nowrap}.overlap-group5{height:286px;margin-top:80px;position:relative;width:1280px}.group-19{align-items:center;background-color:#9cb3c84c;display:flex;height:286px;left:0;min-width:1280px;padding:0 218px;position:absolute;top:0}.group-16{align-items:center;display:flex;flex-direction:column}.multi-lingual-smartphone-app{letter-spacing:0;line-height:20.8px;margin-left:74px;margin-top:84px;min-height:42px;min-width:123px;text-align:center}.group-14{align-items:center;display:flex;flex-direction:column;margin-bottom:8px;margin-left:87px;min-height:118px;width:145px}.geolocalisation-uv{letter-spacing:0;line-height:20.8px;margin-top:10px;min-height:34px;min-width:145px;text-align:center}.span1{line-height:14.3px}.map-pin{height:74px;width:73px}.group-15{align-items:center;display:flex;flex-direction:column;margin-left:74px;margin-top:1px;min-height:103px;width:146px}.customer-feedback{letter-spacing:0;line-height:20.8px;margin-top:10px;min-height:21px;min-width:146px;text-align:center;white-space:nowrap}.group-9{height:72px;margin-right:.37px;width:92px}.group-17{align-items:center;display:flex;flex-direction:column;min-height:126px;width:184px}.nomadic-lab-to-decipher-skin-reactions{letter-spacing:0;line-height:20.8px;margin-top:10px;min-height:42px;min-width:184px;text-align:center}.inbox{height:74px;margin-left:1px;width:73px}.smartphone-multi-1{height:74px;left:510px;position:absolute;top:80px;width:57px}.header{align-items:flex-start;display:flex;flex-direction:column;min-height:119px;width:1280px}.overlap-group1{align-items:center;background-color:var(--rock-blue);display:flex;height:24px;justify-content:flex-end;min-width:1280px;padding:0 99.7px}.book-a-demo{letter-spacing:0;line-height:14.3px;margin-left:50px;min-height:14px;min-width:68px;white-space:nowrap}.contact-us{letter-spacing:0;line-height:14.3px;min-height:14px;min-width:55px;white-space:nowrap}.en{letter-spacing:0;line-height:14.3px;margin-left:731px;min-height:14px;min-width:14px;white-space:nowrap}.polygon-1{height:4px;margin-left:5px;margin-top:.63px;width:6px}.overlap-group2{height:95px;position:relative;width:1280px}.home{align-items:flex-start;display:flex;height:17px;left:251px;min-width:34px;position:absolute;top:35px}.place{letter-spacing:0;line-height:16.9px;min-height:17px;white-space:nowrap}.our-device{align-items:flex-start;display:flex;height:17px;left:476px;min-width:60px;position:absolute;top:35px}.our-device-1{letter-spacing:0;line-height:16.9px;min-height:17px;white-space:nowrap}.rectangle-23{background-color:var(--rock-blue);height:30px;left:344px;position:absolute;top:55px;width:65px}.who-we-are{align-items:flex-start;display:flex;height:17px;left:600px;min-width:65px;position:absolute;top:35px}.who-we-are-1{letter-spacing:0;line-height:16.9px;min-height:17px;white-space:nowrap}.what-we-do{color:var(--rock-blue);font-family:var(--font-family-source_sans_pro);font-size:var(--font-size-xxs);font-weight:600;left:344px;letter-spacing:0;line-height:16.9px;position:absolute;top:35px;white-space:nowrap}.studies-devices{align-items:flex-start;display:flex;height:17px;left:912px;min-width:97px;position:absolute;top:35px}.studies-services{letter-spacing:0;line-height:16.9px;min-height:17px;white-space:nowrap}.become-a-penalist{left:1155px;letter-spacing:0;line-height:14.3px;position:absolute;top:50px;white-space:nowrap}.log-in-1{height:15px;left:1130px;position:absolute;top:21px;width:15px}.logo_text-below{height:71px;left:30px;position:absolute;top:12px;width:129px}.scientific-validation{align-items:flex-start;display:flex;height:17px;left:731px;min-width:111px;position:absolute;top:35px}.scientific-validation-1{letter-spacing:0;line-height:16.9px;min-height:17px;white-space:nowrap}.log-in{left:1155px;letter-spacing:0;line-height:14.3px;position:absolute;top:21px;white-space:nowrap}.group-1{align-items:flex-start;background-color:var(--white);display:flex;height:95px;justify-content:flex-end;left:0;min-width:1280px;padding:0 135px;position:absolute;top:0}.overlap-group{height:85px;position:relative;width:917px}.rectangle-20{background-color:var(--white);height:85px;left:0;position:absolute;top:0;width:24px}.rectangle-1{background-color:var(--white);box-shadow:0 -4px 10px #00000040;height:85px;left:16px;position:absolute;top:0;width:879px}.rectangle-19{background-color:var(--white);height:85px;left:893px;position:absolute;top:0;width:24px}.profil-2{align-self:center;height:20px;margin-left:28px;margin-top:24px;width:15px}.flex-row{align-items:flex-end;display:flex;height:768px;margin-left:1px;margin-top:95px;min-width:845px}.flex-col-1{align-items:flex-start;display:flex;flex-direction:column;margin-left:25px;min-height:438px;width:193px}.rectangle-71{height:194px;margin-top:50px;object-fit:cover;width:193px}.rectangle-70{height:194px;object-fit:cover;width:193px}.flex-col{align-items:flex-start;display:flex;flex-direction:column;width:627px}.wired-beauty-is-a-ne{letter-spacing:0;line-height:20.8px;margin-top:50px;min-height:42px;width:627px}.we-research-skincare{color:var(--mine-shaft);font-family:var(--font-family-source_sans_pro);font-size:var(--font-size-l);font-weight:600;letter-spacing:0;line-height:19.5px;margin-left:1px;margin-top:80px;min-height:19px;white-space:nowrap}.title{color:var(--mine-shaft);font-family:var(--font-family-source_sans_pro);font-size:var(--font-size-xl);font-weight:200;letter-spacing:0;line-height:52px;min-height:52px;white-space:nowrap}.scientific-knowledge{letter-spacing:0;line-height:20.8px;margin-top:30px;min-height:84px;width:627px}.understand-exposome{letter-spacing:0;line-height:20.8px;margin-top:30px;min-height:42px;width:623px}.source-sans-pro-semibold-13px-2{color:var(--mine-shaft);font-family:var(--font-family-source_sans_pro);font-size:var(--font-size-l);font-weight:600;letter-spacing:0;line-height:19.5px;margin-top:80px;min-height:19px;white-space:nowrap}.we-help-our-clients{letter-spacing:0;line-height:20.8px;margin-top:30px;min-height:210px;width:627px}:root{--black:rgba(0, 0, 0, 1);--mine-shaft:rgba(51, 51, 51, 1);--rock-blue-2:rgba(156, 179, 200, 0.298);--rock-blue:rgba(156, 179, 200, 1);--white:rgba(255, 255, 255, 1);--font-size-xxxs:11px;--font-size-xxs:13px;--font-size-xs:14px;--font-size-s:15px;--font-size-m:16px;--font-size-l:18px;--font-size-xl:40px;--font-family-raleway:\"Raleway\";--font-family-source_sans_pro:\"Source Sans Pro\"}.raleway-normal-mine-shaft-16px{color:var(--mine-shaft);font-family:var(--font-family-raleway);font-size:var(--font-size-m);font-weight:400;font-style:normal}.sourcesanspro-semi-bold-mine-shaft-13px{color:var(--mine-shaft);font-family:var(--font-family-source_sans_pro);font-size:var(--font-size-xxs);font-weight:600;font-style:normal}.sourcesanspro-extra-light-mine-shaft-30px{color:var(--mine-shaft);font-family:var(--font-family-source_sans_pro);font-size:30px;font-weight:200;font-style:normal}.sourcesanspro-extra-light-mine-shaft-50px{color:var(--mine-shaft);font-family:var(--font-family-source_sans_pro);font-size:50px;font-weight:200;font-style:normal}.sourcesanspro-normal-mine-shaft-15px{color:var(--mine-shaft);font-family:var(--font-family-source_sans_pro);font-size:var(--font-size-s);font-weight:400;font-style:normal}.raleway-normal-mine-shaft-11px{color:var(--mine-shaft);font-family:var(--font-family-raleway);font-size:var(--font-size-xxxs);font-weight:400;font-style:normal}.sourcesanspro-normal-mine-shaft-13px{color:var(--mine-shaft);font-family:var(--font-family-source_sans_pro);font-size:var(--font-size-xxs);font-weight:400;font-style:normal}.raleway-medium-white-18px{color:var(--white);font-family:var(--font-family-raleway);font-size:var(--font-size-l);font-weight:500;font-style:normal}.raleway-semi-bold-mine-shaft-14px{color:var(--mine-shaft);font-family:var(--font-family-raleway);font-size:var(--font-size-xs);font-weight:600;font-style:normal}.sourcesanspro-semi-bold-mine-shaft-15px{color:var(--mine-shaft);font-family:var(--font-family-source_sans_pro);font-size:var(--font-size-s);font-weight:600;font-style:normal}.sourcesanspro-extra-light-mine-shaft-40px{color:var(--mine-shaft);font-family:var(--font-family-source_sans_pro);font-size:var(--font-size-xl);font-weight:200;font-style:normal}.raleway-semi-bold-mine-shaft-16px{color:var(--mine-shaft);font-family:var(--font-family-raleway);font-size:var(--font-size-m);font-weight:600;font-style:normal}.sourcesanspro-semi-bold-rock-blue-13px{color:var(--rock-blue);font-family:var(--font-family-source_sans_pro);font-size:var(--font-size-xxs);font-weight:600;font-style:normal}.raleway-normal-mine-shaft-14px{color:var(--mine-shaft);font-family:var(--font-family-raleway);font-size:var(--font-size-xs);font-weight:400;font-style:normal}.raleway-medium-mine-shaft-18px{color:var(--mine-shaft);font-family:var(--font-family-raleway);font-size:var(--font-size-l);font-weight:500;font-style:normal}</style>', NULL, 'what-we-do');

-- --------------------------------------------------------

--
-- Structure de la table `page_page_block`
--

DROP TABLE IF EXISTS `page_page_block`;
CREATE TABLE `page_page_block` (
  `page_id` int(11) NOT NULL,
  `page_block_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `page_page_block`
--

INSERT INTO `page_page_block` (`page_id`, `page_block_id`) VALUES
(5, 26);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirm_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `confirm_token`) VALUES
(74, 'admin@wb.com ', '[\"ROLE_ADMIN\"]', '$2y$13$isfs8NvERRafjKOG0mbPP.i7NlaoironqcljNSEfVLx.sxLzhEKyK', NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_23A0E6612469DE2` (`category_id`);

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `page_block`
--
ALTER TABLE `page_block`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `page_page_block`
--
ALTER TABLE `page_page_block`
  ADD PRIMARY KEY (`page_id`,`page_block_id`),
  ADD KEY `IDX_EE7A596AC4663E4` (`page_id`),
  ADD KEY `IDX_EE7A596A6972852C` (`page_block_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `page`
--
ALTER TABLE `page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `page_block`
--
ALTER TABLE `page_block`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `FK_23A0E6612469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Contraintes pour la table `page_page_block`
--
ALTER TABLE `page_page_block`
  ADD CONSTRAINT `FK_EE7A596A6972852C` FOREIGN KEY (`page_block_id`) REFERENCES `page_block` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_EE7A596AC4663E4` FOREIGN KEY (`page_id`) REFERENCES `page` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
