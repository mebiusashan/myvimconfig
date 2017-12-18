#! /bin/bash

# VimDoc CN https://github.com/yianwillis/vimcdoc
# VimDoc CN https://sourceforge.net/projects/vimcdoc/files/vimcdoc/

echo "开始安装Vim配置"
vimdoc_cn_URL=https://sourceforge.net/projects/vimcdoc/files/vimcdoc/vimcdoc-2.1.0.tar.gz/download

# 确定目录
currentPath=$(cd `dirname $0`; pwd)
tempPath=/temp/
currentPath=${currentPath}${tempPath}

#检查临时文件夹
if [ -d "$currentPath" ]; then
	rm -r $currentPath
fi

mkdir $currentPath
echo "资源临时目录:" $currentPath

#下载中文文档手册
docfile=vimdoc.tar.gz
wget -P $currentPath $vimdoc_cn_URL 

docURL=${currentPath}${docfile}
sourcefile=download
sourcefile=${currentPath}${sourcefile}
mv $sourcefile $docURL
cd $currentPath
tar xf $docfile
cd vimcdoc-2.1.0 

echo "安装vim中文文档"
./vimcdoc.sh -i


