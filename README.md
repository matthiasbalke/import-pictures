# import-pictures

My personal workflow of keeping my images from different cameras organized.

## Tasks

* Remove unusable `*.AAE` files from iPhones
* Remove unusable `*.LRV` and `*.THM*` files from GoPros
* Convert `*.HEIC` and `*.HEIF` images to `jpg` using [matthiasbalke/imagemagick-docker][imagemagick-docker-url] 
* Sort images and movies using [matthiasbalke/sortphotos-docker][sortphotos-docker-url]

## Usage

Place pictures to organize in a subdirectory called `import`. You can use any directory structure inside, as the directory is scanned recursively. To start the organizing process call the script matching the OS.

### Linux or Mac OS X

```sh
./import-pictures.sh
```

### Windows

```cmd
import-pictures.cmd
```

## License

MIT License

Copyright (c) 2025 Matthias Balke

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

[imagemagick-docker-url]: https://github.com/matthiasbalke/imagemagick-docker
[sortphotos-docker-url]: https://github.com/matthiasbalke/sortphotos-docker
[semver]: http://semver.org/spec/v2.0.0.html
