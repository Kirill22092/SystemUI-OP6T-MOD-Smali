.class Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "OpThreekeyVolumeGuideControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenTurnedOff()V
    .locals 1

    .line 110
    invoke-static {}, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->access$000()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "OpThreekeyVolumeGuideControllerImpl"

    const-string v0, "onScreenTurnedOff"

    .line 111
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 1

    .line 102
    invoke-static {}, Lcom/oneplus/opthreekey/OpThreekeyVolumeGuideControllerImpl;->access$000()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "OpThreekeyVolumeGuideControllerImpl"

    const-string v0, "onScreenTurnedOn"

    .line 103
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
