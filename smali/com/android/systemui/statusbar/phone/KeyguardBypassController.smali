.class public Lcom/android/systemui/statusbar/phone/KeyguardBypassController;
.super Ljava/lang/Object;
.source "KeyguardBypassController.kt"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/KeyguardBypassController$PendingUnlock;
    }
.end annotation


# instance fields
.field private bouncerShowing:Z

.field private bypassEnabled:Z

.field private hasFaceFeature:Z

.field private isPulseExpanding:Z

.field private launchingAffordance:Z

.field private final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field private pendingUnlock:Lcom/android/systemui/statusbar/phone/KeyguardBypassController$PendingUnlock;

.field private qSExpanded:Z

.field private final statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public unlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/dump/DumpManager;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/tuner/TunerService;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/plugins/statusbar/StatusBarStateController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/android/systemui/statusbar/policy/KeyguardStateController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/android/systemui/dump/DumpManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "tunerService"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "statusBarStateController"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lockscreenUserManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyguardStateController"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dumpManager"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 87
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p5

    const-string v0, "android.hardware.biometrics.face"

    invoke-virtual {p5, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p5

    iput-boolean p5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->hasFaceFeature:Z

    if-nez p5, :cond_0

    return-void

    :cond_0
    const-string p5, "KeyguardBypassController"

    .line 94
    invoke-virtual {p6, p5, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 95
    new-instance p5, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$1;

    invoke-direct {p5, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBypassController;)V

    invoke-interface {p3, p5}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x1110086

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    .line 105
    new-instance p3, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$2;

    invoke-direct {p3, p0, p2, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/tuner/TunerService;I)V

    const-string p1, "face_unlock_dismisses_keyguard"

    .line 109
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 105
    invoke-virtual {p2, p3, p1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 111
    new-instance p1, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$3;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$3;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBypassController;)V

    .line 110
    invoke-interface {p4, p1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->addUserChangedListener(Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$UserChangedListener;)V

    return-void
.end method

.method public static final synthetic access$setBypassEnabled$p(Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Z)V
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->bypassEnabled:Z

    return-void
.end method

.method public static final synthetic access$setPendingUnlock$p(Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController$PendingUnlock;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->pendingUnlock:Lcom/android/systemui/statusbar/phone/KeyguardBypassController$PendingUnlock;

    return-void
.end method


# virtual methods
.method public final canBypass()Z
    .locals 3

    .line 152
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 154
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->bouncerShowing:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    :cond_0
    move v1, v2

    goto :goto_0

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    if-eq v0, v2, :cond_2

    goto :goto_0

    .line 156
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->launchingAffordance:Z

    if-eqz v0, :cond_3

    goto :goto_0

    .line 157
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->isPulseExpanding:Z

    if-nez v0, :cond_4

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->qSExpanded:Z

    if-eqz p0, :cond_0

    :cond_4
    :goto_0
    return v1
.end method

.method public final canPlaySubtleWindowAnimations()Z
    .locals 3

    .line 168
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 170
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 171
    :cond_0
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->qSExpanded:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :cond_2
    :goto_0
    return v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/io/FileDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/PrintWriter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "fd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "pw"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "args"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "KeyguardBypassController:"

    .line 183
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 184
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->pendingUnlock:Lcom/android/systemui/statusbar/phone/KeyguardBypassController$PendingUnlock;

    if-eqz p1, :cond_2

    .line 185
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mPendingUnlock.pendingUnlockType: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->pendingUnlock:Lcom/android/systemui/statusbar/phone/KeyguardBypassController$PendingUnlock;

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$PendingUnlock;->getPendingUnlockType()Landroid/hardware/biometrics/BiometricSourceType;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 186
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mPendingUnlock.isStrongBiometric: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->pendingUnlock:Lcom/android/systemui/statusbar/phone/KeyguardBypassController$PendingUnlock;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$PendingUnlock;->isStrongBiometric()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v0

    .line 185
    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v0

    .line 188
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mPendingUnlock: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->pendingUnlock:Lcom/android/systemui/statusbar/phone/KeyguardBypassController$PendingUnlock;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 190
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  bypassEnabled: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 191
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  canBypass: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->canBypass()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 192
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  bouncerShowing: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->bouncerShowing:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 193
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  isPulseExpanding: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->isPulseExpanding:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 194
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  launchingAffordance: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->launchingAffordance:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 195
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  qSExpanded: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->qSExpanded:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 196
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  hasFaceFeature: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->hasFaceFeature:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getBypassEnabled()Z
    .locals 1

    .line 63
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->bypassEnabled:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isFaceAuthEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final maybePerformPendingUnlock()V
    .locals 4

    .line 138
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->pendingUnlock:Lcom/android/systemui/statusbar/phone/KeyguardBypassController$PendingUnlock;

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 139
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$PendingUnlock;->getPendingUnlockType()Landroid/hardware/biometrics/BiometricSourceType;

    move-result-object v0

    .line 140
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->pendingUnlock:Lcom/android/systemui/statusbar/phone/KeyguardBypassController$PendingUnlock;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$PendingUnlock;->isStrongBiometric()Z

    move-result v2

    .line 139
    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->onBiometricAuthenticated(Landroid/hardware/biometrics/BiometricSourceType;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 141
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->unlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->pendingUnlock:Lcom/android/systemui/statusbar/phone/KeyguardBypassController$PendingUnlock;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$PendingUnlock;->getPendingUnlockType()Landroid/hardware/biometrics/BiometricSourceType;

    move-result-object v2

    .line 142
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->pendingUnlock:Lcom/android/systemui/statusbar/phone/KeyguardBypassController$PendingUnlock;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$PendingUnlock;->isStrongBiometric()Z

    move-result v3

    .line 141
    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->startWakeAndUnlock(Landroid/hardware/biometrics/BiometricSourceType;Z)V

    .line 143
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->pendingUnlock:Lcom/android/systemui/statusbar/phone/KeyguardBypassController$PendingUnlock;

    goto :goto_0

    .line 142
    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    .line 141
    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    :cond_2
    const-string/jumbo p0, "unlockController"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 140
    :cond_3
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    .line 139
    :cond_4
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    :cond_5
    :goto_0
    return-void
.end method

.method public final onBiometricAuthenticated(Landroid/hardware/biometrics/BiometricSourceType;Z)Z
    .locals 2
    .param p1    # Landroid/hardware/biometrics/BiometricSourceType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "biometricSourceType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 128
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->canBypass()Z

    move-result v0

    if-nez v0, :cond_1

    .line 129
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->isPulseExpanding:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->qSExpanded:Z

    if-eqz v1, :cond_1

    .line 130
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$PendingUnlock;

    invoke-direct {v1, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$PendingUnlock;-><init>(Landroid/hardware/biometrics/BiometricSourceType;Z)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->pendingUnlock:Lcom/android/systemui/statusbar/phone/KeyguardBypassController$PendingUnlock;

    :cond_1
    return v0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public final onStartedGoingToSleep()V
    .locals 1

    const/4 v0, 0x0

    .line 179
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->pendingUnlock:Lcom/android/systemui/statusbar/phone/KeyguardBypassController$PendingUnlock;

    return-void
.end method

.method public final setBouncerShowing(Z)V
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->bouncerShowing:Z

    return-void
.end method

.method public final setLaunchingAffordance(Z)V
    .locals 0

    .line 67
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->launchingAffordance:Z

    return-void
.end method

.method public final setPulseExpanding(Z)V
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->isPulseExpanding:Z

    return-void
.end method

.method public final setQSExpanded(Z)V
    .locals 1

    .line 70
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->qSExpanded:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 71
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->qSExpanded:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 73
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->maybePerformPendingUnlock()V

    :cond_1
    return-void
.end method

.method public final setUnlockController(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V
    .locals 1
    .param p1    # Lcom/android/systemui/statusbar/phone/BiometricUnlockController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->unlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    return-void
.end method
