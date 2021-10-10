
<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]



<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="https://github.com/KarolReinert/laravel-simple-docker">
  </a>

  <h3 align="center">Simple Docker Environment For Laravel</h3>

</p>



<!-- TABLE OF CONTENTS -->
<details open="open">
  <summary><h2 style="display: inline-block">Table of Contents</h2></summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#stack">Stack</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#requirements">Requirements</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#known-issues">Known Issues</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

It is just a simple and basic Docker Environment created and used for development.


### Stack

* PHP-FPM 7.4
* Redis
* Redis Commander - GUI Control Panel
* Nginx
* Mysql 8
* PhpMyAdmin
* Composer
* Docker for Laravel
* Makefile - don't repeat yourself



<!-- GETTING STARTED -->
## Requirements

* Docker
* Composer

### Instalation

* Build by make file
  ```sh
  make build-project
  ```
* Run all docker-compose containers
  ```sh
  makefile up
  ```


<!-- USAGE EXAMPLES -->
## Usage

Run commands from `Makefile` for  easier management.
```sh
    makefile <command_name>
```

If you don't want to use `make` command, just look inside Makefile for more commands.



<!-- ROADMAP -->
## Roadmap

See the [open issues](https://github.com/KarolReinert/laravel-simple-docker/issues) for a list of proposed features (and known issues).



<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request


<!-- KNOWN ISSUES -->
## Known Issues
1. XDebug is not working properly:
    
    You can change value from `client_host` to your local private IP address in `docker/dockerfiles/php/local.ini`
    
    For example:
    ```sh
        client_host=192.168.1.20
    ```


    Check
    https://www.google.com/search?q=What+is+my+local+ip 
    for more informations.

    You have to set up your IDE for XDebug
    For PHP Storm https://www.jetbrains.com/help/phpstorm/configuring-xdebug.html for more informations.

    For VSCode https://marketplace.visualstudio.com/items?itemName=felixfbecker.php-debug

2. If `make setup-project` didn't work,, just look inside Makefile and repeat @setup-project actions in your terminal, then run `docker-compose up -d`

<!-- LICENSE -->
## License

Distributed under the WTFPL License. See `LICENSE` for more information.



<!-- CONTACT -->
## Contact

Charles Reinert - [linkedin](https://www.linkedin.com/in/charles-reinert) - contact@reinert.one



<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/KarolReinert/laravel-simple-docker.svg?style=for-the-badge
[contributors-url]: https://github.com/KarolReinert/laravel-simple-docker/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/KarolReinert/laravel-simple-docker.svg?style=for-the-badge
[forks-url]: https://github.com/KarolReinert/laravel-simple-docker/network/members
[stars-shield]: https://img.shields.io/github/stars/KarolReinert/laravel-simple-docker.svg?style=for-the-badge
[stars-url]: https://github.com/KarolReinert/laravel-simple-docker/stargazers
[issues-shield]: https://img.shields.io/github/issues/KarolReinert/laravel-simple-docker.svg?style=for-the-badge
[issues-url]: https://github.com/KarolReinert/laravel-simple-docker/issues
[license-shield]: https://img.shields.io/github/license/KarolReinert/laravel-simple-docker.svg?style=for-the-badge
[license-url]: https://github.com/KarolReinert/laravel-simple-docker/blob/master/LICENSE
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://www.linkedin.com/in/charles-reinert/