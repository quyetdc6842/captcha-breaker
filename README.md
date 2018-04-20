# Captcha
Quyet Dao

## Installation

- Instal rmagick dependency
	+ on macos
	```
		brew install imagemagick@6
		brew link --force imagemagick@6
		echo 'export PATH="/usr/local/opt/imagemagick@6/bin:$PATH"' >> ~/.bash_profile
	```

- Install Tesseract OCR
	```
	  brew install tesseract --all-languages
	```

## Usage

Change your key in lib/captcha/antigate then run

```
rake antigate
```

Or try free version

```
rake solver
```
