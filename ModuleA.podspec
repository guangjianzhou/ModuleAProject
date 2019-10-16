#
#  Be sure to run `pod spec lint ModuleA.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  spec.name         = "ModuleA"  #库名称 
  spec.version      = "0.0.1" #库版本号  每次发布版本都需要打tag标签（名称就是版本号）
  spec.summary      = " ModuleA  组件测试路由"  #pod简介

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  #详细描述
  spec.description  = <<-DESC
                   这是组件A
                   summary: The summary is not meaningful.
                   summary: The summary is not meaningful.
                   DESC


  #pod主页
  spec.homepage     = "https://github.com/guangjianzhou/ModuleAProject"
  # spec.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"


  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Licensing your code is important. See https://choosealicense.com for more info.
  #  CocoaPods will detect a license file if there is a named LICENSE*
  #  Popular ones are 'MIT', 'BSD' and 'Apache License, Version 2.0'.
  #


  #许可证，除非源代码包含了LICENSE.*或者LICENCE.*文件，否则必须指定许可证文件。文件扩展名可以没有，或者是.txt,.md,.markdown
  # spec.license      = "MIT (example)"
  spec.license      = { :type => "MIT", :file => "FILE_LICENSE" }


  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the authors of the library, with email addresses. Email addresses
  #  of the authors are extracted from the SCM log. E.g. $ git log. CocoaPods also
  #  accepts just a name if you'd rather not provide an email address.
  #
  #  Specify a social_media_url where others can refer to, for example a twitter
  #  profile URL.
  #

  #pod 库维护着的名称和名称
  spec.author             = { "zgj6406401" => "zgj6406401@163.com" }
  # Or just: spec.author    = "zgj6406401"
  # spec.authors            = { "zgj6406401" => "zgj6406401@163.com" }
  # spec.social_media_url   = "https://twitter.com/zgj6406401"

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If this Pod runs only on iOS or OS X, then specify the platform and
  #  the deployment target. You can optionally include the target after the platform.
  #

  spec.platform     = :ios
  spec.platform     = :ios, "9.0"

  #  When using multiple platforms
  spec.ios.deployment_target = "9.0"
  # spec.osx.deployment_target = "10.7"
  # spec.watchos.deployment_target = "2.0"
  # spec.tvos.deployment_target = "9.0"


  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the location from where the source should be retrieved.
  #  Supports git, hg, bzr, svn and HTTP.
  #

  #获取库的地址
  spec.source       = { :git => "https://github.com/guangjianzhou/ModuleAProject.git", :tag => "#{spec.version}" }


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  CocoaPods is smart about how it includes source code. For source files
  #  giving a folder will include any swift, h, m, mm, c & cpp files.
  #  For header files it will include any header in the folder.
  #  Not including the public_header_files will make all headers public.
  #

  

  #pod文件路径

  spec.source_files  = "Classes/**/*.{h,m}"
  # spec.exclude_files = "Classes/Exclude"


  #公共头文件,这些头文件将暴露给用户的项目。如果不设置，所有source_files的头文件将被暴露
  # spec.public_header_files = "Classes/**/*.h"



  spec.subspec 'CustomView' do |ss|
  ss.source_files = 'Classes/CustomView/*'   #指定子模块路径
  ss.public_header_files = 'Classes/CustomView/*.h'
  end

  spec.subspec 'ViewController' do |ss|
  ss.source_files = 'Classes/ViewController/*'
  ss.public_header_files = 'Classes/ViewController/*.h'
  ss.frameworks = 'Foundation','UIKit'
  ss.dependency 'ModuleA/CustomView'  #vc依赖
  end

  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  A list of resources included with the Pod. These are copied into the
  #  target bundle with a build phase script. Anything else will be cleaned.
  #  You can preserve files from being cleaned, please don't preserve
  #  non-essential files like tests, examples and documentation.
  #

  # spec.resource  = "icon.png"
  #图片文件路径
  spec.resources = "Classes/Resources/*.png"

  # spec.preserve_paths = "FilesToSave", "MoreFilesToSave"


  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #

  # spec.framework  = "SomeFramework"
  spec.frameworks = "UIKit",'Foundation'


  # spec.library   = "iconv"
  # spec.libraries = "iconv", "xml2"


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

  # spec.requires_arc = true

  # spec.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # spec.dependency "JSONKit", "~> 1.4"

  #依赖库
  spec.dependency "SVProgressHUD"
  spec.dependency "SDWebImage"



end
