.class Lcom/oneplus/battery/OpChargingAnimationControllerImpl$KeyguardStateCallback;
.super Lcom/android/internal/policy/IKeyguardStateCallback$Stub;
.source "OpChargingAnimationControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/battery/OpChargingAnimationControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyguardStateCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;


# direct methods
.method private constructor <init>(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)V
    .locals 0

    .line 644
    iput-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$KeyguardStateCallback;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-direct {p0}, Lcom/android/internal/policy/IKeyguardStateCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;Lcom/oneplus/battery/OpChargingAnimationControllerImpl$1;)V
    .locals 0

    .line 644
    invoke-direct {p0, p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$KeyguardStateCallback;-><init>(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)V

    return-void
.end method


# virtual methods
.method public onDisabledStateChanged(Z)V
    .locals 2

    .line 704
    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$KeyguardStateCallback;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$200(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDisabledStateChanged"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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
    .locals 3

    .line 648
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$KeyguardStateCallback;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {v0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$200(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShowingStateChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    iget-object v0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$KeyguardStateCallback;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {v0, p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$402(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;Z)Z

    .line 651
    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$KeyguardStateCallback;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$400(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$KeyguardStateCallback;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$500(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 652
    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$KeyguardStateCallback;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$600(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)V

    goto :goto_1

    .line 655
    :cond_0
    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$KeyguardStateCallback;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$400(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 658
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportREDCharging()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 660
    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$KeyguardStateCallback;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$700(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpCBWarpChargingView;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 661
    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$KeyguardStateCallback;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$700(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpCBWarpChargingView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/battery/OpCBWarpChargingView;->stopAnimation()V

    goto :goto_0

    .line 663
    :cond_1
    sget-boolean p1, Lcom/oneplus/util/OpUtils;->SUPPORT_CHARGING_ANIM_V2:Z

    if-eqz p1, :cond_2

    .line 664
    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$KeyguardStateCallback;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$800(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpSWarpChargingView;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 665
    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$KeyguardStateCallback;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$800(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpSWarpChargingView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/battery/OpSWarpChargingView;->stopAnimation()V

    goto :goto_0

    .line 667
    :cond_2
    sget-boolean p1, Lcom/oneplus/util/OpUtils;->SUPPORT_CHARGING_ANIM_V1:Z

    if-eqz p1, :cond_3

    .line 670
    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$KeyguardStateCallback;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$900(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpNewWarpChargingView;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 671
    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$KeyguardStateCallback;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$900(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpNewWarpChargingView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/battery/OpNewWarpChargingView;->stopAnimation()V

    goto :goto_0

    .line 675
    :cond_3
    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$KeyguardStateCallback;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$100(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpWarpChargingView;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 676
    iget-object p1, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$KeyguardStateCallback;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p1}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$100(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)Lcom/oneplus/battery/OpWarpChargingView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/battery/OpWarpChargingView;->stopAnimation()V

    .line 681
    :cond_4
    :goto_0
    iget-object p0, p0, Lcom/oneplus/battery/OpChargingAnimationControllerImpl$KeyguardStateCallback;->this$0:Lcom/oneplus/battery/OpChargingAnimationControllerImpl;

    invoke-static {p0}, Lcom/oneplus/battery/OpChargingAnimationControllerImpl;->access$1000(Lcom/oneplus/battery/OpChargingAnimationControllerImpl;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public onSimSecureStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onTrustedChanged(Z)V
    .locals 0

    return-void
.end method
