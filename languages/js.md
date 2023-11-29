# Frontend Languages

# Import Path

> 为源码根目录设置别名alias，避免使用相对路径

- Vue

  - `build\webpack.base.conf.js`加入alias

  - ```js
    module.exports = {
    ...
    	resolve: {
            extensions: ['.js', '.vue', '.json'],
            alias: {
              'vue$': 'vue/dist/vue.esm.js',
              '@': resolve('src'),
            }
          },
    ...
    }
    ```

- ReactNative

  - 安装`babel-plugin-root-import`包

  - `babel.config.js`中加入alias，如

    ```js
    module.exports = {
      ...
      plugins: [
        ...
        [
          'babel-plugin-root-import',
          {
            paths: [
              {
                rootPathSuffix: './src',
                rootPathPrefix: '$/', 
              },
              {
                rootPathSuffix: './src/api',
                rootPathPrefix: '$api',
              },
              {
                rootPathSuffix: './src/views',
                rootPathPrefix: '$views',
              },
            ],
          },
        ],
      ],
    };
    ```

    