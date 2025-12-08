# VortexTracker

_The best music tracker for 8bit AY/YM chips._

___

> [!CAUTION]
> Данная версия программы является экспериментальной и может содержать ошибки, в том числе приводящие к некорректной загрузке и/или сохранению файлов. Не рекомендуется использовать её для работы с важными данными. Помните про важность резервного копирования.

___

Данный форк (ветка [modern](https://github.com/wladasm/vortextracker/tree/modern)) — это попытка портировать VortexTracker на современную версию Delphi и получить возможность собирать 64-битные билды.

На данный момент проект без проблем собирается в Delphi 10.3 для обеих целевых платформ — Win32 и Win64. Есть надежда, что соберётся и в более новых версиях (возможно, с небольшими доработками), но это не проверялось.

За основу взята версия [VortexTracker 2.6.1](https://github.com/Volutar/vortextracker/tree/TS3) от Volutar.

Текущая версия имеет статус беты и именуется как 2.6.1 dev x64. При первом запуске она создаёт папку **«Vortex Tracker 2.6.1 dev»** (обратите внимание на суффикс) в «Документах» и в `AppData\Roaming`; её конфиг независим от конфига стабильной версии.

## Порядок сборки

1. В папке `Delphi-Midi-Component\Package` открыть файл пакета `MidiComponents2010.dpk`.
2. Собрать.
3. Установить (**Install**) собранный пакет.
4. Переключить платформу на Win32. Снова собрать.
5. Закрыть всё (**Close All**), не сохраняя.
6. В отличие от прежних версий, нет необходимости куда-либо копировать `.dcu` файлы.
7. Открыть `VT.dproj` в корне проекта.
8. Выбрать желаемую платформу (Win32/Win64).
9. Собрать.

## Downloads

**Original builds by Ivan Pirog**: https://github.com/ivanpirog/vortextracker/releases

***

**Nightly VT builds by Dexus (Volutar) are here**: https://volutar.myds.me/vortextracker

**New experimental 32 and 64-bit builds by WladAsm**: https://github.com/wladasm/vortextracker/releases
