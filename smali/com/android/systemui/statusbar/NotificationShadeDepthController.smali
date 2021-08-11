.class public final Lcom/android/systemui/statusbar/NotificationShadeDepthController;
.super Ljava/lang/Object;
.source "NotificationShadeDepthController.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/PanelExpansionListener;
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;,
        Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthListener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNotificationShadeDepthController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotificationShadeDepthController.kt\ncom/android/systemui/statusbar/NotificationShadeDepthController\n*L\n1#1,508:1\n*E\n"
.end annotation


# instance fields
.field private final biometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

.field private blurRoot:Landroid/view/View;

.field private final blurUtils:Lcom/android/systemui/statusbar/BlurUtils;

.field private brightnessMirrorSpring:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final choreographer:Landroid/view/Choreographer;

.field private final dozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field private globalActionsSpring:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private ignoreShadeBlurUntilHidden:Z

.field private isBlurred:Z

.field private isClosed:Z

.field private isOpen:Z

.field private keyguardAnimator:Landroid/animation/Animator;

.field private final keyguardStateCallback:Lcom/android/systemui/statusbar/NotificationShadeDepthController$keyguardStateCallback$1;

.field private final keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthListener;",
            ">;"
        }
    .end annotation
.end field

.field private notificationAnimator:Landroid/animation/Animator;

.field private notificationLaunchAnimationParams:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final notificationShadeWindowController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;

.field private prevShadeDirection:I

.field private prevShadeVelocity:F

.field private prevTimestamp:J

.field private prevTracking:Z

.field public root:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private scrimsVisible:Z

.field private shadeAnimation:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private shadeExpansion:F

.field private shadeSpring:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private showingHomeControls:Z

.field private final statusBarStateCallback:Lcom/android/systemui/statusbar/NotificationShadeDepthController$statusBarStateCallback$1;

.field private final statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private final updateBlurCallback:Landroid/view/Choreographer$FrameCallback;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private updateScheduled:Z

.field private wakeAndUnlockBlurRadius:I

.field private final wallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/BlurUtils;Lcom/android/systemui/statusbar/phone/BiometricUnlockController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Landroid/view/Choreographer;Landroid/app/WallpaperManager;Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/dump/DumpManager;)V
    .locals 1
    .param p1    # Lcom/android/systemui/plugins/statusbar/StatusBarStateController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/statusbar/BlurUtils;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/statusbar/phone/BiometricUnlockController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/android/systemui/statusbar/policy/KeyguardStateController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroid/view/Choreographer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Landroid/app/WallpaperManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lcom/android/systemui/statusbar/phone/DozeParameters;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Lcom/android/systemui/dump/DumpManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "statusBarStateController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blurUtils"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "biometricUnlockController"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyguardStateController"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "choreographer"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "wallpaperManager"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationShadeWindowController"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dozeParameters"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dumpManager"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->blurUtils:Lcom/android/systemui/statusbar/BlurUtils;

    iput-object p3, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->biometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    iput-object p4, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iput-object p5, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->choreographer:Landroid/view/Choreographer;

    iput-object p6, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->wallpaperManager:Landroid/app/WallpaperManager;

    iput-object p7, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->notificationShadeWindowController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;

    iput-object p8, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->dozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->isClosed:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->listeners:Ljava/util/List;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->prevTimestamp:J

    new-instance p1, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;-><init>(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->shadeSpring:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    new-instance p1, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;-><init>(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->shadeAnimation:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    new-instance p1, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;-><init>(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->globalActionsSpring:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    new-instance p1, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;-><init>(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->brightnessMirrorSpring:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    new-instance p1, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;-><init>(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->updateBlurCallback:Landroid/view/Choreographer$FrameCallback;

    new-instance p1, Lcom/android/systemui/statusbar/NotificationShadeDepthController$keyguardStateCallback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$keyguardStateCallback$1;-><init>(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->keyguardStateCallback:Lcom/android/systemui/statusbar/NotificationShadeDepthController$keyguardStateCallback$1;

    new-instance p1, Lcom/android/systemui/statusbar/NotificationShadeDepthController$statusBarStateCallback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$statusBarStateCallback$1;-><init>(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->statusBarStateCallback:Lcom/android/systemui/statusbar/NotificationShadeDepthController$statusBarStateCallback$1;

    const-class p1, Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "javaClass.name"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p9, p1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->keyguardStateCallback:Lcom/android/systemui/statusbar/NotificationShadeDepthController$keyguardStateCallback$1;

    invoke-interface {p1, p2}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->statusBarStateCallback:Lcom/android/systemui/statusbar/NotificationShadeDepthController$statusBarStateCallback$1;

    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->notificationShadeWindowController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;

    new-instance p2, Lcom/android/systemui/statusbar/NotificationShadeDepthController$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$1;-><init>(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)V

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->setScrimsVisibilityListener(Ljava/util/function/Consumer;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->shadeAnimation:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    const/high16 p2, 0x43480000    # 200.0f

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->setStiffness(F)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->shadeAnimation:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->setDampingRatio(F)V

    return-void
.end method

.method public static final synthetic access$getBiometricUnlockController$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)Lcom/android/systemui/statusbar/phone/BiometricUnlockController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->biometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    return-object p0
.end method

.method public static final synthetic access$getBlurRoot$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->blurRoot:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic access$getBlurUtils$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)Lcom/android/systemui/statusbar/BlurUtils;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->blurUtils:Lcom/android/systemui/statusbar/BlurUtils;

    return-object p0
.end method

.method public static final synthetic access$getDozeParameters$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)Lcom/android/systemui/statusbar/phone/DozeParameters;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->dozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    return-object p0
.end method

.method public static final synthetic access$getIgnoreShadeBlurUntilHidden$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->ignoreShadeBlurUntilHidden:Z

    return p0
.end method

.method public static final synthetic access$getKeyguardAnimator$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)Landroid/animation/Animator;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->keyguardAnimator:Landroid/animation/Animator;

    return-object p0
.end method

.method public static final synthetic access$getKeyguardStateController$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)Lcom/android/systemui/statusbar/policy/KeyguardStateController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    return-object p0
.end method

.method public static final synthetic access$getListeners$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->listeners:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getNotificationAnimator$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)Landroid/animation/Animator;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->notificationAnimator:Landroid/animation/Animator;

    return-object p0
.end method

.method public static final synthetic access$getNotificationShadeWindowController$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->notificationShadeWindowController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;

    return-object p0
.end method

.method public static final synthetic access$getPrevShadeDirection$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)I
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->prevShadeDirection:I

    return p0
.end method

.method public static final synthetic access$getPrevShadeVelocity$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)F
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->prevShadeVelocity:F

    return p0
.end method

.method public static final synthetic access$getPrevTracking$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->prevTracking:Z

    return p0
.end method

.method public static final synthetic access$getScrimsVisible$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->scrimsVisible:Z

    return p0
.end method

.method public static final synthetic access$getShadeExpansion$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)F
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->shadeExpansion:F

    return p0
.end method

.method public static final synthetic access$getWakeAndUnlockBlurRadius$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)I
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->wakeAndUnlockBlurRadius:I

    return p0
.end method

.method public static final synthetic access$getWallpaperManager$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)Landroid/app/WallpaperManager;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->wallpaperManager:Landroid/app/WallpaperManager;

    return-object p0
.end method

.method public static final synthetic access$scheduleUpdate(Lcom/android/systemui/statusbar/NotificationShadeDepthController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->scheduleUpdate(Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$setIgnoreShadeBlurUntilHidden$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->ignoreShadeBlurUntilHidden:Z

    return-void
.end method

.method public static final synthetic access$setKeyguardAnimator$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;Landroid/animation/Animator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->keyguardAnimator:Landroid/animation/Animator;

    return-void
.end method

.method public static final synthetic access$setScrimsVisible$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->setScrimsVisible(Z)V

    return-void
.end method

.method public static final synthetic access$setUpdateScheduled$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->updateScheduled:Z

    return-void
.end method

.method public static final synthetic access$setWakeAndUnlockBlurRadius$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->setWakeAndUnlockBlurRadius(I)V

    return-void
.end method

.method public static final synthetic access$updateShadeAnimationBlur(Lcom/android/systemui/statusbar/NotificationShadeDepthController;FZFI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->updateShadeAnimationBlur(FZFI)V

    return-void
.end method

.method public static final synthetic access$updateShadeBlur(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->updateShadeBlur()V

    return-void
.end method

.method private final animateBlur(ZF)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->isBlurred:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->isOnKeyguardNotDismissing()Z

    move-result p1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->shadeAnimation:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->setStartVelocity(F)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->shadeAnimation:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->blurUtils:Lcom/android/systemui/statusbar/BlurUtils;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/BlurUtils;->blurRadiusOfRatio(F)I

    move-result p0

    const/4 p1, 0x2

    const/4 v0, 0x0

    invoke-static {p2, p0, v0, p1, v0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->animateTo$default(Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;ILandroid/view/View;ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic brightnessMirrorSpring$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic globalActionsSpring$annotations()V
    .locals 0

    return-void
.end method

.method private final isOnKeyguardNotDismissing()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isKeyguardFadingAway()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final scheduleUpdate(Landroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->updateScheduled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->updateScheduled:Z

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->blurRoot:Landroid/view/View;

    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->choreographer:Landroid/view/Choreographer;

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->updateBlurCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method static synthetic scheduleUpdate$default(Lcom/android/systemui/statusbar/NotificationShadeDepthController;Landroid/view/View;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->scheduleUpdate(Landroid/view/View;)V

    return-void
.end method

.method private final setScrimsVisible(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->scrimsVisible:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->scrimsVisible:Z

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, v0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->scheduleUpdate$default(Lcom/android/systemui/statusbar/NotificationShadeDepthController;Landroid/view/View;ILjava/lang/Object;)V

    return-void
.end method

.method private final setWakeAndUnlockBlurRadius(I)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->wakeAndUnlockBlurRadius:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->wakeAndUnlockBlurRadius:I

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, v0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->scheduleUpdate$default(Lcom/android/systemui/statusbar/NotificationShadeDepthController;Landroid/view/View;ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic shadeSpring$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic updateBlurCallback$annotations()V
    .locals 0

    return-void
.end method

.method private final updateShadeAnimationBlur(FZFI)V
    .locals 4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->isOnKeyguardNotDismissing()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    cmpl-float v0, p1, v1

    if-lez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->isClosed:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, v2, p3}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->animateBlur(ZF)V

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->isClosed:Z

    :cond_0
    if-eqz p2, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->isBlurred:Z

    if-nez v0, :cond_1

    invoke-direct {p0, v2, v1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->animateBlur(ZF)V

    :cond_1
    if-nez p2, :cond_2

    if-gez p4, :cond_2

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->isBlurred:Z

    if-eqz p2, :cond_2

    invoke-direct {p0, v3, p3}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->animateBlur(ZF)V

    :cond_2
    const/high16 p2, 0x3f800000    # 1.0f

    cmpg-float p1, p1, p2

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->isOpen:Z

    if-nez p1, :cond_6

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->isOpen:Z

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->isBlurred:Z

    if-nez p1, :cond_6

    invoke-direct {p0, v2, p3}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->animateBlur(ZF)V

    goto :goto_0

    :cond_3
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->isOpen:Z

    goto :goto_0

    :cond_4
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->isClosed:Z

    if-nez p1, :cond_6

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->isClosed:Z

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->isBlurred:Z

    if-eqz p1, :cond_6

    invoke-direct {p0, v3, p3}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->animateBlur(ZF)V

    goto :goto_0

    :cond_5
    invoke-direct {p0, v3, v1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->animateBlur(ZF)V

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->isClosed:Z

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->isOpen:Z

    :cond_6
    :goto_0
    return-void
.end method

.method private final updateShadeBlur()V
    .locals 3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->isOnKeyguardNotDismissing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->blurUtils:Lcom/android/systemui/statusbar/BlurUtils;

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->shadeExpansion:F

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BlurUtils;->blurRadiusOfRatio(F)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->shadeSpring:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1, v2}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->animateTo$default(Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;ILandroid/view/View;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final addListener(Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthListener;)V
    .locals 1
    .param p1    # Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->listeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
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

    new-instance p1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string p3, "  "

    invoke-direct {p1, p2, p3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    const-string p2, "StatusBarWindowBlurController:"

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "shadeRadius: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->shadeSpring:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->getRadius()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "shadeAnimation: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->shadeAnimation:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->getRadius()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "globalActionsRadius: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->globalActionsSpring:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->getRadius()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "brightnessMirrorRadius: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->brightnessMirrorSpring:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->getRadius()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "wakeAndUnlockBlur: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->wakeAndUnlockBlurRadius:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "notificationLaunchAnimationProgress: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->notificationLaunchAnimationParams:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;

    if-eqz p3, :cond_0

    iget p3, p3, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;->linearProgress:F

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ignoreShadeBlurUntilHidden: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->ignoreShadeBlurUntilHidden:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getBrightnessMirrorSpring()Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->brightnessMirrorSpring:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    return-object p0
.end method

.method public final getGlobalActionsSpring()Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->globalActionsSpring:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    return-object p0
.end method

.method public final getNotificationLaunchAnimationParams()Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->notificationLaunchAnimationParams:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;

    return-object p0
.end method

.method public final getRoot()Landroid/view/View;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->root:Landroid/view/View;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "root"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final getShadeAnimation()Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->shadeAnimation:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    return-object p0
.end method

.method public final getShadeSpring()Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->shadeSpring:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    return-object p0
.end method

.method public final getShowingHomeControls()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->showingHomeControls:Z

    return p0
.end method

.method public onPanelExpansionChanged(FZ)V
    .locals 8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    iget v2, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->shadeExpansion:F

    cmpg-float v2, v2, p1

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->prevTracking:Z

    if-ne v2, p2, :cond_0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->prevTimestamp:J

    return-void

    :cond_0
    iget-wide v2, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->prevTimestamp:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    const/high16 v5, 0x3f800000    # 1.0f

    if-gez v4, :cond_1

    iput-wide v0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->prevTimestamp:J

    goto :goto_0

    :cond_1
    sub-long v2, v0, v2

    long-to-double v2, v2

    const-wide v6, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v2, v6

    double-to-float v2, v2

    const v3, 0x3727c5ac    # 1.0E-5f

    invoke-static {v2, v3, v5}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v5

    :goto_0
    iget v2, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->shadeExpansion:F

    sub-float v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v3

    float-to-int v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v2, v4

    div-float/2addr v2, v5

    const v4, -0x3ac48000    # -3000.0f

    const v5, 0x453b8000    # 3000.0f

    invoke-static {v2, v4, v5}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v2

    invoke-direct {p0, p1, p2, v2, v3}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->updateShadeAnimationBlur(FZFI)V

    iput v3, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->prevShadeDirection:I

    iput v2, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->prevShadeVelocity:F

    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->shadeExpansion:F

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->prevTracking:Z

    iput-wide v0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->prevTimestamp:J

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->updateShadeBlur()V

    return-void
.end method

.method public final setBrightnessMirrorVisible(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->brightnessMirrorSpring:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->blurUtils:Lcom/android/systemui/statusbar/BlurUtils;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/BlurUtils;->blurRadiusOfRatio(F)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 p1, 0x2

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1, v1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->animateTo$default(Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;ILandroid/view/View;ILjava/lang/Object;)V

    return-void
.end method

.method public final setNotificationLaunchAnimationParams(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;)V
    .locals 3
    .param p1    # Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->notificationLaunchAnimationParams:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-static {p0, v1, v0, v1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->scheduleUpdate$default(Lcom/android/systemui/statusbar/NotificationShadeDepthController;Landroid/view/View;ILjava/lang/Object;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->shadeSpring:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->getRadius()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->shadeAnimation:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->getRadius()I

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->ignoreShadeBlurUntilHidden:Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->shadeSpring:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    const/4 v0, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v0, v1, v2, v1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->animateTo$default(Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;ILandroid/view/View;ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->shadeSpring:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->finishIfRunning()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->shadeAnimation:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    invoke-static {p1, v0, v1, v2, v1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->animateTo$default(Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;ILandroid/view/View;ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->shadeAnimation:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->finishIfRunning()V

    return-void
.end method

.method public final setRoot(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->root:Landroid/view/View;

    return-void
.end method

.method public final setShowingHomeControls(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->showingHomeControls:Z

    return-void
.end method

.method public final updateGlobalDialogVisibility(FLandroid/view/View;)V
    .locals 1
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->globalActionsSpring:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->blurUtils:Lcom/android/systemui/statusbar/BlurUtils;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/BlurUtils;->blurRadiusOfRatio(F)I

    move-result p0

    invoke-virtual {v0, p0, p2}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->animateTo(ILandroid/view/View;)V

    return-void
.end method
