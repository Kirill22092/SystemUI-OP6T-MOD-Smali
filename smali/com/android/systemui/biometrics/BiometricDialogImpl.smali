.class public Lcom/android/systemui/biometrics/BiometricDialogImpl;
.super Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;
.source "BiometricDialogImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/biometrics/BiometricDialogImpl$Callback;
    }
.end annotation


# static fields
.field private static mEnableDialog:Z = false


# instance fields
.field private mCallback:Lcom/android/systemui/biometrics/BiometricDialogImpl$Callback;

.field private mCurrentDialog:Lcom/android/systemui/biometrics/BiometricDialogView;

.field private mCurrentDialogArgs:Lcom/android/internal/os/SomeArgs;

.field private mDialogShowing:Z

.field private mHandler:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpHandler;

.field private mReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

.field private mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

.field final mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 50
    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;-><init>()V

    .line 70
    new-instance v0, Lcom/android/systemui/biometrics/BiometricDialogImpl$Callback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/biometrics/BiometricDialogImpl$Callback;-><init>(Lcom/android/systemui/biometrics/BiometricDialogImpl;Lcom/android/systemui/biometrics/BiometricDialogImpl$1;)V

    iput-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCallback:Lcom/android/systemui/biometrics/BiometricDialogImpl$Callback;

    .line 81
    new-instance v0, Lcom/android/systemui/biometrics/BiometricDialogImpl$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/biometrics/BiometricDialogImpl$1;-><init>(Lcom/android/systemui/biometrics/BiometricDialogImpl;)V

    iput-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mHandler:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpHandler;

    .line 160
    new-instance v0, Lcom/android/systemui/biometrics/BiometricDialogImpl$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/biometrics/BiometricDialogImpl$2;-><init>(Lcom/android/systemui/biometrics/BiometricDialogImpl;)V

    iput-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/biometrics/BiometricDialogImpl;Lcom/android/internal/os/SomeArgs;ZLandroid/os/Bundle;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->handleShowDialog(Lcom/android/internal/os/SomeArgs;ZLandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/biometrics/BiometricDialogImpl;)Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpHandler;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mHandler:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpHandler;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/biometrics/BiometricDialogImpl;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mDialogShowing:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/biometrics/BiometricDialogImpl;ZLjava/lang/String;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->handleBiometricAuthenticated(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/biometrics/BiometricDialogImpl;Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->handleBiometricHelp(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/biometrics/BiometricDialogImpl;Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->handleBiometricError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/biometrics/BiometricDialogImpl;Z)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->handleHideDialog(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/biometrics/BiometricDialogImpl;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->handleButtonNegative()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/biometrics/BiometricDialogImpl;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->handleUserCanceled()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/biometrics/BiometricDialogImpl;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->handleButtonPositive()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/biometrics/BiometricDialogImpl;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->handleTryAgainPressed()V

    return-void
.end method

.method private handleBiometricAuthenticated(ZLjava/lang/String;)V
    .locals 2

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleBiometricAuthenticated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mCurrentAuthType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricDialogImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mCurrentAuthType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 316
    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->opHandleBiometricAuthenticated(Z)V

    return-void

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialog:Lcom/android/systemui/biometrics/BiometricDialogView;

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_3

    .line 322
    iget-object p1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .line 323
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialog:Lcom/android/systemui/biometrics/BiometricDialogView;

    .line 324
    invoke-virtual {p2}, Lcom/android/systemui/biometrics/BiometricDialogView;->getAuthenticatedAccessibilityResourceId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 322
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 325
    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialog:Lcom/android/systemui/biometrics/BiometricDialogView;

    invoke-virtual {p1}, Lcom/android/systemui/biometrics/BiometricDialogView;->requiresConfirmation()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 326
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialog:Lcom/android/systemui/biometrics/BiometricDialogView;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/BiometricDialogView;->updateState(I)V

    goto :goto_0

    .line 328
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialog:Lcom/android/systemui/biometrics/BiometricDialogView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/android/systemui/biometrics/BiometricDialogView;->updateState(I)V

    .line 329
    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mHandler:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpHandler;

    new-instance p2, Lcom/android/systemui/biometrics/-$$Lambda$BiometricDialogImpl$ClyZbr2Bp-ugYn9TuyRxsmSCP_U;

    invoke-direct {p2, p0}, Lcom/android/systemui/biometrics/-$$Lambda$BiometricDialogImpl$ClyZbr2Bp-ugYn9TuyRxsmSCP_U;-><init>(Lcom/android/systemui/biometrics/BiometricDialogImpl;)V

    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialog:Lcom/android/systemui/biometrics/BiometricDialogView;

    .line 331
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/BiometricDialogView;->getDelayAfterAuthenticatedDurationMs()I

    move-result p0

    int-to-long v0, p0

    .line 329
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 334
    :cond_3
    invoke-virtual {v0, p2}, Lcom/android/systemui/biometrics/BiometricDialogView;->onAuthenticationFailed(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private handleBiometricError(Ljava/lang/String;)V
    .locals 3

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleBiometricError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricDialogImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mCurrentAuthType:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 353
    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->opHandleBiometricError(Ljava/lang/String;)V

    return-void

    .line 357
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mDialogShowing:Z

    if-nez v0, :cond_1

    const-string p0, "Dialog already dismissed"

    .line 358
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 361
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialog:Lcom/android/systemui/biometrics/BiometricDialogView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/BiometricDialogView;->onErrorReceived(Ljava/lang/String;)V

    return-void
.end method

.method private handleBiometricHelp(Ljava/lang/String;)V
    .locals 2

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleBiometricHelp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricDialogImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mCurrentAuthType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 344
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialog:Lcom/android/systemui/biometrics/BiometricDialogView;

    if-nez p0, :cond_1

    return-void

    .line 346
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/BiometricDialogView;->onHelpReceived(Ljava/lang/String;)V

    return-void
.end method

.method private handleButtonNegative()V
    .locals 3

    .line 401
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    const-string v1, "BiometricDialogImpl"

    if-nez v0, :cond_0

    const-string p0, "Receiver is null"

    .line 402
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v2, 0x2

    .line 406
    :try_start_0
    invoke-interface {v0, v2}, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;->onDialogDismissed(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Remote exception when handling negative button"

    .line 408
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    .line 410
    invoke-direct {p0, v0}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->handleHideDialog(Z)V

    return-void
.end method

.method private handleButtonPositive()V
    .locals 3

    .line 414
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    const-string v1, "BiometricDialogImpl"

    if-nez v0, :cond_0

    const-string p0, "Receiver is null"

    .line 415
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v2, 0x1

    .line 419
    :try_start_0
    invoke-interface {v0, v2}, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;->onDialogDismissed(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Remote exception when handling positive button"

    .line 421
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    .line 423
    invoke-direct {p0, v0}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->handleHideDialog(Z)V

    return-void
.end method

.method private handleHideDialog(Z)V
    .locals 3

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleHideDialog, userCanceled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricDialogImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mCurrentAuthType:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 369
    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->opHandleHideFodDialog(Z)V

    .line 371
    sget-boolean v0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mEnableDialog:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 379
    sput-boolean v0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mEnableDialog:Z

    .line 382
    iget-boolean v2, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mDialogShowing:Z

    if-nez v2, :cond_1

    .line 385
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Dialog already dismissed, userCanceled: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 390
    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    const/4 v2, 0x3

    invoke-interface {p1, v2}, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;->onDialogDismissed(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v2, "RemoteException when hiding dialog"

    .line 392
    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 395
    iput-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    .line 396
    iput-boolean v0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mDialogShowing:Z

    .line 397
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialog:Lcom/android/systemui/biometrics/BiometricDialogView;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/BiometricDialogView;->startDismiss()V

    return-void
.end method

.method private handleShowDialog(Lcom/android/internal/os/SomeArgs;ZLandroid/os/Bundle;)V
    .locals 7

    .line 243
    iput-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialogArgs:Lcom/android/internal/os/SomeArgs;

    .line 244
    iget v0, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    const/4 v1, 0x1

    const-string v2, "BiometricDialogImpl"

    if-eqz p1, :cond_1

    .line 248
    iget-object v3, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "key_fingerprint_package_name"

    const-string v5, ""

    .line 249
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "description"

    .line 250
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    const-string v5, "com.android.cts.verifier"

    .line 251
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v3, :cond_0

    .line 252
    sput-boolean v1, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mEnableDialog:Z

    .line 254
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleShowDialog "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mEnableDialog:Z

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_1
    iput v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mCurrentAuthType:I

    .line 261
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleShowDialog type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, v1, :cond_2

    .line 262
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 263
    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->opHandleShowDialog(Lcom/android/internal/os/SomeArgs;)V

    .line 264
    sget-boolean v3, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mEnableDialog:Z

    if-nez v3, :cond_2

    return-void

    :cond_2
    if-ne v0, v1, :cond_3

    .line 275
    new-instance v3, Lcom/android/systemui/biometrics/FingerprintDialogView;

    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCallback:Lcom/android/systemui/biometrics/BiometricDialogImpl$Callback;

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/biometrics/FingerprintDialogView;-><init>(Landroid/content/Context;Lcom/android/systemui/biometrics/DialogViewCallback;)V

    goto :goto_0

    :cond_3
    const/4 v3, 0x4

    if-ne v0, v3, :cond_6

    .line 277
    new-instance v3, Lcom/android/systemui/biometrics/FaceDialogView;

    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCallback:Lcom/android/systemui/biometrics/BiometricDialogImpl$Callback;

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/biometrics/FaceDialogView;-><init>(Landroid/content/Context;Lcom/android/systemui/biometrics/DialogViewCallback;)V

    .line 283
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleShowDialog,  savedState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " mCurrentDialog: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialog:Lcom/android/systemui/biometrics/BiometricDialogView;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " newDialog: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_4

    .line 292
    invoke-virtual {v3, p3}, Lcom/android/systemui/biometrics/BiometricDialogView;->restoreState(Landroid/os/Bundle;)V

    goto :goto_1

    .line 293
    :cond_4
    iget-object p3, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialog:Lcom/android/systemui/biometrics/BiometricDialogView;

    if-eqz p3, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mDialogShowing:Z

    if-eqz v0, :cond_5

    .line 298
    invoke-virtual {p3}, Lcom/android/systemui/biometrics/BiometricDialogView;->forceRemove()V

    .line 301
    :cond_5
    :goto_1
    iget-object p3, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast p3, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    iput-object p3, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    .line 302
    iget-object p3, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast p3, Landroid/os/Bundle;

    invoke-virtual {v3, p3}, Lcom/android/systemui/biometrics/BiometricDialogView;->setBundle(Landroid/os/Bundle;)V

    .line 303
    iget-object p3, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {v3, p3}, Lcom/android/systemui/biometrics/BiometricDialogView;->setRequireConfirmation(Z)V

    .line 304
    iget p1, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    invoke-virtual {v3, p1}, Lcom/android/systemui/biometrics/BiometricDialogView;->setUserId(I)V

    .line 305
    invoke-virtual {v3, p2}, Lcom/android/systemui/biometrics/BiometricDialogView;->setSkipIntro(Z)V

    .line 306
    iput-object v3, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialog:Lcom/android/systemui/biometrics/BiometricDialogView;

    .line 307
    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mWindowManager:Landroid/view/WindowManager;

    iget-object p2, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialog:Lcom/android/systemui/biometrics/BiometricDialogView;

    invoke-virtual {p2}, Lcom/android/systemui/biometrics/BiometricDialogView;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 308
    iput-boolean v1, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mDialogShowing:Z

    return-void

    .line 279
    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unsupported type: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private handleTryAgainPressed()V
    .locals 2

    .line 432
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    invoke-interface {p0}, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;->onTryAgainPressed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "BiometricDialogImpl"

    const-string v1, "RemoteException when handling try again"

    .line 434
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private handleUserCanceled()V
    .locals 1

    const/4 v0, 0x1

    .line 427
    invoke-direct {p0, v0}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->handleHideDialog(Z)V

    return-void
.end method


# virtual methods
.method public hideBiometricDialog()V
    .locals 2

    const-string v0, "BiometricDialogImpl"

    const-string v1, "hideBiometricDialog"

    .line 238
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mHandler:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpHandler;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public synthetic lambda$handleBiometricAuthenticated$0$BiometricDialogImpl()V
    .locals 1

    const/4 v0, 0x0

    .line 330
    invoke-direct {p0, v0}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->handleHideDialog(Z)V

    return-void
.end method

.method public onBiometricAuthenticated(ZLjava/lang/String;)V
    .locals 2

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBiometricAuthenticated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricDialogImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 217
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 218
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 219
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mHandler:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpHandler;

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onBiometricError(Ljava/lang/String;)V
    .locals 2

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBiometricError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricDialogImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mHandler:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpHandler;

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onBiometricHelp(Ljava/lang/String;)V
    .locals 2

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBiometricHelp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricDialogImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 226
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 227
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mHandler:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpHandler;

    const/4 p1, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 440
    invoke-super {p0, p1}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 441
    iget-boolean p1, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mDialogShowing:Z

    .line 444
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 445
    iget-object v1, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialog:Lcom/android/systemui/biometrics/BiometricDialogView;

    if-eqz v1, :cond_0

    .line 446
    invoke-virtual {v1, v0}, Lcom/android/systemui/biometrics/BiometricDialogView;->onSaveState(Landroid/os/Bundle;)V

    .line 449
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mDialogShowing:Z

    if-eqz v1, :cond_1

    .line 450
    iget-object v1, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialog:Lcom/android/systemui/biometrics/BiometricDialogView;

    invoke-virtual {v1}, Lcom/android/systemui/biometrics/BiometricDialogView;->forceRemove()V

    const/4 v1, 0x0

    .line 451
    iput-boolean v1, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mDialogShowing:Z

    :cond_1
    if-eqz p1, :cond_2

    .line 455
    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialogArgs:Lcom/android/internal/os/SomeArgs;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, v0}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->handleShowDialog(Lcom/android/internal/os/SomeArgs;ZLandroid/os/Bundle;)V

    :cond_2
    return-void
.end method

.method public showBiometricDialog(Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;IZI)V
    .locals 2

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showBiometricDialog, type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", requireConfirmation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricDialogImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mHandler:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 195
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mHandler:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 196
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mHandler:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 197
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mHandler:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 198
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 199
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 200
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 201
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 202
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 203
    iput p5, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 206
    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mHandler:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpHandler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 208
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mHandler:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpHandler;

    invoke-virtual {p0, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public start()V
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.fingerprint"

    .line 173
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.hardware.biometrics.face"

    .line 174
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.hardware.biometrics.iris"

    .line 175
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    :cond_0
    const-class v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p0, v0}, Lcom/android/systemui/SystemUI;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 177
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mWindowManager:Landroid/view/WindowManager;

    .line 178
    const-class v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iput-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 179
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object v1, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/Lifecycle;->addObserver(Ljava/lang/Object;)V

    .line 182
    :cond_1
    invoke-super {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->start()V

    return-void
.end method
