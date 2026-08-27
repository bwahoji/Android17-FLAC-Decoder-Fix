# Android 17 FLAC Decoder Fix

这是一个 KernelSU 模块，用于解决一些依托内置解码器的播放器无法播放高品质音频的问题。

**AI 提示：本模块使用 Codex 辅助开发**

## 原理

Android 17 的解码器似乎只提供了 32KB 的输入缓冲区，一些高品质的 FLAC 压缩帧远大于这个数字，因此会导致播放失败。

比如作者在使用 PixelPlayer 时就出现了一些高品质音乐无法播放的问题：[比如这个 Issue](https://github.com/PixelPlayerHQ/PixelPlayer/issues/2738) 。

而这个模块所做的事情也很简单，那就是将系统 FLAC Codec2 输入缓冲区从固定 32KB 提高到了 128KB，~~实现治标不治本的效果~~ 使得 FLAC 音频可以继续播放。

## 尚不明确

作者由于设备缺乏，目前尚不明确这一问题来自 Android 17 还是 Xiaomi HyperOS 4。有兴趣的朋友可以自己试一试。姑且把名字取成了 Android 17，不对的话……那就不对罢。
