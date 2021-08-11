.class Lcom/android/systemui/statusbar/KeyguardIndicationController$KeyguardStateCallback;
.super Lcom/android/internal/policy/IKeyguardStateCallback$Stub;
.source "KeyguardIndicationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/KeyguardIndicationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyguardStateCallback"
.end annotation


# instance fields
.field private mSimSecure:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$KeyguardStateCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-direct {p0}, Lcom/android/internal/policy/IKeyguardStateCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;Lcom/android/systemui/statusbar/KeyguardIndicationController$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController$KeyguardStateCallback;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    return-void
.end method

.method private synthetic lambda$onShowingStateChanged$0()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$KeyguardStateCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$4400(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    return-void
.end method

.method private synthetic lambda$onShowingStateChanged$1()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$KeyguardStateCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$4300(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onShowingStateChanged$0$KeyguardIndicationController$KeyguardStateCallback()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$KeyguardStateCallback;->lambda$onShowingStateChanged$0()V

    return-void
.end method

.method public synthetic lambda$onShowingStateChanged$1$KeyguardIndicationController$KeyguardStateCallback()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$KeyguardStateCallback;->lambda$onShowingStateChanged$1()V

    return-void
.end method

.method public onDisabledStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onFingerprintStateChange(ZIII)V
    .locals 0

    return-void
.end method

.method public onHasLockscreenWallpaperChanged(Z)V
    .locals 0

    return-void
.end method

.method public onInputRestrictedStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onPocketModeActiveChanged(Z)V
    .locals 0

    return-void
.end method

.method public onShowingStateChanged(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onShowingStateChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardIndication"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$KeyguardStateCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$1800(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/statusbar/-$$Lambda$KeyguardIndicationController$KeyguardStateCallback$Ooi94KuPUsZHwUgjujy0gVnwcFA;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/-$$Lambda$KeyguardIndicationController$KeyguardStateCallback$Ooi94KuPUsZHwUgjujy0gVnwcFA;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController$KeyguardStateCallback;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$KeyguardStateCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$1800(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/statusbar/-$$Lambda$KeyguardIndicationController$KeyguardStateCallback$u8PSQkm1rN82GMDkXvdeG3zliBw;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/-$$Lambda$KeyguardIndicationController$KeyguardStateCallback$u8PSQkm1rN82GMDkXvdeG3zliBw;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController$KeyguardStateCallback;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public onSimSecureStateChanged(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$KeyguardStateCallback;->mSimSecure:Z

    if-eq v0, p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSimSecureStateChanged simSecure "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardIndication"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$KeyguardStateCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$4200(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$KeyguardStateCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$4200(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateIndicationArea()V

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$KeyguardStateCallback;->mSimSecure:Z

    :cond_1
    return-void
.end method

.method public onTrustedChanged(Z)V
    .locals 0

    return-void
.end method
