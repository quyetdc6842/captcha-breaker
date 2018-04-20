# References: https://github.com/dannnylo/rtesseract
# References: https://github.com/eidge/ruby-captcha-breaker/blob/master/CaptchaBreaker.rb

require 'rmagick'
require 'rtesseract'
require 'two_captcha'

module Captcha
  class CaptchaBreaker
    def initialize(image_string)
      @image_string = image_string

      @image = Magick::Image.from_blob(File.open(image_string, 'r'){ |file| file.read }).first
      # @image = @image.quantize(3, Magick::GRAYColorspace)
    end

    def break
      @image.format = 'JPEG'
      tesseract = RTesseract.new(@image, lang: 'eng')
      tesseract.to_s_without_spaces

      # client = TwoCaptcha.new('89276f17f9e927120ac9e524c65ced16')
      # captcha = client.decode(path: @image_string)
      # captcha.text        # Solution of the captcha

    end
  end
end
