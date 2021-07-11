.class public Lcom/appaac/haptic/AACHapticUtils;
.super Ljava/lang/Object;
.source "AACHapticUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/appaac/haptic/AACHapticUtils;


# instance fields
.field private ANDROID_VERSIONCODE_M:I

.field private ANDROID_VERSIONCODE_O:I

.field private ANDROID_VERSIONCODE_Q:I

.field private debug:Z

.field private mLoopPatternThread:Landroid/os/HandlerThread;

.field private mRichTapEnable:Z

.field private mVibrationHandler:Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;

.field private mf:Landroid/os/MemoryFile;

.field private vibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 186
    iput-boolean v0, p0, Lcom/appaac/haptic/AACHapticUtils;->mRichTapEnable:Z

    const/4 v0, 0x0

    .line 188
    iput-object v0, p0, Lcom/appaac/haptic/AACHapticUtils;->mf:Landroid/os/MemoryFile;

    const/16 v0, 0x17

    .line 190
    iput v0, p0, Lcom/appaac/haptic/AACHapticUtils;->ANDROID_VERSIONCODE_M:I

    const/16 v0, 0x1a

    .line 191
    iput v0, p0, Lcom/appaac/haptic/AACHapticUtils;->ANDROID_VERSIONCODE_O:I

    const/16 v0, 0x1d

    .line 192
    iput v0, p0, Lcom/appaac/haptic/AACHapticUtils;->ANDROID_VERSIONCODE_Q:I

    const/4 v0, 0x0

    .line 195
    iput-boolean v0, p0, Lcom/appaac/haptic/AACHapticUtils;->debug:Z

    return-void
.end method

.method static synthetic access$100(Lcom/appaac/haptic/AACHapticUtils;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/appaac/haptic/AACHapticUtils;->debug:Z

    return p0
.end method

.method static synthetic access$200(Lcom/appaac/haptic/AACHapticUtils;)I
    .locals 0

    .line 48
    iget p0, p0, Lcom/appaac/haptic/AACHapticUtils;->ANDROID_VERSIONCODE_O:I

    return p0
.end method

.method static synthetic access$300(Lcom/appaac/haptic/AACHapticUtils;)Landroid/os/Vibrator;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/appaac/haptic/AACHapticUtils;->vibrator:Landroid/os/Vibrator;

    return-object p0
.end method

.method private beforeStopPattern()V
    .locals 1

    .line 1109
    iget-object p0, p0, Lcom/appaac/haptic/AACHapticUtils;->mVibrationHandler:Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private freeSharedMemory()V
    .locals 2

    .line 513
    iget-object v0, p0, Lcom/appaac/haptic/AACHapticUtils;->mf:Landroid/os/MemoryFile;

    if-eqz v0, :cond_0

    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "freeSharedMemory, length:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/appaac/haptic/AACHapticUtils;->mf:Landroid/os/MemoryFile;

    invoke-virtual {v1}, Landroid/os/MemoryFile;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AACHapticUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    iget-object v0, p0, Lcom/appaac/haptic/AACHapticUtils;->mf:Landroid/os/MemoryFile;

    invoke-virtual {v0}, Landroid/os/MemoryFile;->close()V

    const/4 v0, 0x0

    .line 516
    iput-object v0, p0, Lcom/appaac/haptic/AACHapticUtils;->mf:Landroid/os/MemoryFile;

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/appaac/haptic/AACHapticUtils;
    .locals 2

    .line 201
    sget-object v0, Lcom/appaac/haptic/AACHapticUtils;->sInstance:Lcom/appaac/haptic/AACHapticUtils;

    if-nez v0, :cond_1

    .line 202
    const-class v0, Lcom/appaac/haptic/AACHapticUtils;

    monitor-enter v0

    .line 203
    :try_start_0
    sget-object v1, Lcom/appaac/haptic/AACHapticUtils;->sInstance:Lcom/appaac/haptic/AACHapticUtils;

    if-nez v1, :cond_0

    .line 204
    new-instance v1, Lcom/appaac/haptic/AACHapticUtils;

    invoke-direct {v1}, Lcom/appaac/haptic/AACHapticUtils;-><init>()V

    sput-object v1, Lcom/appaac/haptic/AACHapticUtils;->sInstance:Lcom/appaac/haptic/AACHapticUtils;

    .line 206
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 208
    :cond_1
    :goto_0
    sget-object v0, Lcom/appaac/haptic/AACHapticUtils;->sInstance:Lcom/appaac/haptic/AACHapticUtils;

    return-object v0
.end method

.method private initHandler()V
    .locals 3

    .line 248
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "loop-pattern-thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/appaac/haptic/AACHapticUtils;->mLoopPatternThread:Landroid/os/HandlerThread;

    .line 249
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 250
    new-instance v0, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;

    iget-object v1, p0, Lcom/appaac/haptic/AACHapticUtils;->mLoopPatternThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;-><init>(Lcom/appaac/haptic/AACHapticUtils;Landroid/os/Looper;Lcom/appaac/haptic/AACHapticUtils$1;)V

    iput-object v0, p0, Lcom/appaac/haptic/AACHapticUtils;->mVibrationHandler:Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;

    return-void
.end method

.method private playExtPrebakedOnNonRichTap(II)V
    .locals 5

    const-string v0, "AACHapticUtils"

    const-string v1, "The system doesn\'t integrate richtap software"

    .line 392
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-direct {p0}, Lcom/appaac/haptic/AACHapticUtils;->beforeStopPattern()V

    .line 394
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget v1, p0, Lcom/appaac/haptic/AACHapticUtils;->ANDROID_VERSIONCODE_O:I

    if-lt v0, v1, :cond_0

    .line 395
    iget-object v0, p0, Lcom/appaac/haptic/AACHapticUtils;->vibrator:Landroid/os/Vibrator;

    int-to-long v1, p1

    const/4 v3, 0x1

    const/16 v4, 0xff

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {v3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {v1, v2, p2}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    goto :goto_0

    .line 397
    :cond_0
    iget-object p2, p0, Lcom/appaac/haptic/AACHapticUtils;->vibrator:Landroid/os/Vibrator;

    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V

    :goto_0
    int-to-long p1, p1

    .line 399
    invoke-direct {p0, p1, p2}, Lcom/appaac/haptic/AACHapticUtils;->stopLoopPattern(J)V

    return-void
.end method

.method private stopLoopPattern(J)V
    .locals 3

    .line 1120
    iget-boolean v0, p0, Lcom/appaac/haptic/AACHapticUtils;->debug:Z

    const-string v1, "AACHapticUtils"

    if-eqz v0, :cond_0

    .line 1121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resumeDelay "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    :cond_0
    iget-object v0, p0, Lcom/appaac/haptic/AACHapticUtils;->vibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/appaac/haptic/AACHapticUtils;->mVibrationHandler:Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;

    if-nez v0, :cond_1

    goto :goto_0

    .line 1128
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "delay"

    .line 1129
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1130
    iget-object p0, p0, Lcom/appaac/haptic/AACHapticUtils;->mVibrationHandler:Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 1131
    invoke-virtual {p0, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1132
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_2
    :goto_0
    const-string p0, "Please call the init method"

    .line 1125
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)Lcom/appaac/haptic/AACHapticUtils;
    .locals 2

    const-string/jumbo v0, "vibrator"

    .line 219
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/appaac/haptic/AACHapticUtils;->vibrator:Landroid/os/Vibrator;

    const-string v0, "AACHapticUtils"

    const-string v1, "init ,version:V003.0828"

    .line 220
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-direct {p0}, Lcom/appaac/haptic/AACHapticUtils;->initHandler()V

    const/4 v1, 0x0

    .line 222
    invoke-virtual {p0, v1}, Lcom/appaac/haptic/AACHapticUtils;->useNonRichTap(Z)V

    .line 223
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    iget p0, p0, Lcom/appaac/haptic/AACHapticUtils;->ANDROID_VERSIONCODE_M:I

    if-lt v1, p0, :cond_0

    const-string p0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 224
    invoke-virtual {p1, p0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "READ_EXTERNAL_STOREAGE permission isn\'t granted"

    .line 225
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_0
    sget-object p0, Lcom/appaac/haptic/AACHapticUtils;->sInstance:Lcom/appaac/haptic/AACHapticUtils;

    return-object p0
.end method

.method public playExtPrebaked(Lcom/appaac/haptic/HapticEffect$Effect;I)V
    .locals 9

    .line 345
    iget-object v0, p0, Lcom/appaac/haptic/AACHapticUtils;->vibrator:Landroid/os/Vibrator;

    const-string v1, "AACHapticUtils"

    if-nez v0, :cond_0

    const-string p0, "Please call the init method"

    .line 346
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string p0, "Effect is null"

    .line 351
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x1

    if-lt p2, v0, :cond_4

    const/16 v2, 0x64

    if-le p2, v2, :cond_2

    goto :goto_2

    .line 361
    :cond_2
    invoke-virtual {p1}, Lcom/appaac/haptic/HapticEffect$Effect;->getDuration()I

    move-result v3

    .line 363
    iget-boolean v4, p0, Lcom/appaac/haptic/AACHapticUtils;->mRichTapEnable:Z

    if-nez v4, :cond_3

    mul-int/lit16 p2, p2, 0xff

    .line 364
    div-int/2addr p2, v2

    .line 365
    invoke-direct {p0, v3, p2}, Lcom/appaac/haptic/AACHapticUtils;->playExtPrebakedOnNonRichTap(II)V

    goto :goto_1

    .line 367
    :cond_3
    invoke-direct {p0}, Lcom/appaac/haptic/AACHapticUtils;->beforeStopPattern()V

    .line 369
    :try_start_0
    const-class v2, Landroid/os/VibrationEffect;

    const-string v4, "createExtPrebaked"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v0

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v4, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    .line 370
    invoke-virtual {p1}, Lcom/appaac/haptic/HapticEffect$Effect;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/VibrationEffect;

    .line 371
    iget-object p2, p0, Lcom/appaac/haptic/AACHapticUtils;->vibrator:Landroid/os/Vibrator;

    invoke-virtual {p2, p1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 378
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 376
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 373
    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    const-string p1, "The system doesn\'t integrate richtap software"

    .line 374
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    int-to-long p1, v3

    .line 380
    invoke-direct {p0, p1, p2}, Lcom/appaac/haptic/AACHapticUtils;->stopLoopPattern(J)V

    :goto_1
    return-void

    .line 356
    :cond_4
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Strength must be between 1 and 100 inclusive (strength="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public quit()V
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/appaac/haptic/AACHapticUtils;->mLoopPatternThread:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 236
    iput-object v1, p0, Lcom/appaac/haptic/AACHapticUtils;->mVibrationHandler:Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;

    .line 237
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 239
    :cond_0
    invoke-direct {p0}, Lcom/appaac/haptic/AACHapticUtils;->freeSharedMemory()V

    .line 240
    iput-object v1, p0, Lcom/appaac/haptic/AACHapticUtils;->mLoopPatternThread:Landroid/os/HandlerThread;

    .line 241
    sput-object v1, Lcom/appaac/haptic/AACHapticUtils;->sInstance:Lcom/appaac/haptic/AACHapticUtils;

    return-void
.end method

.method public supportRichTap()Z
    .locals 13

    .line 1169
    const-class v0, [Ljava/lang/String;

    const-class v1, [J

    const-string v2, "createWaveform"

    const-class v3, Ljava/lang/String;

    const-class v4, [I

    const/4 v5, 0x1

    const/4 v6, 0x0

    :try_start_0
    const-string v7, "android.os.VibrationEffect"

    .line 1171
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const-string v8, "createOneShot"

    const/4 v9, 0x2

    new-array v10, v9, [Ljava/lang/Class;

    .line 1172
    sget-object v11, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v6

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v5

    invoke-virtual {v7, v8, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v8, v9, [Ljava/lang/Class;

    aput-object v1, v8, v6

    .line 1173
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v5

    invoke-virtual {v7, v2, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v8, 0x3

    new-array v10, v8, [Ljava/lang/Class;

    aput-object v1, v10, v6

    aput-object v4, v10, v5

    .line 1174
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v10, v9

    invoke-virtual {v7, v2, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v1, "createExtPrebaked"

    new-array v2, v9, [Ljava/lang/Class;

    aput-object v3, v2, v6

    .line 1175
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v2, v5

    invoke-virtual {v7, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v1, "createEnvelope"

    const/4 v2, 0x5

    new-array v10, v2, [Ljava/lang/Class;

    aput-object v4, v10, v6

    aput-object v4, v10, v5

    aput-object v4, v10, v9

    .line 1176
    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v8

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v12, 0x4

    aput-object v11, v10, v12

    invoke-virtual {v7, v1, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1177
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    iget p0, p0, Lcom/appaac/haptic/AACHapticUtils;->ANDROID_VERSIONCODE_Q:I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v10, "createStream"

    if-lt v1, p0, :cond_0

    :try_start_1
    new-array p0, v8, [Ljava/lang/Class;

    .line 1178
    const-class v1, Landroid/os/ParcelFileDescriptor;

    aput-object v1, p0, v6

    aput-object v3, p0, v5

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, p0, v9

    invoke-virtual {v7, v10, p0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    goto :goto_0

    :cond_0
    new-array p0, v8, [Ljava/lang/Class;

    .line 1180
    const-class v1, Ljava/io/FileDescriptor;

    aput-object v1, p0, v6

    aput-object v3, p0, v5

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, p0, v9

    invoke-virtual {v7, v10, p0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    :goto_0
    const-string p0, "createPattern"

    const/16 v1, 0x8

    new-array v3, v1, [Ljava/lang/Class;

    aput-object v4, v3, v6

    aput-object v4, v3, v5

    aput-object v4, v3, v9

    aput-object v0, v3, v8

    aput-object v4, v3, v12

    aput-object v4, v3, v2

    .line 1182
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x6

    aput-object v10, v3, v11

    const/4 v10, 0x7

    aput-object v4, v3, v10

    invoke-virtual {v7, p0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string p0, "createLoopPattern"

    new-array v1, v1, [Ljava/lang/Class;

    aput-object v4, v1, v6

    aput-object v4, v1, v5

    aput-object v4, v1, v9

    aput-object v0, v1, v8

    aput-object v4, v1, v12

    aput-object v4, v1, v2

    .line 1183
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v0, v1, v11

    aput-object v4, v1, v10

    invoke-virtual {v7, p0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string p0, "createLoopParameter"

    new-array v0, v5, [Ljava/lang/Class;

    .line 1184
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v6

    invoke-virtual {v7, p0, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    const-string p0, "AACHapticUtils"

    const-string v0, "The system doesn\'t integrate richtap software"

    .line 1190
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception p0

    .line 1186
    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :goto_1
    move v5, v6

    :goto_2
    return v5
.end method

.method public useNonRichTap(Z)V
    .locals 3

    .line 1202
    iget-boolean v0, p0, Lcom/appaac/haptic/AACHapticUtils;->debug:Z

    const-string v1, "AACHapticUtils"

    if-eqz v0, :cond_0

    .line 1203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "useNonRichTap start nonRichTap = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/appaac/haptic/AACHapticUtils;->mRichTapEnable:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    :cond_0
    iget-object v0, p0, Lcom/appaac/haptic/AACHapticUtils;->vibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/appaac/haptic/AACHapticUtils;->mVibrationHandler:Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;

    if-nez v0, :cond_1

    goto :goto_1

    .line 1211
    :cond_1
    invoke-virtual {p0}, Lcom/appaac/haptic/AACHapticUtils;->supportRichTap()Z

    move-result v0

    if-eqz v0, :cond_2

    xor-int/lit8 p1, p1, 0x1

    .line 1212
    iput-boolean p1, p0, Lcom/appaac/haptic/AACHapticUtils;->mRichTapEnable:Z

    goto :goto_0

    :cond_2
    const-string/jumbo p1, "the system doesn\'t integrate richtap software"

    .line 1214
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 1215
    iput-boolean p1, p0, Lcom/appaac/haptic/AACHapticUtils;->mRichTapEnable:Z

    .line 1218
    :goto_0
    iget-boolean p1, p0, Lcom/appaac/haptic/AACHapticUtils;->debug:Z

    if-eqz p1, :cond_3

    .line 1219
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "useNonRichTap end nonRichTap = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/appaac/haptic/AACHapticUtils;->mRichTapEnable:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    :cond_3
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 1222
    iget-boolean v0, p0, Lcom/appaac/haptic/AACHapticUtils;->mRichTapEnable:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "non-richtap"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1223
    iget-object p0, p0, Lcom/appaac/haptic/AACHapticUtils;->mVibrationHandler:Lcom/appaac/haptic/AACHapticUtils$VibrationHandler;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 1224
    invoke-virtual {p0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1225
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_4
    :goto_1
    const-string p0, "Please call the init interface"

    .line 1207
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
