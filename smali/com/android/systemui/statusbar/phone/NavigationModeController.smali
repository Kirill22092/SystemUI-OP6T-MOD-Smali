.class public Lcom/android/systemui/statusbar/phone/NavigationModeController;
.super Ljava/lang/Object;
.source "NavigationModeController.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NavigationModeController"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentUserContext:Landroid/content/Context;

.field private final mDeviceProvisionedCallback:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOverlayManager:Landroid/content/om/IOverlayManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private final mUiBgExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Ljava/util/concurrent/Executor;)V
    .locals 6

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mListeners:Ljava/util/ArrayList;

    .line 73
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationModeController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NavigationModeController$1;-><init>(Lcom/android/systemui/statusbar/phone/NavigationModeController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mDeviceProvisionedCallback:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

    .line 90
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationModeController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NavigationModeController$2;-><init>(Lcom/android/systemui/statusbar/phone/NavigationModeController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 106
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mContext:Landroid/content/Context;

    .line 107
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mCurrentUserContext:Landroid/content/Context;

    const-string p1, "overlay"

    .line 109
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 108
    invoke-static {p1}, Landroid/content/om/IOverlayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/om/IOverlayManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mOverlayManager:Landroid/content/om/IOverlayManager;

    .line 110
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    .line 111
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mDeviceProvisionedCallback:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

    invoke-interface {p2, p1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 113
    new-instance v3, Landroid/content/IntentFilter;

    const-string p1, "android.intent.action.OVERLAY_CHANGED"

    invoke-direct {v3, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string p1, "package"

    .line 114
    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string p1, "android"

    const/4 p2, 0x0

    .line 115
    invoke-virtual {v3, p1, p2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 116
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 118
    new-instance p1, Lcom/android/systemui/statusbar/phone/NavigationModeController$3;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/NavigationModeController$3;-><init>(Lcom/android/systemui/statusbar/phone/NavigationModeController;)V

    invoke-interface {p3, p1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 128
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->updateCurrentInteractionMode(Z)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 57
    sget-object v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private dumpAssetPaths(Landroid/content/Context;)V
    .locals 5

    .line 246
    sget-object v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  contextUser="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mCurrentUserContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    sget-object p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->TAG:Ljava/lang/String;

    const-string v0, "  assetPaths="

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/AssetManager;->getApkAssets()[Landroid/content/res/ApkAssets;

    move-result-object p0

    .line 249
    array-length p1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    aget-object v1, p0, v0

    .line 250
    sget-object v2, Lcom/android/systemui/statusbar/phone/NavigationModeController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/res/ApkAssets;->getAssetPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getCurrentInteractionMode(Landroid/content/Context;)I
    .locals 3

    .line 169
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10e008e

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    .line 172
    sget-object v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentInteractionMode: mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " contextUser="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 172
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method private synthetic lambda$updateCurrentInteractionMode$0(I)V
    .locals 1

    .line 138
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mCurrentUserContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 139
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "navigation_mode"

    .line 138
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private switchToDefaultGestureNavOverlayIfNecessary()V
    .locals 0

    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;)I
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mCurrentUserContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->getCurrentInteractionMode(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string p1, "NavigationModeController:"

    .line 233
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 234
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mode="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mCurrentUserContext:Landroid/content/Context;

    invoke-direct {p0, p3}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->getCurrentInteractionMode(Landroid/content/Context;)I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :try_start_0
    const-string p1, ", "

    .line 237
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mOverlayManager:Landroid/content/om/IOverlayManager;

    invoke-interface {p3}, Landroid/content/om/IOverlayManager;->getDefaultOverlayPackages()[Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "failed_to_fetch"

    .line 241
    :goto_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  defaultOverlays="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 242
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mCurrentUserContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->dumpAssetPaths(Landroid/content/Context;)V

    return-void
.end method

.method public getCurrentUserContext()Landroid/content/Context;
    .locals 4

    .line 179
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getCurrentUserId()I

    move-result v0

    .line 181
    sget-object v1, Lcom/android/systemui/statusbar/phone/NavigationModeController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentUserContext: contextUser="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " currentUser="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 185
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mContext:Landroid/content/Context;

    return-object p0

    .line 188
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    .line 189
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 188
    invoke-virtual {v1, p0, v2, v0}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 192
    sget-object v0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->TAG:Ljava/lang/String;

    const-string v1, "Failed to create package context"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public synthetic lambda$updateCurrentInteractionMode$0$NavigationModeController(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->lambda$updateCurrentInteractionMode$0(I)V

    return-void
.end method

.method public removeListener(Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;)V
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public updateCurrentInteractionMode(Z)V
    .locals 4

    .line 132
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->getCurrentUserContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mCurrentUserContext:Landroid/content/Context;

    .line 133
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->getCurrentInteractionMode(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 135
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->switchToDefaultGestureNavOverlayIfNecessary()V

    .line 137
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationModeController$Az4iHIVUWwUXS_IGosEIyzFux8w;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationModeController$Az4iHIVUWwUXS_IGosEIyzFux8w;-><init>(Lcom/android/systemui/statusbar/phone/NavigationModeController;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 141
    sget-object v1, Lcom/android/systemui/statusbar/phone/NavigationModeController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCurrentInteractionMode: mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mCurrentUserContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->dumpAssetPaths(Landroid/content/Context;)V

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 146
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 147
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationModeController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;->onNavigationModeChanged(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
