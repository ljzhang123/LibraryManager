; ModuleID = 'marshal_methods.armeabi-v7a.ll'
source_filename = "marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [356 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [706 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 66
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 65
	i32 15721112, ; 2: System.Runtime.Intrinsics.dll => 0xefe298 => 106
	i32 32687329, ; 3: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 276
	i32 34715100, ; 4: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 310
	i32 34839235, ; 5: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 46
	i32 39485524, ; 6: System.Net.WebSockets.dll => 0x25a8054 => 78
	i32 42639949, ; 7: System.Threading.Thread => 0x28aa24d => 141
	i32 65960268, ; 8: Microsoft.Win32.SystemEvents.dll => 0x3ee794c => 220
	i32 66541672, ; 9: System.Diagnostics.StackTrace => 0x3f75868 => 29
	i32 67008169, ; 10: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 351
	i32 68219467, ; 11: System.Security.Cryptography.Primitives => 0x410f24b => 122
	i32 72070932, ; 12: Microsoft.Maui.Graphics.dll => 0x44bb714 => 218
	i32 82292897, ; 13: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 100
	i32 101534019, ; 14: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 294
	i32 117431740, ; 15: System.Runtime.InteropServices => 0x6ffddbc => 105
	i32 120558881, ; 16: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 294
	i32 122350210, ; 17: System.Threading.Channels.dll => 0x74aea82 => 135
	i32 134690465, ; 18: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 314
	i32 142721839, ; 19: System.Net.WebHeaderCollection => 0x881c32f => 75
	i32 149972175, ; 20: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 122
	i32 159306688, ; 21: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 165246403, ; 22: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 250
	i32 176265551, ; 23: System.ServiceProcess => 0xa81994f => 130
	i32 182336117, ; 24: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 296
	i32 184328833, ; 25: System.ValueTuple.dll => 0xafca281 => 147
	i32 195452805, ; 26: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 348
	i32 199333315, ; 27: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 349
	i32 205061960, ; 28: System.ComponentModel => 0xc38ff48 => 18
	i32 209399409, ; 29: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 248
	i32 220171995, ; 30: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 230216969, ; 31: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 270
	i32 230752869, ; 32: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 33: System.Linq.Parallel => 0xdcb05c4 => 57
	i32 231814094, ; 34: System.Globalization => 0xdd133ce => 40
	i32 246610117, ; 35: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 89
	i32 254259026, ; 36: Microsoft.AspNetCore.Components.dll => 0xf27af52 => 173
	i32 261689757, ; 37: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 253
	i32 276479776, ; 38: System.Threading.Timer.dll => 0x107abf20 => 143
	i32 278686392, ; 39: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 272
	i32 280482487, ; 40: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 269
	i32 280992041, ; 41: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 320
	i32 291076382, ; 42: System.IO.Pipes.AccessControl.dll => 0x1159791e => 52
	i32 298918909, ; 43: System.Net.Ping.dll => 0x11d123fd => 67
	i32 317674968, ; 44: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 348
	i32 318968648, ; 45: Xamarin.AndroidX.Activity.dll => 0x13031348 => 239
	i32 321597661, ; 46: System.Numerics => 0x132b30dd => 81
	i32 330147069, ; 47: Microsoft.SqlServer.Server => 0x13ada4fd => 219
	i32 336156722, ; 48: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 333
	i32 342366114, ; 49: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 271
	i32 356389973, ; 50: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 332
	i32 360082299, ; 51: System.ServiceModel.Web => 0x15766b7b => 129
	i32 367780167, ; 52: System.IO.Pipes => 0x15ebe147 => 53
	i32 374914964, ; 53: System.Transactions.Local => 0x1658bf94 => 145
	i32 375677976, ; 54: System.Net.ServicePoint.dll => 0x16646418 => 72
	i32 379916513, ; 55: System.Threading.Thread.dll => 0x16a510e1 => 141
	i32 385762202, ; 56: System.Memory.dll => 0x16fe439a => 60
	i32 392610295, ; 57: System.Threading.ThreadPool.dll => 0x1766c1f7 => 142
	i32 395744057, ; 58: _Microsoft.Android.Resource.Designer => 0x17969339 => 352
	i32 403441872, ; 59: WindowsBase => 0x180c08d0 => 161
	i32 435591531, ; 60: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 344
	i32 441335492, ; 61: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 254
	i32 442565967, ; 62: System.Collections => 0x1a61054f => 12
	i32 450948140, ; 63: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 267
	i32 451504562, ; 64: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 123
	i32 456227837, ; 65: System.Web.HttpUtility.dll => 0x1b317bfd => 148
	i32 459347974, ; 66: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 111
	i32 465846621, ; 67: mscorlib => 0x1bc4415d => 162
	i32 469710990, ; 68: System.dll => 0x1bff388e => 160
	i32 476646585, ; 69: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 269
	i32 485463106, ; 70: Microsoft.IdentityModel.Abstractions => 0x1cef9442 => 206
	i32 486930444, ; 71: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 282
	i32 498788369, ; 72: System.ObjectModel => 0x1dbae811 => 82
	i32 500358224, ; 73: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 331
	i32 503918385, ; 74: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 325
	i32 513247710, ; 75: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 203
	i32 526420162, ; 76: System.Transactions.dll => 0x1f6088c2 => 146
	i32 527452488, ; 77: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 314
	i32 530272170, ; 78: System.Linq.Queryable => 0x1f9b4faa => 58
	i32 539058512, ; 79: Microsoft.Extensions.Logging => 0x20216150 => 199
	i32 540030774, ; 80: System.IO.FileSystem.dll => 0x20303736 => 49
	i32 545304856, ; 81: System.Runtime.Extensions => 0x2080b118 => 101
	i32 546455878, ; 82: System.Runtime.Serialization.Xml => 0x20924146 => 112
	i32 548916678, ; 83: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 179
	i32 549171840, ; 84: System.Globalization.Calendars => 0x20bbb280 => 38
	i32 557405415, ; 85: Jsr305Binding => 0x213954e7 => 307
	i32 569601784, ; 86: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x21f36ef8 => 305
	i32 571435654, ; 87: Microsoft.Extensions.FileProviders.Embedded.dll => 0x220f6a86 => 196
	i32 577335427, ; 88: System.Security.Cryptography.Cng => 0x22697083 => 118
	i32 592146354, ; 89: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 339
	i32 601371474, ; 90: System.IO.IsolatedStorage.dll => 0x23d83352 => 50
	i32 605376203, ; 91: System.IO.Compression.FileSystem => 0x24154ecb => 42
	i32 608351278, ; 92: LibraryManager => 0x2442b42e => 0
	i32 613668793, ; 93: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 117
	i32 627609679, ; 94: Xamarin.AndroidX.CustomView => 0x2568904f => 259
	i32 627931235, ; 95: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 337
	i32 639843206, ; 96: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 265
	i32 643868501, ; 97: System.Net => 0x2660a755 => 79
	i32 662205335, ; 98: System.Text.Encodings.Web.dll => 0x27787397 => 232
	i32 663517072, ; 99: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 301
	i32 666292255, ; 100: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 246
	i32 672442732, ; 101: System.Collections.Concurrent => 0x2814a96c => 8
	i32 683518922, ; 102: System.Net.Security => 0x28bdabca => 71
	i32 688181140, ; 103: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 319
	i32 690569205, ; 104: System.Xml.Linq.dll => 0x29293ff5 => 151
	i32 691348768, ; 105: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 316
	i32 693804605, ; 106: System.Windows => 0x295a9e3d => 150
	i32 699345723, ; 107: System.Reflection.Emit => 0x29af2b3b => 90
	i32 700284507, ; 108: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 311
	i32 700358131, ; 109: System.IO.Compression.ZipFile => 0x29be9df3 => 43
	i32 706645707, ; 110: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 334
	i32 709557578, ; 111: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 322
	i32 720511267, ; 112: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 315
	i32 722857257, ; 113: System.Runtime.Loader.dll => 0x2b15ed29 => 107
	i32 723796036, ; 114: System.ClientModel.dll => 0x2b244044 => 221
	i32 735137430, ; 115: System.Security.SecureString.dll => 0x2bd14e96 => 127
	i32 752232764, ; 116: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 755313932, ; 117: Xamarin.Android.Glide.Annotations.dll => 0x2d052d0c => 236
	i32 759454413, ; 118: System.Net.Requests => 0x2d445acd => 70
	i32 762598435, ; 119: System.IO.Pipes.dll => 0x2d745423 => 53
	i32 775507847, ; 120: System.IO.Compression => 0x2e394f87 => 44
	i32 777317022, ; 121: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 343
	i32 789151979, ; 122: Microsoft.Extensions.Options => 0x2f0980eb => 202
	i32 790371945, ; 123: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 260
	i32 804008546, ; 124: Microsoft.AspNetCore.Components.WebView.Maui => 0x2fec3262 => 177
	i32 804715423, ; 125: System.Data.Common => 0x2ff6fb9f => 22
	i32 807930345, ; 126: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x302809e9 => 274
	i32 809851609, ; 127: System.Drawing.Common.dll => 0x30455ad9 => 224
	i32 823281589, ; 128: System.Private.Uri.dll => 0x311247b5 => 84
	i32 830298997, ; 129: System.IO.Compression.Brotli => 0x317d5b75 => 41
	i32 832635846, ; 130: System.Xml.XPath.dll => 0x31a103c6 => 156
	i32 834051424, ; 131: System.Net.Quic => 0x31b69d60 => 69
	i32 843511501, ; 132: Xamarin.AndroidX.Print => 0x3246f6cd => 287
	i32 873119928, ; 133: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 877678880, ; 134: System.Globalization.dll => 0x34505120 => 40
	i32 878954865, ; 135: System.Net.Http.Json => 0x3463c971 => 61
	i32 904024072, ; 136: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 911108515, ; 137: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 51
	i32 926902833, ; 138: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 346
	i32 928116545, ; 139: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 310
	i32 952186615, ; 140: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 103
	i32 956575887, ; 141: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 315
	i32 966729478, ; 142: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 308
	i32 967690846, ; 143: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 271
	i32 975236339, ; 144: System.Diagnostics.Tracing => 0x3a20ecf3 => 33
	i32 975874589, ; 145: System.Xml.XDocument => 0x3a2aaa1d => 154
	i32 986514023, ; 146: System.Private.DataContractSerialization.dll => 0x3acd0267 => 83
	i32 987214855, ; 147: System.Diagnostics.Tools => 0x3ad7b407 => 31
	i32 992768348, ; 148: System.Collections.dll => 0x3b2c715c => 12
	i32 994442037, ; 149: System.IO.FileSystem => 0x3b45fb35 => 49
	i32 999186168, ; 150: Microsoft.Extensions.FileSystemGlobbing.dll => 0x3b8e5ef8 => 198
	i32 1001831731, ; 151: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 54
	i32 1012816738, ; 152: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 291
	i32 1019214401, ; 153: System.Drawing => 0x3cbffa41 => 35
	i32 1028951442, ; 154: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 193
	i32 1029334545, ; 155: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 321
	i32 1031528504, ; 156: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 309
	i32 1035644815, ; 157: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 244
	i32 1036536393, ; 158: System.Drawing.Primitives.dll => 0x3dc84a49 => 34
	i32 1044663988, ; 159: System.Linq.Expressions.dll => 0x3e444eb4 => 56
	i32 1052210849, ; 160: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 278
	i32 1062017875, ; 161: Microsoft.Identity.Client.Extensions.Msal => 0x3f4d1b53 => 205
	i32 1067306892, ; 162: GoogleGson => 0x3f9dcf8c => 171
	i32 1082857460, ; 163: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1084122840, ; 164: Xamarin.Kotlin.StdLib => 0x409e66d8 => 312
	i32 1098259244, ; 165: System => 0x41761b2c => 160
	i32 1106973742, ; 166: Microsoft.Extensions.Configuration.FileExtensions.dll => 0x41fb142e => 190
	i32 1118262833, ; 167: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 334
	i32 1121599056, ; 168: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0x42da3e50 => 277
	i32 1127624469, ; 169: Microsoft.Extensions.Logging.Debug => 0x43362f15 => 201
	i32 1138436374, ; 170: Microsoft.Data.SqlClient.dll => 0x43db2916 => 180
	i32 1145483052, ; 171: System.Windows.Extensions.dll => 0x4446af2c => 234
	i32 1149092582, ; 172: Xamarin.AndroidX.Window => 0x447dc2e6 => 304
	i32 1157931901, ; 173: Microsoft.EntityFrameworkCore.Abstractions => 0x4504a37d => 182
	i32 1168523401, ; 174: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 340
	i32 1170634674, ; 175: System.Web.dll => 0x45c677b2 => 149
	i32 1173126369, ; 176: Microsoft.Extensions.FileProviders.Abstractions.dll => 0x45ec7ce1 => 194
	i32 1175144683, ; 177: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 300
	i32 1178241025, ; 178: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 285
	i32 1202000627, ; 179: Microsoft.EntityFrameworkCore.Abstractions.dll => 0x47a512f3 => 182
	i32 1203215381, ; 180: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 338
	i32 1204270330, ; 181: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 246
	i32 1204575371, ; 182: Microsoft.Extensions.Caching.Memory.dll => 0x47cc5c8b => 186
	i32 1208641965, ; 183: System.Diagnostics.Process => 0x480a69ad => 28
	i32 1219128291, ; 184: System.IO.IsolatedStorage => 0x48aa6be3 => 50
	i32 1234928153, ; 185: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 336
	i32 1243150071, ; 186: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x4a18f6f7 => 305
	i32 1253011324, ; 187: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1260983243, ; 188: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 320
	i32 1264511973, ; 189: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 295
	i32 1267360935, ; 190: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 299
	i32 1273260888, ; 191: Xamarin.AndroidX.Collection.Ktx => 0x4be46b58 => 251
	i32 1275534314, ; 192: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 316
	i32 1278448581, ; 193: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 243
	i32 1293217323, ; 194: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 262
	i32 1309188875, ; 195: System.Private.DataContractSerialization => 0x4e08a30b => 83
	i32 1322716291, ; 196: Xamarin.AndroidX.Window.dll => 0x4ed70c83 => 304
	i32 1324164729, ; 197: System.Linq => 0x4eed2679 => 59
	i32 1335329327, ; 198: System.Runtime.Serialization.Json.dll => 0x4f97822f => 110
	i32 1364015309, ; 199: System.IO => 0x514d38cd => 55
	i32 1373134921, ; 200: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 350
	i32 1376866003, ; 201: Xamarin.AndroidX.SavedState => 0x52114ed3 => 291
	i32 1379779777, ; 202: System.Resources.ResourceManager => 0x523dc4c1 => 97
	i32 1402170036, ; 203: System.Configuration.dll => 0x53936ab4 => 19
	i32 1406073936, ; 204: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 255
	i32 1408764838, ; 205: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 109
	i32 1411638395, ; 206: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 99
	i32 1422545099, ; 207: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 100
	i32 1430672901, ; 208: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 318
	i32 1434145427, ; 209: System.Runtime.Handles => 0x557b5293 => 102
	i32 1435222561, ; 210: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 308
	i32 1439761251, ; 211: System.Net.Quic.dll => 0x55d10363 => 69
	i32 1452070440, ; 212: System.Formats.Asn1.dll => 0x568cd628 => 225
	i32 1453312822, ; 213: System.Diagnostics.Tools.dll => 0x569fcb36 => 31
	i32 1454105418, ; 214: Microsoft.Extensions.FileProviders.Composite => 0x56abe34a => 195
	i32 1457743152, ; 215: System.Runtime.Extensions.dll => 0x56e36530 => 101
	i32 1458022317, ; 216: System.Net.Security.dll => 0x56e7a7ad => 71
	i32 1460893475, ; 217: System.IdentityModel.Tokens.Jwt => 0x57137723 => 226
	i32 1461004990, ; 218: es\Microsoft.Maui.Controls.resources => 0x57152abe => 324
	i32 1461234159, ; 219: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 220: System.Security.Cryptography.OpenSsl => 0x57201017 => 121
	i32 1462112819, ; 221: System.IO.Compression.dll => 0x57261233 => 44
	i32 1469204771, ; 222: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 245
	i32 1470490898, ; 223: Microsoft.Extensions.Primitives => 0x57a5e912 => 203
	i32 1479771757, ; 224: System.Collections.Immutable => 0x5833866d => 9
	i32 1480492111, ; 225: System.IO.Compression.Brotli.dll => 0x583e844f => 41
	i32 1487239319, ; 226: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1490025113, ; 227: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x58cffa99 => 292
	i32 1493001747, ; 228: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 328
	i32 1498168481, ; 229: Microsoft.IdentityModel.JsonWebTokens.dll => 0x594c3ca1 => 207
	i32 1514721132, ; 230: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 323
	i32 1521091094, ; 231: Microsoft.Extensions.FileSystemGlobbing => 0x5aaa0216 => 198
	i32 1536373174, ; 232: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 30
	i32 1543031311, ; 233: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 134
	i32 1543355203, ; 234: System.Reflection.Emit.dll => 0x5bfdbb43 => 90
	i32 1546581739, ; 235: Microsoft.AspNetCore.Components.WebView.Maui.dll => 0x5c2ef6eb => 177
	i32 1550322496, ; 236: System.Reflection.Extensions.dll => 0x5c680b40 => 91
	i32 1551623176, ; 237: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 343
	i32 1565310744, ; 238: System.Runtime.Caching => 0x5d4cbf18 => 229
	i32 1565862583, ; 239: System.IO.FileSystem.Primitives => 0x5d552ab7 => 47
	i32 1566207040, ; 240: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 137
	i32 1573704789, ; 241: System.Runtime.Serialization.Json => 0x5dccd455 => 110
	i32 1580037396, ; 242: System.Threading.Overlapped => 0x5e2d7514 => 136
	i32 1582305585, ; 243: Azure.Identity => 0x5e501131 => 170
	i32 1582372066, ; 244: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 261
	i32 1592978981, ; 245: System.Runtime.Serialization.dll => 0x5ef2ee25 => 113
	i32 1597949149, ; 246: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 309
	i32 1601112923, ; 247: System.Xml.Serialization => 0x5f6f0b5b => 153
	i32 1604827217, ; 248: System.Net.WebClient => 0x5fa7b851 => 74
	i32 1618516317, ; 249: System.Net.WebSockets.Client.dll => 0x6078995d => 77
	i32 1622152042, ; 250: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 281
	i32 1622358360, ; 251: System.Dynamic.Runtime => 0x60b33958 => 36
	i32 1624863272, ; 252: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 303
	i32 1628113371, ; 253: Microsoft.IdentityModel.Protocols.OpenIdConnect => 0x610b09db => 210
	i32 1632842087, ; 254: Microsoft.Extensions.Configuration.Json => 0x61533167 => 191
	i32 1635184631, ; 255: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 265
	i32 1636350590, ; 256: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 258
	i32 1639515021, ; 257: System.Net.Http.dll => 0x61b9038d => 62
	i32 1639986890, ; 258: System.Text.RegularExpressions => 0x61c036ca => 134
	i32 1641389582, ; 259: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1654881142, ; 260: Microsoft.AspNetCore.Components.WebView => 0x62a37b76 => 176
	i32 1657153582, ; 261: System.Runtime => 0x62c6282e => 114
	i32 1658241508, ; 262: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 297
	i32 1658251792, ; 263: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 306
	i32 1670060433, ; 264: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 253
	i32 1675553242, ; 265: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 46
	i32 1677501392, ; 266: System.Net.Primitives.dll => 0x63fca3d0 => 68
	i32 1678508291, ; 267: System.Net.WebSockets => 0x640c0103 => 78
	i32 1679769178, ; 268: System.Security.Cryptography => 0x641f3e5a => 124
	i32 1689493916, ; 269: Microsoft.EntityFrameworkCore.dll => 0x64b3a19c => 181
	i32 1691477237, ; 270: System.Reflection.Metadata => 0x64d1e4f5 => 92
	i32 1696967625, ; 271: System.Security.Cryptography.Csp => 0x6525abc9 => 119
	i32 1698840827, ; 272: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 313
	i32 1701541528, ; 273: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1720223769, ; 274: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x66888819 => 274
	i32 1726116996, ; 275: System.Reflection.dll => 0x66e27484 => 95
	i32 1728033016, ; 276: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 27
	i32 1729485958, ; 277: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 249
	i32 1736233607, ; 278: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 341
	i32 1743415430, ; 279: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 319
	i32 1744735666, ; 280: System.Transactions.Local.dll => 0x67fe8db2 => 145
	i32 1746115085, ; 281: System.IO.Pipelines.dll => 0x68139a0d => 227
	i32 1746316138, ; 282: Mono.Android.Export => 0x6816ab6a => 165
	i32 1750313021, ; 283: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1758240030, ; 284: System.Resources.Reader.dll => 0x68cc9d1e => 96
	i32 1760259689, ; 285: Microsoft.AspNetCore.Components.Web.dll => 0x68eb6e69 => 175
	i32 1763938596, ; 286: System.Diagnostics.TraceSource.dll => 0x69239124 => 32
	i32 1765942094, ; 287: System.Reflection.Extensions => 0x6942234e => 91
	i32 1766324549, ; 288: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 296
	i32 1770582343, ; 289: Microsoft.Extensions.Logging.dll => 0x6988f147 => 199
	i32 1776026572, ; 290: System.Core.dll => 0x69dc03cc => 21
	i32 1777075843, ; 291: System.Globalization.Extensions.dll => 0x69ec0683 => 39
	i32 1780572499, ; 292: Mono.Android.Runtime.dll => 0x6a216153 => 166
	i32 1782862114, ; 293: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 335
	i32 1788241197, ; 294: Xamarin.AndroidX.Fragment => 0x6a96652d => 267
	i32 1793755602, ; 295: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 327
	i32 1794500907, ; 296: Microsoft.Identity.Client.dll => 0x6af5e92b => 204
	i32 1796167890, ; 297: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 179
	i32 1808609942, ; 298: Xamarin.AndroidX.Loader => 0x6bcd3296 => 281
	i32 1813058853, ; 299: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 312
	i32 1813201214, ; 300: Xamarin.Google.Android.Material => 0x6c13413e => 306
	i32 1818569960, ; 301: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 286
	i32 1818787751, ; 302: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1824175904, ; 303: System.Text.Encoding.Extensions => 0x6cbab720 => 132
	i32 1824722060, ; 304: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 109
	i32 1828688058, ; 305: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 200
	i32 1829150748, ; 306: System.Windows.Extensions => 0x6d06a01c => 234
	i32 1842015223, ; 307: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 347
	i32 1847515442, ; 308: Xamarin.Android.Glide.Annotations => 0x6e1ed932 => 236
	i32 1853025655, ; 309: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 344
	i32 1858542181, ; 310: System.Linq.Expressions => 0x6ec71a65 => 56
	i32 1870277092, ; 311: System.Reflection.Primitives => 0x6f7a29e4 => 93
	i32 1871986876, ; 312: Microsoft.IdentityModel.Protocols.OpenIdConnect.dll => 0x6f9440bc => 210
	i32 1875935024, ; 313: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 326
	i32 1879696579, ; 314: System.Formats.Tar.dll => 0x7009e4c3 => 37
	i32 1885316902, ; 315: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 247
	i32 1888955245, ; 316: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 317: System.Reflection.Metadata.dll => 0x70a66bdd => 92
	i32 1898237753, ; 318: System.Reflection.DispatchProxy => 0x7124cf39 => 87
	i32 1900610850, ; 319: System.Resources.ResourceManager.dll => 0x71490522 => 97
	i32 1910275211, ; 320: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1939592360, ; 321: System.Private.Xml.Linq => 0x739bd4a8 => 85
	i32 1956758971, ; 322: System.Resources.Writer => 0x74a1c5bb => 98
	i32 1961813231, ; 323: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 293
	i32 1968388702, ; 324: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 187
	i32 1983156543, ; 325: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 313
	i32 1985761444, ; 326: Xamarin.Android.Glide.GifDecoder => 0x765c50a4 => 238
	i32 1986222447, ; 327: Microsoft.IdentityModel.Tokens.dll => 0x7663596f => 211
	i32 2003115576, ; 328: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 323
	i32 2011961780, ; 329: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2019465201, ; 330: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 278
	i32 2025202353, ; 331: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 318
	i32 2031763787, ; 332: Xamarin.Android.Glide => 0x791a414b => 235
	i32 2040764568, ; 333: Microsoft.Identity.Client.Extensions.Msal.dll => 0x79a39898 => 205
	i32 2045470958, ; 334: System.Private.Xml => 0x79eb68ee => 86
	i32 2048278909, ; 335: Microsoft.Extensions.Configuration.Binder.dll => 0x7a16417d => 189
	i32 2055257422, ; 336: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 273
	i32 2060060697, ; 337: System.Windows.dll => 0x7aca0819 => 150
	i32 2066184531, ; 338: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 322
	i32 2070888862, ; 339: System.Diagnostics.TraceSource => 0x7b6f419e => 32
	i32 2072397586, ; 340: Microsoft.Extensions.FileProviders.Physical => 0x7b864712 => 197
	i32 2079903147, ; 341: System.Runtime.dll => 0x7bf8cdab => 114
	i32 2090596640, ; 342: System.Numerics.Vectors => 0x7c9bf920 => 80
	i32 2127167465, ; 343: System.Console => 0x7ec9ffe9 => 20
	i32 2142473426, ; 344: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143790110, ; 345: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 158
	i32 2146852085, ; 346: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2159891885, ; 347: Microsoft.Maui => 0x80bd55ad => 216
	i32 2169148018, ; 348: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 330
	i32 2181898931, ; 349: Microsoft.Extensions.Options.dll => 0x820d22b3 => 202
	i32 2192057212, ; 350: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 200
	i32 2193016926, ; 351: System.ObjectModel.dll => 0x82b6c85e => 82
	i32 2201107256, ; 352: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 317
	i32 2201231467, ; 353: System.Net.Http => 0x8334206b => 62
	i32 2207618523, ; 354: it\Microsoft.Maui.Controls.resources => 0x839595db => 332
	i32 2217644978, ; 355: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 300
	i32 2222056684, ; 356: System.Threading.Tasks.Parallel => 0x8471e4ec => 139
	i32 2244775296, ; 357: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 282
	i32 2252106437, ; 358: System.Xml.Serialization.dll => 0x863c6ac5 => 153
	i32 2252897993, ; 359: Microsoft.EntityFrameworkCore => 0x86487ec9 => 181
	i32 2253551641, ; 360: Microsoft.IdentityModel.Protocols => 0x86527819 => 209
	i32 2256313426, ; 361: System.Globalization.Extensions => 0x867c9c52 => 39
	i32 2265110946, ; 362: System.Security.AccessControl.dll => 0x8702d9a2 => 115
	i32 2266799131, ; 363: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 188
	i32 2267999099, ; 364: Xamarin.Android.Glide.DiskLruCache.dll => 0x872eeb7b => 237
	i32 2270573516, ; 365: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 326
	i32 2279755925, ; 366: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 289
	i32 2293034957, ; 367: System.ServiceModel.Web.dll => 0x88acefcd => 129
	i32 2295906218, ; 368: System.Net.Sockets => 0x88d8bfaa => 73
	i32 2298471582, ; 369: System.Net.Mail => 0x88ffe49e => 64
	i32 2303942373, ; 370: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 336
	i32 2305521784, ; 371: System.Private.CoreLib.dll => 0x896b7878 => 168
	i32 2315684594, ; 372: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 241
	i32 2320631194, ; 373: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 139
	i32 2340441535, ; 374: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 104
	i32 2344264397, ; 375: System.ValueTuple => 0x8bbaa2cd => 147
	i32 2353062107, ; 376: System.Net.Primitives => 0x8c40e0db => 68
	i32 2368005991, ; 377: System.Xml.ReaderWriter.dll => 0x8d24e767 => 152
	i32 2369706906, ; 378: Microsoft.IdentityModel.Logging => 0x8d3edb9a => 208
	i32 2371007202, ; 379: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 187
	i32 2378619854, ; 380: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 119
	i32 2383496789, ; 381: System.Security.Principal.Windows.dll => 0x8e114655 => 125
	i32 2395872292, ; 382: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 331
	i32 2401565422, ; 383: System.Web.HttpUtility => 0x8f24faee => 148
	i32 2403452196, ; 384: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 264
	i32 2411328690, ; 385: Microsoft.AspNetCore.Components => 0x8fb9f4b2 => 173
	i32 2421380589, ; 386: System.Threading.Tasks.Dataflow => 0x905355ed => 137
	i32 2423080555, ; 387: Xamarin.AndroidX.Collection.Ktx.dll => 0x906d466b => 251
	i32 2427813419, ; 388: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 328
	i32 2435356389, ; 389: System.Console.dll => 0x912896e5 => 20
	i32 2435904999, ; 390: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2442556106, ; 391: Microsoft.JSInterop.dll => 0x919672ca => 212
	i32 2454642406, ; 392: System.Text.Encoding.dll => 0x924edee6 => 133
	i32 2458678730, ; 393: System.Net.Sockets.dll => 0x928c75ca => 73
	i32 2459001652, ; 394: System.Linq.Parallel.dll => 0x92916334 => 57
	i32 2465532216, ; 395: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 254
	i32 2471841756, ; 396: netstandard.dll => 0x93554fdc => 163
	i32 2475788418, ; 397: Java.Interop.dll => 0x93918882 => 164
	i32 2480646305, ; 398: Microsoft.Maui.Controls => 0x93dba8a1 => 214
	i32 2483903535, ; 399: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 400: System.Net.ServicePoint => 0x94147f61 => 72
	i32 2490993605, ; 401: System.AppContext.dll => 0x94798bc5 => 6
	i32 2501346920, ; 402: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2505896520, ; 403: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 276
	i32 2522472828, ; 404: Xamarin.Android.Glide.dll => 0x9659e17c => 235
	i32 2537015816, ; 405: Microsoft.AspNetCore.Authorization => 0x9737ca08 => 172
	i32 2538310050, ; 406: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 89
	i32 2550873716, ; 407: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 329
	i32 2562349572, ; 408: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 409: System.Text.Encodings.Web => 0x9930ee42 => 232
	i32 2581783588, ; 410: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x99e2e424 => 277
	i32 2581819634, ; 411: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 299
	i32 2585220780, ; 412: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 132
	i32 2585805581, ; 413: System.Net.Ping => 0x9a20430d => 67
	i32 2585813321, ; 414: Microsoft.AspNetCore.Components.Forms => 0x9a206149 => 174
	i32 2589602615, ; 415: System.Threading.ThreadPool => 0x9a5a3337 => 142
	i32 2592341985, ; 416: Microsoft.Extensions.FileProviders.Abstractions => 0x9a83ffe1 => 194
	i32 2593496499, ; 417: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 338
	i32 2605712449, ; 418: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 317
	i32 2615233544, ; 419: Xamarin.AndroidX.Fragment.Ktx => 0x9be14c08 => 268
	i32 2616218305, ; 420: Microsoft.Extensions.Logging.Debug.dll => 0x9bf052c1 => 201
	i32 2617129537, ; 421: System.Private.Xml.dll => 0x9bfe3a41 => 86
	i32 2618712057, ; 422: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 94
	i32 2620871830, ; 423: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 258
	i32 2624644809, ; 424: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 263
	i32 2626831493, ; 425: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 333
	i32 2627185994, ; 426: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 30
	i32 2628210652, ; 427: System.Memory.Data => 0x9ca74fdc => 228
	i32 2629843544, ; 428: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 43
	i32 2633051222, ; 429: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 272
	i32 2634653062, ; 430: Microsoft.EntityFrameworkCore.Relational.dll => 0x9d099d86 => 183
	i32 2640290731, ; 431: Microsoft.IdentityModel.Logging.dll => 0x9d5fa3ab => 208
	i32 2640706905, ; 432: Azure.Core => 0x9d65fd59 => 169
	i32 2660759594, ; 433: System.Security.Cryptography.ProtectedData.dll => 0x9e97f82a => 230
	i32 2663391936, ; 434: Xamarin.Android.Glide.DiskLruCache => 0x9ec022c0 => 237
	i32 2663698177, ; 435: System.Runtime.Loader => 0x9ec4cf01 => 107
	i32 2664396074, ; 436: System.Xml.XDocument.dll => 0x9ecf752a => 154
	i32 2665622720, ; 437: System.Drawing.Primitives => 0x9ee22cc0 => 34
	i32 2676780864, ; 438: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2677098746, ; 439: Azure.Identity.dll => 0x9f9148fa => 170
	i32 2686887180, ; 440: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 112
	i32 2692077919, ; 441: Microsoft.AspNetCore.Components.WebView.dll => 0xa075d95f => 176
	i32 2693849962, ; 442: System.IO.dll => 0xa090e36a => 55
	i32 2701096212, ; 443: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 297
	i32 2715334215, ; 444: System.Threading.Tasks.dll => 0xa1d8b647 => 140
	i32 2717744543, ; 445: System.Security.Claims => 0xa1fd7d9f => 116
	i32 2719963679, ; 446: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 118
	i32 2724373263, ; 447: System.Runtime.Numerics.dll => 0xa262a30f => 108
	i32 2732626843, ; 448: Xamarin.AndroidX.Activity => 0xa2e0939b => 239
	i32 2735172069, ; 449: System.Threading.Channels => 0xa30769e5 => 135
	i32 2735631878, ; 450: Microsoft.AspNetCore.Authorization.dll => 0xa30e6e06 => 172
	i32 2737747696, ; 451: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 245
	i32 2740051746, ; 452: Microsoft.Identity.Client => 0xa351df22 => 204
	i32 2740948882, ; 453: System.IO.Pipes.AccessControl => 0xa35f8f92 => 52
	i32 2748088231, ; 454: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 103
	i32 2752995522, ; 455: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 339
	i32 2755098380, ; 456: Microsoft.SqlServer.Server.dll => 0xa437770c => 219
	i32 2755643133, ; 457: Microsoft.EntityFrameworkCore.SqlServer => 0xa43fc6fd => 184
	i32 2758225723, ; 458: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 215
	i32 2764765095, ; 459: Microsoft.Maui.dll => 0xa4caf7a7 => 216
	i32 2765824710, ; 460: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 131
	i32 2770495804, ; 461: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 311
	i32 2778768386, ; 462: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 302
	i32 2779977773, ; 463: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 290
	i32 2785988530, ; 464: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 345
	i32 2788224221, ; 465: Xamarin.AndroidX.Fragment.Ktx.dll => 0xa630ecdd => 268
	i32 2795666278, ; 466: Microsoft.Win32.SystemEvents => 0xa6a27b66 => 220
	i32 2801831435, ; 467: Microsoft.Maui.Graphics => 0xa7008e0b => 218
	i32 2803228030, ; 468: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 155
	i32 2806116107, ; 469: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 324
	i32 2810250172, ; 470: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 255
	i32 2819470561, ; 471: System.Xml.dll => 0xa80db4e1 => 159
	i32 2821205001, ; 472: System.ServiceProcess.dll => 0xa8282c09 => 130
	i32 2821294376, ; 473: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 290
	i32 2824502124, ; 474: System.Xml.XmlDocument => 0xa85a7b6c => 157
	i32 2831556043, ; 475: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 337
	i32 2833784645, ; 476: Microsoft.AspNetCore.Metadata => 0xa8e81f45 => 178
	i32 2838993487, ; 477: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xa9379a4f => 279
	i32 2841355853, ; 478: System.Security.Permissions => 0xa95ba64d => 231
	i32 2847789619, ; 479: Microsoft.EntityFrameworkCore.Relational => 0xa9bdd233 => 183
	i32 2849599387, ; 480: System.Threading.Overlapped.dll => 0xa9d96f9b => 136
	i32 2853208004, ; 481: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 302
	i32 2855708567, ; 482: Xamarin.AndroidX.Transition => 0xaa36a797 => 298
	i32 2861098320, ; 483: Mono.Android.Export.dll => 0xaa88e550 => 165
	i32 2861189240, ; 484: Microsoft.Maui.Essentials => 0xaa8a4878 => 217
	i32 2867946736, ; 485: System.Security.Cryptography.ProtectedData => 0xaaf164f0 => 230
	i32 2870099610, ; 486: Xamarin.AndroidX.Activity.Ktx.dll => 0xab123e9a => 240
	i32 2875164099, ; 487: Jsr305Binding.dll => 0xab5f85c3 => 307
	i32 2875220617, ; 488: System.Globalization.Calendars.dll => 0xab606289 => 38
	i32 2884993177, ; 489: Xamarin.AndroidX.ExifInterface => 0xabf58099 => 266
	i32 2887636118, ; 490: System.Net.dll => 0xac1dd496 => 79
	i32 2892341533, ; 491: Microsoft.AspNetCore.Components.Web => 0xac65a11d => 175
	i32 2899753641, ; 492: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 54
	i32 2900621748, ; 493: System.Dynamic.Runtime.dll => 0xace3f9b4 => 36
	i32 2901442782, ; 494: System.Reflection => 0xacf080de => 95
	i32 2905242038, ; 495: mscorlib.dll => 0xad2a79b6 => 162
	i32 2909740682, ; 496: System.Private.CoreLib => 0xad6f1e8a => 168
	i32 2911054922, ; 497: Microsoft.Extensions.FileProviders.Physical.dll => 0xad832c4a => 197
	i32 2916838712, ; 498: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 303
	i32 2919462931, ; 499: System.Numerics.Vectors.dll => 0xae037813 => 80
	i32 2921128767, ; 500: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 242
	i32 2936416060, ; 501: System.Resources.Reader => 0xaf06273c => 96
	i32 2940926066, ; 502: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 29
	i32 2942453041, ; 503: System.Xml.XPath.XDocument => 0xaf624531 => 155
	i32 2944313911, ; 504: System.Configuration.ConfigurationManager.dll => 0xaf7eaa37 => 222
	i32 2959614098, ; 505: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2968338931, ; 506: System.Security.Principal.Windows => 0xb0ed41f3 => 125
	i32 2972252294, ; 507: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 117
	i32 2978675010, ; 508: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 262
	i32 2987532451, ; 509: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 293
	i32 2996846495, ; 510: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 275
	i32 3012788804, ; 511: System.Configuration.ConfigurationManager => 0xb3938244 => 222
	i32 3016983068, ; 512: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 295
	i32 3023353419, ; 513: WindowsBase.dll => 0xb434b64b => 161
	i32 3024354802, ; 514: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 270
	i32 3033605958, ; 515: System.Memory.Data.dll => 0xb4d12746 => 228
	i32 3038032645, ; 516: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 352
	i32 3056245963, ; 517: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0xb62a9ccb => 292
	i32 3057625584, ; 518: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 283
	i32 3059408633, ; 519: Mono.Android.Runtime => 0xb65adef9 => 166
	i32 3059793426, ; 520: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3069363400, ; 521: Microsoft.Extensions.Caching.Abstractions.dll => 0xb6f2c4c8 => 185
	i32 3075834255, ; 522: System.Threading.Tasks => 0xb755818f => 140
	i32 3077302341, ; 523: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 330
	i32 3084678329, ; 524: Microsoft.IdentityModel.Tokens => 0xb7dc74b9 => 211
	i32 3090735792, ; 525: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 123
	i32 3099732863, ; 526: System.Security.Claims.dll => 0xb8c22b7f => 116
	i32 3103600923, ; 527: System.Formats.Asn1 => 0xb8fd311b => 225
	i32 3111772706, ; 528: System.Runtime.Serialization => 0xb979e222 => 113
	i32 3121463068, ; 529: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 45
	i32 3124832203, ; 530: System.Threading.Tasks.Extensions => 0xba4127cb => 138
	i32 3132293585, ; 531: System.Security.AccessControl => 0xbab301d1 => 115
	i32 3147165239, ; 532: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 33
	i32 3148237826, ; 533: GoogleGson.dll => 0xbba64c02 => 171
	i32 3159123045, ; 534: System.Reflection.Primitives.dll => 0xbc4c6465 => 93
	i32 3160747431, ; 535: System.IO.MemoryMappedFiles => 0xbc652da7 => 51
	i32 3178803400, ; 536: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 284
	i32 3192346100, ; 537: System.Security.SecureString => 0xbe4755f4 => 127
	i32 3193515020, ; 538: System.Web => 0xbe592c0c => 149
	i32 3195844289, ; 539: Microsoft.Extensions.Caching.Abstractions => 0xbe7cb6c1 => 185
	i32 3204380047, ; 540: System.Data.dll => 0xbefef58f => 24
	i32 3209718065, ; 541: System.Xml.XmlDocument.dll => 0xbf506931 => 157
	i32 3211777861, ; 542: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 261
	i32 3213246214, ; 543: System.Security.Permissions.dll => 0xbf863f06 => 231
	i32 3220365878, ; 544: System.Threading => 0xbff2e236 => 144
	i32 3226221578, ; 545: System.Runtime.Handles.dll => 0xc04c3c0a => 102
	i32 3251039220, ; 546: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 87
	i32 3258312781, ; 547: Xamarin.AndroidX.CardView => 0xc235e84d => 249
	i32 3265493905, ; 548: System.Linq.Queryable.dll => 0xc2a37b91 => 58
	i32 3265893370, ; 549: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 138
	i32 3277815716, ; 550: System.Resources.Writer.dll => 0xc35f7fa4 => 98
	i32 3279906254, ; 551: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 552: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3290767353, ; 553: System.Security.Cryptography.Encoding => 0xc4251ff9 => 120
	i32 3299363146, ; 554: System.Text.Encoding => 0xc4a8494a => 133
	i32 3303498502, ; 555: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 27
	i32 3305363605, ; 556: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 325
	i32 3312457198, ; 557: Microsoft.IdentityModel.JsonWebTokens => 0xc57015ee => 207
	i32 3316684772, ; 558: System.Net.Requests.dll => 0xc5b097e4 => 70
	i32 3317135071, ; 559: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 259
	i32 3317144872, ; 560: System.Data => 0xc5b79d28 => 24
	i32 3340431453, ; 561: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 247
	i32 3345895724, ; 562: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 288
	i32 3346324047, ; 563: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 285
	i32 3357674450, ; 564: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 342
	i32 3358260929, ; 565: System.Text.Json => 0xc82afec1 => 233
	i32 3362336904, ; 566: Xamarin.AndroidX.Activity.Ktx => 0xc8693088 => 240
	i32 3362522851, ; 567: Xamarin.AndroidX.Core => 0xc86c06e3 => 256
	i32 3366347497, ; 568: Java.Interop => 0xc8a662e9 => 164
	i32 3374879918, ; 569: Microsoft.IdentityModel.Protocols.dll => 0xc92894ae => 209
	i32 3374999561, ; 570: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 289
	i32 3381016424, ; 571: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 321
	i32 3392942499, ; 572: LibraryManager.dll => 0xca3c31a3 => 0
	i32 3395150330, ; 573: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 99
	i32 3403906625, ; 574: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 121
	i32 3405233483, ; 575: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 260
	i32 3406629867, ; 576: Microsoft.Extensions.FileProviders.Composite.dll => 0xcb0d0beb => 195
	i32 3421170118, ; 577: Microsoft.Extensions.Configuration.Binder => 0xcbeae9c6 => 189
	i32 3428513518, ; 578: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 192
	i32 3429136800, ; 579: System.Xml => 0xcc6479a0 => 159
	i32 3430777524, ; 580: netstandard => 0xcc7d82b4 => 163
	i32 3441283291, ; 581: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 263
	i32 3445260447, ; 582: System.Formats.Tar => 0xcd5a809f => 37
	i32 3452344032, ; 583: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 213
	i32 3463511458, ; 584: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 329
	i32 3464190856, ; 585: Microsoft.AspNetCore.Components.Forms.dll => 0xce7b5b88 => 174
	i32 3471940407, ; 586: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3476120550, ; 587: Mono.Android => 0xcf3163e6 => 167
	i32 3479583265, ; 588: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 342
	i32 3484440000, ; 589: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 341
	i32 3485117614, ; 590: System.Text.Json.dll => 0xcfbaacae => 233
	i32 3486566296, ; 591: System.Transactions => 0xcfd0c798 => 146
	i32 3493954962, ; 592: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 252
	i32 3500000672, ; 593: Microsoft.JSInterop => 0xd09dc5a0 => 212
	i32 3509114376, ; 594: System.Xml.Linq => 0xd128d608 => 151
	i32 3515174580, ; 595: System.Security.dll => 0xd1854eb4 => 128
	i32 3530912306, ; 596: System.Configuration => 0xd2757232 => 19
	i32 3539954161, ; 597: System.Net.HttpListener => 0xd2ff69f1 => 63
	i32 3545306353, ; 598: Microsoft.Data.SqlClient => 0xd35114f1 => 180
	i32 3558648585, ; 599: System.ClientModel => 0xd41cab09 => 221
	i32 3560100363, ; 600: System.Threading.Timer => 0xd432d20b => 143
	i32 3561949811, ; 601: Azure.Core.dll => 0xd44f0a73 => 169
	i32 3570554715, ; 602: System.IO.FileSystem.AccessControl => 0xd4d2575b => 45
	i32 3570608287, ; 603: System.Runtime.Caching.dll => 0xd4d3289f => 229
	i32 3580758918, ; 604: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 349
	i32 3597029428, ; 605: Xamarin.Android.Glide.GifDecoder.dll => 0xd6665034 => 238
	i32 3598340787, ; 606: System.Net.WebSockets.Client => 0xd67a52b3 => 77
	i32 3608519521, ; 607: System.Linq.dll => 0xd715a361 => 59
	i32 3624195450, ; 608: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 104
	i32 3627220390, ; 609: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 287
	i32 3633644679, ; 610: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 242
	i32 3638274909, ; 611: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 47
	i32 3641597786, ; 612: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 273
	i32 3643446276, ; 613: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 346
	i32 3643854240, ; 614: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 284
	i32 3645089577, ; 615: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3657292374, ; 616: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 188
	i32 3660523487, ; 617: System.Net.NetworkInformation => 0xda2f27df => 66
	i32 3672681054, ; 618: Mono.Android.dll => 0xdae8aa5e => 167
	i32 3682565725, ; 619: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 248
	i32 3684561358, ; 620: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 252
	i32 3689375977, ; 621: System.Drawing.Common => 0xdbe768e9 => 224
	i32 3697841164, ; 622: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 351
	i32 3700591436, ; 623: Microsoft.IdentityModel.Abstractions.dll => 0xdc928b4c => 206
	i32 3700866549, ; 624: System.Net.WebProxy.dll => 0xdc96bdf5 => 76
	i32 3706696989, ; 625: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 257
	i32 3716563718, ; 626: System.Runtime.Intrinsics => 0xdd864306 => 106
	i32 3718780102, ; 627: Xamarin.AndroidX.Annotation => 0xdda814c6 => 241
	i32 3722202641, ; 628: Microsoft.Extensions.Configuration.Json.dll => 0xdddc4e11 => 191
	i32 3724971120, ; 629: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 283
	i32 3732100267, ; 630: System.Net.NameResolution => 0xde7354ab => 65
	i32 3732214720, ; 631: Microsoft.AspNetCore.Metadata.dll => 0xde7513c0 => 178
	i32 3737834244, ; 632: System.Net.Http.Json.dll => 0xdecad304 => 61
	i32 3748608112, ; 633: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 223
	i32 3751444290, ; 634: System.Xml.XPath => 0xdf9a7f42 => 156
	i32 3758424670, ; 635: Microsoft.Extensions.Configuration.FileExtensions => 0xe005025e => 190
	i32 3786282454, ; 636: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 250
	i32 3792276235, ; 637: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3800979733, ; 638: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 213
	i32 3802395368, ; 639: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3819260425, ; 640: System.Net.WebProxy => 0xe3a54a09 => 76
	i32 3823082795, ; 641: System.Security.Cryptography.dll => 0xe3df9d2b => 124
	i32 3829621856, ; 642: System.Numerics.dll => 0xe4436460 => 81
	i32 3841636137, ; 643: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 193
	i32 3844307129, ; 644: System.Net.Mail.dll => 0xe52378b9 => 64
	i32 3849253459, ; 645: System.Runtime.InteropServices.dll => 0xe56ef253 => 105
	i32 3870376305, ; 646: System.Net.HttpListener.dll => 0xe6b14171 => 63
	i32 3873536506, ; 647: System.Security.Principal => 0xe6e179fa => 126
	i32 3875112723, ; 648: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 120
	i32 3885497537, ; 649: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 75
	i32 3885922214, ; 650: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 298
	i32 3888767677, ; 651: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 288
	i32 3889960447, ; 652: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 350
	i32 3896106733, ; 653: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 654: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 256
	i32 3901907137, ; 655: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3920810846, ; 656: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 42
	i32 3921031405, ; 657: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 301
	i32 3928044579, ; 658: System.Xml.ReaderWriter => 0xea213423 => 152
	i32 3930554604, ; 659: System.Security.Principal.dll => 0xea4780ec => 126
	i32 3931092270, ; 660: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 286
	i32 3945713374, ; 661: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3953953790, ; 662: System.Text.Encoding.CodePages => 0xebac8bfe => 131
	i32 3955647286, ; 663: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 244
	i32 3959773229, ; 664: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 275
	i32 3980434154, ; 665: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 345
	i32 3987592930, ; 666: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 327
	i32 4003436829, ; 667: System.Diagnostics.Process.dll => 0xee9f991d => 28
	i32 4015948917, ; 668: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 243
	i32 4023392905, ; 669: System.IO.Pipelines => 0xefd01a89 => 227
	i32 4025784931, ; 670: System.Memory => 0xeff49a63 => 60
	i32 4046471985, ; 671: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 215
	i32 4054681211, ; 672: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 88
	i32 4068434129, ; 673: System.Private.Xml.Linq.dll => 0xf27f60d1 => 85
	i32 4073602200, ; 674: System.Threading.dll => 0xf2ce3c98 => 144
	i32 4094352644, ; 675: Microsoft.Maui.Essentials.dll => 0xf40add04 => 217
	i32 4099507663, ; 676: System.Drawing.dll => 0xf45985cf => 35
	i32 4100113165, ; 677: System.Private.Uri => 0xf462c30d => 84
	i32 4101593132, ; 678: Xamarin.AndroidX.Emoji2 => 0xf479582c => 264
	i32 4101842092, ; 679: Microsoft.Extensions.Caching.Memory => 0xf47d24ac => 186
	i32 4102112229, ; 680: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 340
	i32 4125707920, ; 681: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 335
	i32 4126470640, ; 682: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 192
	i32 4127667938, ; 683: System.IO.FileSystem.Watcher => 0xf60736e2 => 48
	i32 4130442656, ; 684: System.AppContext => 0xf6318da0 => 6
	i32 4147896353, ; 685: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 88
	i32 4150914736, ; 686: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 347
	i32 4151237749, ; 687: System.Core => 0xf76edc75 => 21
	i32 4159265925, ; 688: System.Xml.XmlSerializer => 0xf7e95c85 => 158
	i32 4161255271, ; 689: System.Reflection.TypeExtensions => 0xf807b767 => 94
	i32 4164802419, ; 690: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 48
	i32 4181436372, ; 691: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 111
	i32 4182413190, ; 692: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 280
	i32 4185676441, ; 693: System.Security => 0xf97c5a99 => 128
	i32 4194278001, ; 694: Microsoft.EntityFrameworkCore.SqlServer.dll => 0xf9ff9a71 => 184
	i32 4196529839, ; 695: System.Net.WebClient.dll => 0xfa21f6af => 74
	i32 4213026141, ; 696: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 223
	i32 4256097574, ; 697: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 257
	i32 4258378803, ; 698: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xfdd1b433 => 279
	i32 4260525087, ; 699: System.Buffers => 0xfdf2741f => 7
	i32 4263231520, ; 700: System.IdentityModel.Tokens.Jwt.dll => 0xfe1bc020 => 226
	i32 4271975918, ; 701: Microsoft.Maui.Controls.dll => 0xfea12dee => 214
	i32 4274976490, ; 702: System.Runtime.Numerics => 0xfecef6ea => 108
	i32 4292120959, ; 703: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 280
	i32 4294648842, ; 704: Microsoft.Extensions.FileProviders.Embedded => 0xfffb240a => 196
	i32 4294763496 ; 705: Xamarin.AndroidX.ExifInterface.dll => 0xfffce3e8 => 266
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [706 x i32] [
	i32 66, ; 0
	i32 65, ; 1
	i32 106, ; 2
	i32 276, ; 3
	i32 310, ; 4
	i32 46, ; 5
	i32 78, ; 6
	i32 141, ; 7
	i32 220, ; 8
	i32 29, ; 9
	i32 351, ; 10
	i32 122, ; 11
	i32 218, ; 12
	i32 100, ; 13
	i32 294, ; 14
	i32 105, ; 15
	i32 294, ; 16
	i32 135, ; 17
	i32 314, ; 18
	i32 75, ; 19
	i32 122, ; 20
	i32 13, ; 21
	i32 250, ; 22
	i32 130, ; 23
	i32 296, ; 24
	i32 147, ; 25
	i32 348, ; 26
	i32 349, ; 27
	i32 18, ; 28
	i32 248, ; 29
	i32 26, ; 30
	i32 270, ; 31
	i32 1, ; 32
	i32 57, ; 33
	i32 40, ; 34
	i32 89, ; 35
	i32 173, ; 36
	i32 253, ; 37
	i32 143, ; 38
	i32 272, ; 39
	i32 269, ; 40
	i32 320, ; 41
	i32 52, ; 42
	i32 67, ; 43
	i32 348, ; 44
	i32 239, ; 45
	i32 81, ; 46
	i32 219, ; 47
	i32 333, ; 48
	i32 271, ; 49
	i32 332, ; 50
	i32 129, ; 51
	i32 53, ; 52
	i32 145, ; 53
	i32 72, ; 54
	i32 141, ; 55
	i32 60, ; 56
	i32 142, ; 57
	i32 352, ; 58
	i32 161, ; 59
	i32 344, ; 60
	i32 254, ; 61
	i32 12, ; 62
	i32 267, ; 63
	i32 123, ; 64
	i32 148, ; 65
	i32 111, ; 66
	i32 162, ; 67
	i32 160, ; 68
	i32 269, ; 69
	i32 206, ; 70
	i32 282, ; 71
	i32 82, ; 72
	i32 331, ; 73
	i32 325, ; 74
	i32 203, ; 75
	i32 146, ; 76
	i32 314, ; 77
	i32 58, ; 78
	i32 199, ; 79
	i32 49, ; 80
	i32 101, ; 81
	i32 112, ; 82
	i32 179, ; 83
	i32 38, ; 84
	i32 307, ; 85
	i32 305, ; 86
	i32 196, ; 87
	i32 118, ; 88
	i32 339, ; 89
	i32 50, ; 90
	i32 42, ; 91
	i32 0, ; 92
	i32 117, ; 93
	i32 259, ; 94
	i32 337, ; 95
	i32 265, ; 96
	i32 79, ; 97
	i32 232, ; 98
	i32 301, ; 99
	i32 246, ; 100
	i32 8, ; 101
	i32 71, ; 102
	i32 319, ; 103
	i32 151, ; 104
	i32 316, ; 105
	i32 150, ; 106
	i32 90, ; 107
	i32 311, ; 108
	i32 43, ; 109
	i32 334, ; 110
	i32 322, ; 111
	i32 315, ; 112
	i32 107, ; 113
	i32 221, ; 114
	i32 127, ; 115
	i32 25, ; 116
	i32 236, ; 117
	i32 70, ; 118
	i32 53, ; 119
	i32 44, ; 120
	i32 343, ; 121
	i32 202, ; 122
	i32 260, ; 123
	i32 177, ; 124
	i32 22, ; 125
	i32 274, ; 126
	i32 224, ; 127
	i32 84, ; 128
	i32 41, ; 129
	i32 156, ; 130
	i32 69, ; 131
	i32 287, ; 132
	i32 3, ; 133
	i32 40, ; 134
	i32 61, ; 135
	i32 16, ; 136
	i32 51, ; 137
	i32 346, ; 138
	i32 310, ; 139
	i32 103, ; 140
	i32 315, ; 141
	i32 308, ; 142
	i32 271, ; 143
	i32 33, ; 144
	i32 154, ; 145
	i32 83, ; 146
	i32 31, ; 147
	i32 12, ; 148
	i32 49, ; 149
	i32 198, ; 150
	i32 54, ; 151
	i32 291, ; 152
	i32 35, ; 153
	i32 193, ; 154
	i32 321, ; 155
	i32 309, ; 156
	i32 244, ; 157
	i32 34, ; 158
	i32 56, ; 159
	i32 278, ; 160
	i32 205, ; 161
	i32 171, ; 162
	i32 17, ; 163
	i32 312, ; 164
	i32 160, ; 165
	i32 190, ; 166
	i32 334, ; 167
	i32 277, ; 168
	i32 201, ; 169
	i32 180, ; 170
	i32 234, ; 171
	i32 304, ; 172
	i32 182, ; 173
	i32 340, ; 174
	i32 149, ; 175
	i32 194, ; 176
	i32 300, ; 177
	i32 285, ; 178
	i32 182, ; 179
	i32 338, ; 180
	i32 246, ; 181
	i32 186, ; 182
	i32 28, ; 183
	i32 50, ; 184
	i32 336, ; 185
	i32 305, ; 186
	i32 5, ; 187
	i32 320, ; 188
	i32 295, ; 189
	i32 299, ; 190
	i32 251, ; 191
	i32 316, ; 192
	i32 243, ; 193
	i32 262, ; 194
	i32 83, ; 195
	i32 304, ; 196
	i32 59, ; 197
	i32 110, ; 198
	i32 55, ; 199
	i32 350, ; 200
	i32 291, ; 201
	i32 97, ; 202
	i32 19, ; 203
	i32 255, ; 204
	i32 109, ; 205
	i32 99, ; 206
	i32 100, ; 207
	i32 318, ; 208
	i32 102, ; 209
	i32 308, ; 210
	i32 69, ; 211
	i32 225, ; 212
	i32 31, ; 213
	i32 195, ; 214
	i32 101, ; 215
	i32 71, ; 216
	i32 226, ; 217
	i32 324, ; 218
	i32 9, ; 219
	i32 121, ; 220
	i32 44, ; 221
	i32 245, ; 222
	i32 203, ; 223
	i32 9, ; 224
	i32 41, ; 225
	i32 4, ; 226
	i32 292, ; 227
	i32 328, ; 228
	i32 207, ; 229
	i32 323, ; 230
	i32 198, ; 231
	i32 30, ; 232
	i32 134, ; 233
	i32 90, ; 234
	i32 177, ; 235
	i32 91, ; 236
	i32 343, ; 237
	i32 229, ; 238
	i32 47, ; 239
	i32 137, ; 240
	i32 110, ; 241
	i32 136, ; 242
	i32 170, ; 243
	i32 261, ; 244
	i32 113, ; 245
	i32 309, ; 246
	i32 153, ; 247
	i32 74, ; 248
	i32 77, ; 249
	i32 281, ; 250
	i32 36, ; 251
	i32 303, ; 252
	i32 210, ; 253
	i32 191, ; 254
	i32 265, ; 255
	i32 258, ; 256
	i32 62, ; 257
	i32 134, ; 258
	i32 15, ; 259
	i32 176, ; 260
	i32 114, ; 261
	i32 297, ; 262
	i32 306, ; 263
	i32 253, ; 264
	i32 46, ; 265
	i32 68, ; 266
	i32 78, ; 267
	i32 124, ; 268
	i32 181, ; 269
	i32 92, ; 270
	i32 119, ; 271
	i32 313, ; 272
	i32 26, ; 273
	i32 274, ; 274
	i32 95, ; 275
	i32 27, ; 276
	i32 249, ; 277
	i32 341, ; 278
	i32 319, ; 279
	i32 145, ; 280
	i32 227, ; 281
	i32 165, ; 282
	i32 4, ; 283
	i32 96, ; 284
	i32 175, ; 285
	i32 32, ; 286
	i32 91, ; 287
	i32 296, ; 288
	i32 199, ; 289
	i32 21, ; 290
	i32 39, ; 291
	i32 166, ; 292
	i32 335, ; 293
	i32 267, ; 294
	i32 327, ; 295
	i32 204, ; 296
	i32 179, ; 297
	i32 281, ; 298
	i32 312, ; 299
	i32 306, ; 300
	i32 286, ; 301
	i32 2, ; 302
	i32 132, ; 303
	i32 109, ; 304
	i32 200, ; 305
	i32 234, ; 306
	i32 347, ; 307
	i32 236, ; 308
	i32 344, ; 309
	i32 56, ; 310
	i32 93, ; 311
	i32 210, ; 312
	i32 326, ; 313
	i32 37, ; 314
	i32 247, ; 315
	i32 25, ; 316
	i32 92, ; 317
	i32 87, ; 318
	i32 97, ; 319
	i32 10, ; 320
	i32 85, ; 321
	i32 98, ; 322
	i32 293, ; 323
	i32 187, ; 324
	i32 313, ; 325
	i32 238, ; 326
	i32 211, ; 327
	i32 323, ; 328
	i32 7, ; 329
	i32 278, ; 330
	i32 318, ; 331
	i32 235, ; 332
	i32 205, ; 333
	i32 86, ; 334
	i32 189, ; 335
	i32 273, ; 336
	i32 150, ; 337
	i32 322, ; 338
	i32 32, ; 339
	i32 197, ; 340
	i32 114, ; 341
	i32 80, ; 342
	i32 20, ; 343
	i32 11, ; 344
	i32 158, ; 345
	i32 3, ; 346
	i32 216, ; 347
	i32 330, ; 348
	i32 202, ; 349
	i32 200, ; 350
	i32 82, ; 351
	i32 317, ; 352
	i32 62, ; 353
	i32 332, ; 354
	i32 300, ; 355
	i32 139, ; 356
	i32 282, ; 357
	i32 153, ; 358
	i32 181, ; 359
	i32 209, ; 360
	i32 39, ; 361
	i32 115, ; 362
	i32 188, ; 363
	i32 237, ; 364
	i32 326, ; 365
	i32 289, ; 366
	i32 129, ; 367
	i32 73, ; 368
	i32 64, ; 369
	i32 336, ; 370
	i32 168, ; 371
	i32 241, ; 372
	i32 139, ; 373
	i32 104, ; 374
	i32 147, ; 375
	i32 68, ; 376
	i32 152, ; 377
	i32 208, ; 378
	i32 187, ; 379
	i32 119, ; 380
	i32 125, ; 381
	i32 331, ; 382
	i32 148, ; 383
	i32 264, ; 384
	i32 173, ; 385
	i32 137, ; 386
	i32 251, ; 387
	i32 328, ; 388
	i32 20, ; 389
	i32 14, ; 390
	i32 212, ; 391
	i32 133, ; 392
	i32 73, ; 393
	i32 57, ; 394
	i32 254, ; 395
	i32 163, ; 396
	i32 164, ; 397
	i32 214, ; 398
	i32 15, ; 399
	i32 72, ; 400
	i32 6, ; 401
	i32 23, ; 402
	i32 276, ; 403
	i32 235, ; 404
	i32 172, ; 405
	i32 89, ; 406
	i32 329, ; 407
	i32 1, ; 408
	i32 232, ; 409
	i32 277, ; 410
	i32 299, ; 411
	i32 132, ; 412
	i32 67, ; 413
	i32 174, ; 414
	i32 142, ; 415
	i32 194, ; 416
	i32 338, ; 417
	i32 317, ; 418
	i32 268, ; 419
	i32 201, ; 420
	i32 86, ; 421
	i32 94, ; 422
	i32 258, ; 423
	i32 263, ; 424
	i32 333, ; 425
	i32 30, ; 426
	i32 228, ; 427
	i32 43, ; 428
	i32 272, ; 429
	i32 183, ; 430
	i32 208, ; 431
	i32 169, ; 432
	i32 230, ; 433
	i32 237, ; 434
	i32 107, ; 435
	i32 154, ; 436
	i32 34, ; 437
	i32 22, ; 438
	i32 170, ; 439
	i32 112, ; 440
	i32 176, ; 441
	i32 55, ; 442
	i32 297, ; 443
	i32 140, ; 444
	i32 116, ; 445
	i32 118, ; 446
	i32 108, ; 447
	i32 239, ; 448
	i32 135, ; 449
	i32 172, ; 450
	i32 245, ; 451
	i32 204, ; 452
	i32 52, ; 453
	i32 103, ; 454
	i32 339, ; 455
	i32 219, ; 456
	i32 184, ; 457
	i32 215, ; 458
	i32 216, ; 459
	i32 131, ; 460
	i32 311, ; 461
	i32 302, ; 462
	i32 290, ; 463
	i32 345, ; 464
	i32 268, ; 465
	i32 220, ; 466
	i32 218, ; 467
	i32 155, ; 468
	i32 324, ; 469
	i32 255, ; 470
	i32 159, ; 471
	i32 130, ; 472
	i32 290, ; 473
	i32 157, ; 474
	i32 337, ; 475
	i32 178, ; 476
	i32 279, ; 477
	i32 231, ; 478
	i32 183, ; 479
	i32 136, ; 480
	i32 302, ; 481
	i32 298, ; 482
	i32 165, ; 483
	i32 217, ; 484
	i32 230, ; 485
	i32 240, ; 486
	i32 307, ; 487
	i32 38, ; 488
	i32 266, ; 489
	i32 79, ; 490
	i32 175, ; 491
	i32 54, ; 492
	i32 36, ; 493
	i32 95, ; 494
	i32 162, ; 495
	i32 168, ; 496
	i32 197, ; 497
	i32 303, ; 498
	i32 80, ; 499
	i32 242, ; 500
	i32 96, ; 501
	i32 29, ; 502
	i32 155, ; 503
	i32 222, ; 504
	i32 18, ; 505
	i32 125, ; 506
	i32 117, ; 507
	i32 262, ; 508
	i32 293, ; 509
	i32 275, ; 510
	i32 222, ; 511
	i32 295, ; 512
	i32 161, ; 513
	i32 270, ; 514
	i32 228, ; 515
	i32 352, ; 516
	i32 292, ; 517
	i32 283, ; 518
	i32 166, ; 519
	i32 16, ; 520
	i32 185, ; 521
	i32 140, ; 522
	i32 330, ; 523
	i32 211, ; 524
	i32 123, ; 525
	i32 116, ; 526
	i32 225, ; 527
	i32 113, ; 528
	i32 45, ; 529
	i32 138, ; 530
	i32 115, ; 531
	i32 33, ; 532
	i32 171, ; 533
	i32 93, ; 534
	i32 51, ; 535
	i32 284, ; 536
	i32 127, ; 537
	i32 149, ; 538
	i32 185, ; 539
	i32 24, ; 540
	i32 157, ; 541
	i32 261, ; 542
	i32 231, ; 543
	i32 144, ; 544
	i32 102, ; 545
	i32 87, ; 546
	i32 249, ; 547
	i32 58, ; 548
	i32 138, ; 549
	i32 98, ; 550
	i32 5, ; 551
	i32 13, ; 552
	i32 120, ; 553
	i32 133, ; 554
	i32 27, ; 555
	i32 325, ; 556
	i32 207, ; 557
	i32 70, ; 558
	i32 259, ; 559
	i32 24, ; 560
	i32 247, ; 561
	i32 288, ; 562
	i32 285, ; 563
	i32 342, ; 564
	i32 233, ; 565
	i32 240, ; 566
	i32 256, ; 567
	i32 164, ; 568
	i32 209, ; 569
	i32 289, ; 570
	i32 321, ; 571
	i32 0, ; 572
	i32 99, ; 573
	i32 121, ; 574
	i32 260, ; 575
	i32 195, ; 576
	i32 189, ; 577
	i32 192, ; 578
	i32 159, ; 579
	i32 163, ; 580
	i32 263, ; 581
	i32 37, ; 582
	i32 213, ; 583
	i32 329, ; 584
	i32 174, ; 585
	i32 17, ; 586
	i32 167, ; 587
	i32 342, ; 588
	i32 341, ; 589
	i32 233, ; 590
	i32 146, ; 591
	i32 252, ; 592
	i32 212, ; 593
	i32 151, ; 594
	i32 128, ; 595
	i32 19, ; 596
	i32 63, ; 597
	i32 180, ; 598
	i32 221, ; 599
	i32 143, ; 600
	i32 169, ; 601
	i32 45, ; 602
	i32 229, ; 603
	i32 349, ; 604
	i32 238, ; 605
	i32 77, ; 606
	i32 59, ; 607
	i32 104, ; 608
	i32 287, ; 609
	i32 242, ; 610
	i32 47, ; 611
	i32 273, ; 612
	i32 346, ; 613
	i32 284, ; 614
	i32 14, ; 615
	i32 188, ; 616
	i32 66, ; 617
	i32 167, ; 618
	i32 248, ; 619
	i32 252, ; 620
	i32 224, ; 621
	i32 351, ; 622
	i32 206, ; 623
	i32 76, ; 624
	i32 257, ; 625
	i32 106, ; 626
	i32 241, ; 627
	i32 191, ; 628
	i32 283, ; 629
	i32 65, ; 630
	i32 178, ; 631
	i32 61, ; 632
	i32 223, ; 633
	i32 156, ; 634
	i32 190, ; 635
	i32 250, ; 636
	i32 10, ; 637
	i32 213, ; 638
	i32 11, ; 639
	i32 76, ; 640
	i32 124, ; 641
	i32 81, ; 642
	i32 193, ; 643
	i32 64, ; 644
	i32 105, ; 645
	i32 63, ; 646
	i32 126, ; 647
	i32 120, ; 648
	i32 75, ; 649
	i32 298, ; 650
	i32 288, ; 651
	i32 350, ; 652
	i32 8, ; 653
	i32 256, ; 654
	i32 2, ; 655
	i32 42, ; 656
	i32 301, ; 657
	i32 152, ; 658
	i32 126, ; 659
	i32 286, ; 660
	i32 23, ; 661
	i32 131, ; 662
	i32 244, ; 663
	i32 275, ; 664
	i32 345, ; 665
	i32 327, ; 666
	i32 28, ; 667
	i32 243, ; 668
	i32 227, ; 669
	i32 60, ; 670
	i32 215, ; 671
	i32 88, ; 672
	i32 85, ; 673
	i32 144, ; 674
	i32 217, ; 675
	i32 35, ; 676
	i32 84, ; 677
	i32 264, ; 678
	i32 186, ; 679
	i32 340, ; 680
	i32 335, ; 681
	i32 192, ; 682
	i32 48, ; 683
	i32 6, ; 684
	i32 88, ; 685
	i32 347, ; 686
	i32 21, ; 687
	i32 158, ; 688
	i32 94, ; 689
	i32 48, ; 690
	i32 111, ; 691
	i32 280, ; 692
	i32 128, ; 693
	i32 184, ; 694
	i32 74, ; 695
	i32 223, ; 696
	i32 257, ; 697
	i32 279, ; 698
	i32 7, ; 699
	i32 226, ; 700
	i32 214, ; 701
	i32 108, ; 702
	i32 280, ; 703
	i32 196, ; 704
	i32 266 ; 705
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.2xx @ 96b6bb65e8736e45180905177aa343f0e1854ea3"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"min_enum_size", i32 4}
