.class public Lcom/android/systemui/pip/tv/PipManager;
.super Ljava/lang/Object;
.source "PipManager.java"

# interfaces
.implements Lcom/android/systemui/pip/BasePipManager;
.implements Lcom/android/systemui/pip/PipTaskOrganizer$PipTransitionCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/pip/tv/PipManager$MediaListener;,
        Lcom/android/systemui/pip/tv/PipManager$Listener;,
        Lcom/android/systemui/pip/tv/PipManager$PipManagerPinnedStackListener;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field private static sSettingsPackageAndClassNamePairList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final mActiveMediaSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

.field private mActivityTaskManager:Landroid/app/IActivityTaskManager;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mClosePipRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mCurrentPipBounds:Landroid/graphics/Rect;

.field private mCustomActions:Landroid/content/pm/ParceledListSlice;

.field private mDefaultPipBounds:Landroid/graphics/Rect;

.field private final mHandler:Landroid/os/Handler;

.field private mImeHeightAdjustment:I

.field private mImeVisible:Z

.field private mInitialized:Z

.field private mLastOrientation:I

.field private mLastPackagesResourceGranted:[Ljava/lang/String;

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/pip/tv/PipManager$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/pip/tv/PipManager$MediaListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaSessionManager:Landroid/media/session/MediaSessionManager;

.field private mMenuModePipBounds:Landroid/graphics/Rect;

.field private mPinnedStackId:I

.field private final mPinnedStackListener:Lcom/android/systemui/shared/system/PinnedStackListenerForwarder$PinnedStackListener;

.field private mPipBounds:Landroid/graphics/Rect;

.field private mPipBoundsHandler:Lcom/android/systemui/pip/PipBoundsHandler;

.field private mPipComponentName:Landroid/content/ComponentName;

.field private mPipMediaController:Landroid/media/session/MediaController;

.field private mPipNotification:Lcom/android/systemui/pip/tv/PipNotification;

.field private mPipTaskId:I

.field private mPipTaskOrganizer:Lcom/android/systemui/pip/PipTaskOrganizer;

.field private mResizeAnimationDuration:I

.field private final mResizePinnedStackRunnable:Ljava/lang/Runnable;

.field private mResumeResizePinnedStackRunnableState:I

.field private mSettingsPipBounds:Landroid/graphics/Rect;

.field private mState:I

.field private mSuspendPipResizingReason:I

.field private mTaskStackListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

.field private final mTmpDisplayInfo:Landroid/view/DisplayInfo;

.field private final mTmpInsetBounds:Landroid/graphics/Rect;

.field private final mTmpNormalBounds:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "PipManager"

    const/4 v1, 0x3

    .line 74
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/pip/tv/PipManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/pip/PipBoundsHandler;Lcom/android/systemui/pip/PipTaskOrganizer;Lcom/android/systemui/pip/PipSurfaceTransactionHelper;Lcom/android/systemui/stackdivider/Divider;)V
    .locals 7

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p5, 0x0

    .line 120
    iput p5, p0, Lcom/android/systemui/pip/tv/PipManager;->mState:I

    .line 121
    iput p5, p0, Lcom/android/systemui/pip/tv/PipManager;->mResumeResizePinnedStackRunnableState:I

    .line 122
    new-instance p6, Landroid/os/Handler;

    invoke-direct {p6}, Landroid/os/Handler;-><init>()V

    iput-object p6, p0, Lcom/android/systemui/pip/tv/PipManager;->mHandler:Landroid/os/Handler;

    .line 123
    new-instance p6, Ljava/util/ArrayList;

    invoke-direct {p6}, Ljava/util/ArrayList;-><init>()V

    iput-object p6, p0, Lcom/android/systemui/pip/tv/PipManager;->mListeners:Ljava/util/List;

    .line 124
    new-instance p6, Ljava/util/ArrayList;

    invoke-direct {p6}, Ljava/util/ArrayList;-><init>()V

    iput-object p6, p0, Lcom/android/systemui/pip/tv/PipManager;->mMediaListeners:Ljava/util/List;

    .line 127
    new-instance p6, Landroid/graphics/Rect;

    invoke-direct {p6}, Landroid/graphics/Rect;-><init>()V

    iput-object p6, p0, Lcom/android/systemui/pip/tv/PipManager;->mDefaultPipBounds:Landroid/graphics/Rect;

    .line 130
    iput p5, p0, Lcom/android/systemui/pip/tv/PipManager;->mLastOrientation:I

    const/4 p6, -0x1

    .line 132
    iput p6, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipTaskId:I

    .line 133
    iput p6, p0, Lcom/android/systemui/pip/tv/PipManager;->mPinnedStackId:I

    .line 142
    new-instance p6, Landroid/view/DisplayInfo;

    invoke-direct {p6}, Landroid/view/DisplayInfo;-><init>()V

    iput-object p6, p0, Lcom/android/systemui/pip/tv/PipManager;->mTmpDisplayInfo:Landroid/view/DisplayInfo;

    .line 143
    new-instance p6, Landroid/graphics/Rect;

    invoke-direct {p6}, Landroid/graphics/Rect;-><init>()V

    iput-object p6, p0, Lcom/android/systemui/pip/tv/PipManager;->mTmpInsetBounds:Landroid/graphics/Rect;

    .line 144
    new-instance p6, Landroid/graphics/Rect;

    invoke-direct {p6}, Landroid/graphics/Rect;-><init>()V

    iput-object p6, p0, Lcom/android/systemui/pip/tv/PipManager;->mTmpNormalBounds:Landroid/graphics/Rect;

    .line 150
    new-instance p6, Lcom/android/systemui/pip/tv/PipManager$PipManagerPinnedStackListener;

    const/4 v0, 0x0

    invoke-direct {p6, p0, v0}, Lcom/android/systemui/pip/tv/PipManager$PipManagerPinnedStackListener;-><init>(Lcom/android/systemui/pip/tv/PipManager;Lcom/android/systemui/pip/tv/PipManager$1;)V

    iput-object p6, p0, Lcom/android/systemui/pip/tv/PipManager;->mPinnedStackListener:Lcom/android/systemui/shared/system/PinnedStackListenerForwarder$PinnedStackListener;

    .line 152
    new-instance p6, Lcom/android/systemui/pip/tv/PipManager$1;

    invoke-direct {p6, p0}, Lcom/android/systemui/pip/tv/PipManager$1;-><init>(Lcom/android/systemui/pip/tv/PipManager;)V

    iput-object p6, p0, Lcom/android/systemui/pip/tv/PipManager;->mResizePinnedStackRunnable:Ljava/lang/Runnable;

    .line 158
    new-instance p6, Lcom/android/systemui/pip/tv/PipManager$2;

    invoke-direct {p6, p0}, Lcom/android/systemui/pip/tv/PipManager$2;-><init>(Lcom/android/systemui/pip/tv/PipManager;)V

    iput-object p6, p0, Lcom/android/systemui/pip/tv/PipManager;->mClosePipRunnable:Ljava/lang/Runnable;

    .line 165
    new-instance p6, Lcom/android/systemui/pip/tv/PipManager$3;

    invoke-direct {p6, p0}, Lcom/android/systemui/pip/tv/PipManager$3;-><init>(Lcom/android/systemui/pip/tv/PipManager;)V

    iput-object p6, p0, Lcom/android/systemui/pip/tv/PipManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 181
    new-instance p6, Lcom/android/systemui/pip/tv/PipManager$4;

    invoke-direct {p6, p0}, Lcom/android/systemui/pip/tv/PipManager$4;-><init>(Lcom/android/systemui/pip/tv/PipManager;)V

    iput-object p6, p0, Lcom/android/systemui/pip/tv/PipManager;->mActiveMediaSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    .line 654
    new-instance p6, Lcom/android/systemui/pip/tv/PipManager$5;

    invoke-direct {p6, p0}, Lcom/android/systemui/pip/tv/PipManager$5;-><init>(Lcom/android/systemui/pip/tv/PipManager;)V

    iput-object p6, p0, Lcom/android/systemui/pip/tv/PipManager;->mTaskStackListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    .line 239
    iget-boolean p6, p0, Lcom/android/systemui/pip/tv/PipManager;->mInitialized:Z

    if-eqz p6, :cond_0

    return-void

    :cond_0
    const/4 p6, 0x1

    .line 243
    iput-boolean p6, p0, Lcom/android/systemui/pip/tv/PipManager;->mInitialized:Z

    .line 244
    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mContext:Landroid/content/Context;

    .line 245
    iput-object p3, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipBoundsHandler:Lcom/android/systemui/pip/PipBoundsHandler;

    .line 248
    new-instance p3, Landroid/view/DisplayInfo;

    invoke-direct {p3}, Landroid/view/DisplayInfo;-><init>()V

    .line 249
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 250
    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipBoundsHandler:Lcom/android/systemui/pip/PipBoundsHandler;

    invoke-virtual {v1, p3}, Lcom/android/systemui/pip/PipBoundsHandler;->onDisplayInfoChanged(Landroid/view/DisplayInfo;)V

    .line 252
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcom/android/systemui/R$integer;->config_pipResizeAnimationDuration:I

    .line 253
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    iput p3, p0, Lcom/android/systemui/pip/tv/PipManager;->mResizeAnimationDuration:I

    .line 254
    iput-object p4, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipTaskOrganizer:Lcom/android/systemui/pip/PipTaskOrganizer;

    .line 255
    invoke-virtual {p4, p0}, Lcom/android/systemui/pip/PipTaskOrganizer;->registerPipTransitionCallback(Lcom/android/systemui/pip/PipTaskOrganizer$PipTransitionCallback;)V

    .line 256
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/pip/tv/PipManager;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    .line 257
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object p3

    iget-object p4, p0, Lcom/android/systemui/pip/tv/PipManager;->mTaskStackListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {p3, p4}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    .line 258
    new-instance p3, Landroid/content/IntentFilter;

    invoke-direct {p3}, Landroid/content/IntentFilter;-><init>()V

    const-string p4, "android.intent.action.MEDIA_RESOURCE_GRANTED"

    .line 259
    invoke-virtual {p3, p4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 260
    iget-object p4, p0, Lcom/android/systemui/pip/tv/PipManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p2, p4, p3, v0, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)V

    .line 263
    sget-object p3, Lcom/android/systemui/pip/tv/PipManager;->sSettingsPackageAndClassNamePairList:Ljava/util/List;

    const/4 p4, 0x2

    const-string v1, "PipManager"

    if-nez p3, :cond_6

    .line 264
    iget-object p3, p0, Lcom/android/systemui/pip/tv/PipManager;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v2, Lcom/android/systemui/R$array;->tv_pip_settings_class_name:I

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p3

    .line 266
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/android/systemui/pip/tv/PipManager;->sSettingsPackageAndClassNamePairList:Ljava/util/List;

    if-eqz p3, :cond_6

    move v2, p5

    .line 268
    :goto_0
    array-length v3, p3

    if-ge v2, v3, :cond_6

    .line 270
    aget-object v3, p3, v2

    const-string v4, "/"

    .line 271
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 272
    array-length v4, v3

    if-eq v4, p6, :cond_4

    if-eq v4, p4, :cond_1

    goto :goto_2

    .line 277
    :cond_1
    aget-object v4, v3, p6

    if-eqz v4, :cond_3

    .line 278
    aget-object v4, v3, p5

    .line 279
    aget-object v5, v3, p6

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 280
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v3, p5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v3, p6

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 281
    :cond_2
    aget-object v3, v3, p6

    .line 278
    :goto_1
    invoke-static {v4, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    goto :goto_3

    :cond_3
    :goto_2
    move-object v3, v0

    goto :goto_3

    .line 274
    :cond_4
    aget-object v3, v3, p5

    invoke-static {v3, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    :goto_3
    if-eqz v3, :cond_5

    .line 286
    sget-object v4, Lcom/android/systemui/pip/tv/PipManager;->sSettingsPackageAndClassNamePairList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 288
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring malformed settings name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p3, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 295
    :cond_6
    iget-object p3, p0, Lcom/android/systemui/pip/tv/PipManager;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    .line 296
    iget p5, p3, Landroid/content/res/Configuration;->orientation:I

    iput p5, p0, Lcom/android/systemui/pip/tv/PipManager;->mLastOrientation:I

    .line 297
    invoke-direct {p0, p3}, Lcom/android/systemui/pip/tv/PipManager;->loadConfigurationsAndApply(Landroid/content/res/Configuration;)V

    .line 299
    iget-object p3, p0, Lcom/android/systemui/pip/tv/PipManager;->mContext:Landroid/content/Context;

    const-string p5, "media_session"

    .line 300
    invoke-virtual {p3, p5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/media/session/MediaSessionManager;

    iput-object p3, p0, Lcom/android/systemui/pip/tv/PipManager;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 303
    :try_start_0
    invoke-static {}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/WindowManagerWrapper;

    move-result-object p3

    iget-object p5, p0, Lcom/android/systemui/pip/tv/PipManager;->mPinnedStackListener:Lcom/android/systemui/shared/system/PinnedStackListenerForwarder$PinnedStackListener;

    invoke-virtual {p3, p5}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->addPinnedStackListener(Lcom/android/systemui/shared/system/PinnedStackListenerForwarder$PinnedStackListener;)V

    .line 304
    iget-object p3, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipTaskOrganizer:Lcom/android/systemui/pip/PipTaskOrganizer;

    invoke-virtual {p3, p4}, Landroid/window/TaskOrganizer;->registerOrganizer(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p3

    const-string p4, "Failed to register pinned stack listener"

    .line 306
    invoke-static {v1, p4, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 309
    :goto_5
    new-instance p3, Lcom/android/systemui/pip/tv/PipNotification;

    invoke-direct {p3, p1, p2, p0}, Lcom/android/systemui/pip/tv/PipNotification;-><init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/pip/tv/PipManager;)V

    iput-object p3, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipNotification:Lcom/android/systemui/pip/tv/PipNotification;

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/pip/tv/PipManager;)I
    .locals 0

    .line 72
    iget p0, p0, Lcom/android/systemui/pip/tv/PipManager;->mResumeResizePinnedStackRunnableState:I

    return p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/pip/tv/PipManager;)Ljava/util/List;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipManager;->mListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/pip/tv/PipManager;)Landroid/graphics/Rect;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipManager;->mTmpInsetBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/pip/tv/PipManager;)Landroid/graphics/Rect;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipManager;->mTmpNormalBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/pip/tv/PipManager;)Landroid/view/DisplayInfo;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipManager;->mTmpDisplayInfo:Landroid/view/DisplayInfo;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/pip/tv/PipManager;)Lcom/android/systemui/pip/PipBoundsHandler;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipBoundsHandler:Lcom/android/systemui/pip/PipBoundsHandler;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/systemui/pip/tv/PipManager;)Landroid/graphics/Rect;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipManager;->mDefaultPipBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/systemui/pip/tv/PipManager;)I
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipManager;->getState()I

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Lcom/android/systemui/pip/tv/PipManager;)Landroid/app/ActivityManager$StackInfo;
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipManager;->getPinnedStackInfo()Landroid/app/ActivityManager$StackInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/systemui/pip/tv/PipManager;Z)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/tv/PipManager;->closePipInternal(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/systemui/pip/tv/PipManager;)I
    .locals 0

    .line 72
    iget p0, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipTaskId:I

    return p0
.end method

.method static synthetic access$1902(Lcom/android/systemui/pip/tv/PipManager;I)I
    .locals 0

    .line 72
    iput p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipTaskId:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/pip/tv/PipManager;[Ljava/lang/String;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/tv/PipManager;->handleMediaResourceGranted([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/systemui/pip/tv/PipManager;)Z
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipManager;->isSettingsShown()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2100(Lcom/android/systemui/pip/tv/PipManager;)Landroid/graphics/Rect;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipManager;->mSettingsPipBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$2202(Lcom/android/systemui/pip/tv/PipManager;I)I
    .locals 0

    .line 72
    iput p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mPinnedStackId:I

    return p1
.end method

.method static synthetic access$2302(Lcom/android/systemui/pip/tv/PipManager;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipComponentName:Landroid/content/ComponentName;

    return-object p1
.end method

.method static synthetic access$2402(Lcom/android/systemui/pip/tv/PipManager;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mCurrentPipBounds:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/systemui/pip/tv/PipManager;)Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipManager;->mActiveMediaSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/android/systemui/pip/tv/PipManager;)Landroid/media/session/MediaSessionManager;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipManager;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/android/systemui/pip/tv/PipManager;Z)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/tv/PipManager;->updatePipVisibility(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/pip/tv/PipManager;Ljava/util/List;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/tv/PipManager;->updateMediaController(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/pip/tv/PipManager;)I
    .locals 0

    .line 72
    iget p0, p0, Lcom/android/systemui/pip/tv/PipManager;->mState:I

    return p0
.end method

.method static synthetic access$402(Lcom/android/systemui/pip/tv/PipManager;I)I
    .locals 0

    .line 72
    iput p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mState:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/pip/tv/PipManager;)Z
    .locals 0

    .line 72
    iget-boolean p0, p0, Lcom/android/systemui/pip/tv/PipManager;->mImeVisible:Z

    return p0
.end method

.method static synthetic access$502(Lcom/android/systemui/pip/tv/PipManager;Z)Z
    .locals 0

    .line 72
    iput-boolean p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mImeVisible:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/pip/tv/PipManager;)Landroid/graphics/Rect;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$602(Lcom/android/systemui/pip/tv/PipManager;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipBounds:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/systemui/pip/tv/PipManager;)I
    .locals 0

    .line 72
    iget p0, p0, Lcom/android/systemui/pip/tv/PipManager;->mImeHeightAdjustment:I

    return p0
.end method

.method static synthetic access$702(Lcom/android/systemui/pip/tv/PipManager;I)I
    .locals 0

    .line 72
    iput p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mImeHeightAdjustment:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/systemui/pip/tv/PipManager;)Landroid/os/Handler;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/pip/tv/PipManager;)Landroid/content/pm/ParceledListSlice;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipManager;->mCustomActions:Landroid/content/pm/ParceledListSlice;

    return-object p0
.end method

.method static synthetic access$902(Lcom/android/systemui/pip/tv/PipManager;Landroid/content/pm/ParceledListSlice;)Landroid/content/pm/ParceledListSlice;
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mCustomActions:Landroid/content/pm/ParceledListSlice;

    return-object p1
.end method

.method private closePipInternal(Z)V
    .locals 5

    .line 362
    sget-boolean v0, Lcom/android/systemui/pip/tv/PipManager;->DEBUG:Z

    const-string v1, "PipManager"

    if-eqz v0, :cond_0

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closePipInternal() removePipStack="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", current state="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipManager;->getStateDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 363
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 368
    iput v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mState:I

    const/4 v2, -0x1

    .line 369
    iput v2, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipTaskId:I

    const/4 v3, 0x0

    .line 370
    iput-object v3, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipMediaController:Landroid/media/session/MediaController;

    .line 371
    iget-object v3, p0, Lcom/android/systemui/pip/tv/PipManager;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    iget-object v4, p0, Lcom/android/systemui/pip/tv/PipManager;->mActiveMediaSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    invoke-virtual {v3, v4}, Landroid/media/session/MediaSessionManager;->removeOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;)V

    if-eqz p1, :cond_1

    .line 374
    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iget v3, p0, Lcom/android/systemui/pip/tv/PipManager;->mPinnedStackId:I

    invoke-interface {p1, v3}, Landroid/app/IActivityTaskManager;->removeStack(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    :goto_0
    iput v2, p0, Lcom/android/systemui/pip/tv/PipManager;->mPinnedStackId:I

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    const-string v3, "removeStack failed"

    .line 376
    invoke-static {v1, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 378
    :goto_1
    iput v2, p0, Lcom/android/systemui/pip/tv/PipManager;->mPinnedStackId:I

    .line 379
    throw p1

    .line 381
    :cond_1
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_3
    if-ltz p1, :cond_2

    .line 382
    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipManager;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/pip/tv/PipManager$Listener;

    invoke-interface {v1}, Lcom/android/systemui/pip/tv/PipManager$Listener;->onPipActivityClosed()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_3

    .line 384
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipManager;->mClosePipRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 385
    invoke-direct {p0, v0}, Lcom/android/systemui/pip/tv/PipManager;->updatePipVisibility(Z)V

    return-void
.end method

.method private getPinnedStackInfo()Landroid/app/ActivityManager$StackInfo;
    .locals 2

    .line 540
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p0

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/app/IActivityTaskManager;->getStackInfo(II)Landroid/app/ActivityManager$StackInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "PipManager"

    const-string v1, "getStackInfo failed"

    .line 543
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private getState()I
    .locals 1

    .line 479
    iget v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mSuspendPipResizingReason:I

    if-eqz v0, :cond_0

    .line 480
    iget p0, p0, Lcom/android/systemui/pip/tv/PipManager;->mResumeResizePinnedStackRunnableState:I

    return p0

    .line 482
    :cond_0
    iget p0, p0, Lcom/android/systemui/pip/tv/PipManager;->mState:I

    return p0
.end method

.method private getStateDescription()Ljava/lang/String;
    .locals 2

    .line 789
    iget v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mSuspendPipResizingReason:I

    if-nez v0, :cond_0

    .line 790
    iget p0, p0, Lcom/android/systemui/pip/tv/PipManager;->mState:I

    invoke-static {p0}, Lcom/android/systemui/pip/tv/PipManager;->stateToName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 792
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/systemui/pip/tv/PipManager;->mResumeResizePinnedStackRunnableState:I

    invoke-static {v1}, Lcom/android/systemui/pip/tv/PipManager;->stateToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (while "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/pip/tv/PipManager;->mState:I

    invoke-static {p0}, Lcom/android/systemui/pip/tv/PipManager;->stateToName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is suspended)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private handleMediaResourceGranted([Ljava/lang/String;)V
    .locals 9

    .line 549
    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipManager;->getState()I

    move-result v0

    if-nez v0, :cond_0

    .line 550
    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mLastPackagesResourceGranted:[Ljava/lang/String;

    goto :goto_3

    .line 553
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mLastPackagesResourceGranted:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 554
    array-length v2, v0

    move v3, v1

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v5, v0, v3

    .line 555
    array-length v6, p1

    move v7, v1

    :goto_1
    if-ge v7, v6, :cond_2

    aget-object v8, p1, v7

    .line 556
    invoke-static {v8, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    move v1, v4

    .line 563
    :cond_4
    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mLastPackagesResourceGranted:[Ljava/lang/String;

    if-nez v1, :cond_5

    .line 565
    invoke-virtual {p0}, Lcom/android/systemui/pip/tv/PipManager;->closePip()V

    :cond_5
    :goto_3
    return-void
.end method

.method private isSettingsShown()Z
    .locals 6

    const/4 v0, 0x0

    .line 633
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipManager;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Landroid/app/IActivityTaskManager;->getTasks(I)Ljava/util/List;

    move-result-object p0

    .line 634
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    return v0

    .line 641
    :cond_0
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 642
    sget-object v2, Lcom/android/systemui/pip/tv/PipManager;->sSettingsPackageAndClassNamePairList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 643
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 644
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 645
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 646
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_2
    return v1

    :cond_3
    return v0

    :catch_0
    move-exception p0

    const-string v1, "PipManager"

    const-string v2, "Failed to detect top activity"

    .line 638
    invoke-static {v1, v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method static synthetic lambda$updatePipVisibility$0(Z)V
    .locals 1

    .line 784
    invoke-static {}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/WindowManagerWrapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->setPipVisibility(Z)V

    return-void
.end method

.method private loadConfigurationsAndApply(Landroid/content/res/Configuration;)V
    .locals 1

    .line 313
    iget v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mLastOrientation:I

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, p1, :cond_0

    .line 316
    iput p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mLastOrientation:I

    return-void

    .line 320
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 321
    sget v0, Lcom/android/systemui/R$string;->pip_settings_bounds:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mSettingsPipBounds:Landroid/graphics/Rect;

    .line 323
    sget v0, Lcom/android/systemui/R$string;->pip_menu_bounds:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mMenuModePipBounds:Landroid/graphics/Rect;

    .line 329
    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipManager;->isSettingsShown()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mSettingsPipBounds:Landroid/graphics/Rect;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mDefaultPipBounds:Landroid/graphics/Rect;

    :goto_0
    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipBounds:Landroid/graphics/Rect;

    .line 330
    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipManager;->getPinnedStackInfo()Landroid/app/ActivityManager$StackInfo;

    move-result-object p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/pip/tv/PipManager;->resizePinnedStack(I)V

    return-void
.end method

.method private onPipTransitionFinishedOrCanceled()V
    .locals 2

    .line 744
    sget-boolean v0, Lcom/android/systemui/pip/tv/PipManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "PipManager"

    const-string v1, "onPipTransitionFinishedOrCanceled()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipManager;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 747
    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipManager;->showPipMenu()V

    :cond_1
    return-void
.end method

.method private showPipMenu()V
    .locals 3

    .line 490
    sget-boolean v0, Lcom/android/systemui/pip/tv/PipManager;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showPipMenu(), current state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipManager;->getStateDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PipManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x2

    .line 492
    iput v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mState:I

    .line 493
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 494
    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipManager;->mListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/pip/tv/PipManager$Listener;

    invoke-interface {v1}, Lcom/android/systemui/pip/tv/PipManager$Listener;->onShowPipMenu()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 496
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/systemui/pip/tv/PipMenuActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 497
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 498
    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipManager;->mCustomActions:Landroid/content/pm/ParceledListSlice;

    const-string v2, "custom_actions"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 499
    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static stateToName(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 808
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "PIP_MENU"

    return-object p0

    :cond_1
    const-string p0, "PIP"

    return-object p0

    :cond_2
    const-string p0, "NO_PIP"

    return-object p0
.end method

.method private updateMediaController(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaController;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 572
    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipManager;->getState()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipComponentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    .line 573
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 574
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/session/MediaController;

    .line 577
    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 583
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipMediaController:Landroid/media/session/MediaController;

    if-eq p1, v1, :cond_4

    .line 584
    iput-object v1, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipMediaController:Landroid/media/session/MediaController;

    .line 585
    iget-object p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mMediaListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_2
    if-ltz p1, :cond_2

    .line 586
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mMediaListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/pip/tv/PipManager$MediaListener;

    invoke-interface {v0}, Lcom/android/systemui/pip/tv/PipManager$MediaListener;->onMediaControllerChanged()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    .line 588
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipMediaController:Landroid/media/session/MediaController;

    if-nez p1, :cond_3

    .line 589
    iget-object p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipManager;->mClosePipRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 592
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipManager;->mClosePipRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_4
    :goto_3
    return-void
.end method

.method private updatePipVisibility(Z)V
    .locals 1

    .line 783
    const-class p0, Lcom/android/systemui/UiOffloadThread;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/UiOffloadThread;

    new-instance v0, Lcom/android/systemui/pip/tv/-$$Lambda$PipManager$B3cwmVrFFG3e6pUajgQn8FpuCeM;

    invoke-direct {v0, p1}, Lcom/android/systemui/pip/tv/-$$Lambda$PipManager$B3cwmVrFFG3e6pUajgQn8FpuCeM;-><init>(Z)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/UiOffloadThread;->execute(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/systemui/pip/tv/PipManager$Listener;)V
    .locals 0

    .line 506
    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipManager;->mListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addMediaListener(Lcom/android/systemui/pip/tv/PipManager$MediaListener;)V
    .locals 0

    .line 520
    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipManager;->mMediaListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public closePip()V
    .locals 2

    .line 356
    sget-boolean v0, Lcom/android/systemui/pip/tv/PipManager;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "closePip(), current state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipManager;->getStateDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PipManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    .line 358
    invoke-direct {p0, v0}, Lcom/android/systemui/pip/tv/PipManager;->closePipInternal(Z)V

    return-void
.end method

.method getMediaController()Landroid/media/session/MediaController;
    .locals 0

    .line 601
    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipMediaController:Landroid/media/session/MediaController;

    return-object p0
.end method

.method getPlaybackState()I
    .locals 11

    .line 610
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipMediaController:Landroid/media/session/MediaController;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 613
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v2, :cond_2

    const/16 v2, 0x8

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/4 v2, 0x5

    if-eq v0, v2, :cond_2

    const/16 v2, 0x9

    if-eq v0, v2, :cond_2

    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v4

    .line 621
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipMediaController:Landroid/media/session/MediaController;

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    if-nez v0, :cond_3

    const-wide/16 v9, 0x4

    and-long/2addr v9, v5

    cmp-long p0, v9, v7

    if-eqz p0, :cond_3

    return v4

    :cond_3
    if-eqz v0, :cond_4

    const-wide/16 v9, 0x2

    and-long v4, v5, v9

    cmp-long p0, v4, v7

    if-eqz p0, :cond_4

    return v3

    :cond_4
    :goto_2
    return v1
.end method

.method public isPipShown()Z
    .locals 0

    .line 534
    iget p0, p0, Lcom/android/systemui/pip/tv/PipManager;->mState:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method movePipToFullscreen()V
    .locals 2

    .line 392
    sget-boolean v0, Lcom/android/systemui/pip/tv/PipManager;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "movePipToFullscreen(), current state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipManager;->getStateDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PipManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, -0x1

    .line 394
    iput v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipTaskId:I

    .line 395
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 396
    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipManager;->mListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/pip/tv/PipManager$Listener;

    invoke-interface {v1}, Lcom/android/systemui/pip/tv/PipManager$Listener;->onMoveToFullscreen()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 398
    invoke-virtual {p0, v0}, Lcom/android/systemui/pip/tv/PipManager;->resizePinnedStack(I)V

    .line 399
    invoke-direct {p0, v0}, Lcom/android/systemui/pip/tv/PipManager;->updatePipVisibility(Z)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 337
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/tv/PipManager;->loadConfigurationsAndApply(Landroid/content/res/Configuration;)V

    .line 338
    iget-object p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipNotification:Lcom/android/systemui/pip/tv/PipNotification;

    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/android/systemui/pip/tv/PipNotification;->onConfigurationChanged(Landroid/content/Context;)V

    return-void
.end method

.method public onPipTransitionCanceled(Landroid/content/ComponentName;I)V
    .locals 0

    .line 740
    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipManager;->onPipTransitionFinishedOrCanceled()V

    return-void
.end method

.method public onPipTransitionFinished(Landroid/content/ComponentName;I)V
    .locals 0

    .line 735
    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipManager;->onPipTransitionFinishedOrCanceled()V

    return-void
.end method

.method public onPipTransitionStarted(Landroid/content/ComponentName;I)V
    .locals 0

    return-void
.end method

.method public removeListener(Lcom/android/systemui/pip/tv/PipManager$Listener;)V
    .locals 0

    .line 513
    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipManager;->mListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeMediaListener(Lcom/android/systemui/pip/tv/PipManager$MediaListener;)V
    .locals 0

    .line 527
    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipManager;->mMediaListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method resizePinnedStack(I)V
    .locals 4

    .line 432
    sget-boolean v0, Lcom/android/systemui/pip/tv/PipManager;->DEBUG:Z

    const-string v1, "PipManager"

    if-eqz v0, :cond_0

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resizePinnedStack() state="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/systemui/pip/tv/PipManager;->stateToName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", current state="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipManager;->getStateDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    .line 433
    invoke-static {v1, v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 437
    :cond_0
    iget v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mState:I

    const/4 v2, 0x1

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 438
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/pip/tv/PipManager;->mListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    :goto_1
    if-ltz v3, :cond_2

    .line 439
    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipManager;->mListeners:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/pip/tv/PipManager$Listener;

    invoke-interface {v2}, Lcom/android/systemui/pip/tv/PipManager$Listener;->onPipResizeAboutToStart()V

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 441
    :cond_2
    iget v2, p0, Lcom/android/systemui/pip/tv/PipManager;->mSuspendPipResizingReason:I

    if-eqz v2, :cond_4

    .line 442
    iput p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mResumeResizePinnedStackRunnableState:I

    .line 443
    sget-boolean p1, Lcom/android/systemui/pip/tv/PipManager;->DEBUG:Z

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "resizePinnedStack() deferring mSuspendPipResizingReason="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mSuspendPipResizingReason:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mResumeResizePinnedStackRunnableState="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/pip/tv/PipManager;->mResumeResizePinnedStackRunnableState:I

    .line 446
    invoke-static {p0}, Lcom/android/systemui/pip/tv/PipManager;->stateToName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 443
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    .line 449
    :cond_4
    iput p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mState:I

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    .line 464
    iget-object p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipBounds:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mCurrentPipBounds:Landroid/graphics/Rect;

    goto :goto_2

    .line 460
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mMenuModePipBounds:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mCurrentPipBounds:Landroid/graphics/Rect;

    goto :goto_2

    .line 452
    :cond_6
    iput-object v1, p0, Lcom/android/systemui/pip/tv/PipManager;->mCurrentPipBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_7

    return-void

    .line 467
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mCurrentPipBounds:Landroid/graphics/Rect;

    if-eqz p1, :cond_8

    .line 468
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipTaskOrganizer:Lcom/android/systemui/pip/PipTaskOrganizer;

    iget p0, p0, Lcom/android/systemui/pip/tv/PipManager;->mResizeAnimationDuration:I

    invoke-virtual {v0, p1, p0, v1}, Lcom/android/systemui/pip/PipTaskOrganizer;->scheduleAnimateResizePip(Landroid/graphics/Rect;ILjava/util/function/Consumer;)V

    goto :goto_3

    .line 471
    :cond_8
    iget-object p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipTaskOrganizer:Lcom/android/systemui/pip/PipTaskOrganizer;

    iget p0, p0, Lcom/android/systemui/pip/tv/PipManager;->mResizeAnimationDuration:I

    invoke-virtual {p1, p0}, Lcom/android/systemui/pip/PipTaskOrganizer;->exitPip(I)V

    :goto_3
    return-void
.end method

.method public resumePipResizing(I)V
    .locals 2

    .line 418
    iget v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mSuspendPipResizingReason:I

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    return-void

    .line 421
    :cond_0
    sget-boolean v0, Lcom/android/systemui/pip/tv/PipManager;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resumePipResizing() reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " callers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    .line 422
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PipManager"

    .line 421
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :cond_1
    iget v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mSuspendPipResizingReason:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mSuspendPipResizingReason:I

    .line 424
    iget-object p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipManager;->mResizePinnedStackRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showPictureInPictureMenu()V
    .locals 2

    .line 345
    sget-boolean v0, Lcom/android/systemui/pip/tv/PipManager;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showPictureInPictureMenu(), current state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipManager;->getStateDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PipManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipManager;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x2

    .line 348
    invoke-virtual {p0, v0}, Lcom/android/systemui/pip/tv/PipManager;->resizePinnedStack(I)V

    :cond_1
    return-void
.end method

.method public suspendPipResizing(I)V
    .locals 2

    .line 407
    sget-boolean v0, Lcom/android/systemui/pip/tv/PipManager;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "suspendPipResizing() reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " callers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    .line 408
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PipManager"

    .line 407
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_0
    iget v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mSuspendPipResizingReason:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mSuspendPipResizingReason:I

    return-void
.end method
