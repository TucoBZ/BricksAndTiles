Pod::Spec.new do |s|

    s.name             = 'BricksAndTiles'
    s.version          = '0.1.0'
    s.summary          = '🧱 A composable solution for building reusable lists in Swift/UIKit. As easy as playing with Legos.'
    s.description      = 'A declarative and composable way to deal with UITableViews and UICollectionViews in UIKit. 
    Helps on avoiding boilerplate code and making your UIViewController cleaner.'
    s.homepage         = 'https://github.com/mugbug/BricksAndTiles'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'mugbug' => 'zaronipedro@outlook.com' }
    s.source           = { :git => 'https://github.com/mugbug/BricksAndTiles.git', :tag => s.version.to_s }
  
    s.ios.deployment_target = '11.0'
    s.ios.framework  = 'UIKit'
    s.swift_version = '5.1'
  
    s.default_subspecs = 'All'
    s.dependency 'PaintAndBrush', '0.1.4'

    s.subspec 'Table' do |ss|
        ss.source_files = [
            'BricksAndTiles/Source/TableView/**/*',
            'BricksAndTiles/Source/Extensions/**/*'
          ]
    end

    s.subspec 'Collection' do |ss|
      ss.source_files = 'BricksAndTiles/Source/CollectionView/**/*'
    end

    s.subspec 'All' do |ss|
      ss.dependency 'BricksAndTiles/Table'
      ss.dependency 'BricksAndTiles/Collection'
    end
  
  end
  
