.class Lcom/android/keyguard/KeyguardSecurityContainer$4;
.super Ljava/lang/Object;
.source "KeyguardSecurityContainer.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSecurityContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSecurityContainer;)V
    .locals 0

    .line 1188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss(ZI)V
    .locals 0

    return-void
.end method

.method public dismiss(ZIZ)V
    .locals 0

    return-void
.end method

.method public getCurrentSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 0

    .line 1222
    sget-object p0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object p0
.end method

.method public getEmergencyPanel()Lcom/oneplus/keyguard/OpEmergencyPanel;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public hideSecurityIcon()V
    .locals 0

    return-void
.end method

.method public onUserInput()V
    .locals 0

    return-void
.end method

.method public reportMDMEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public reportUnlockAttempt(IZI)V
    .locals 0

    return-void
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public tryToStartFaceLockFromBouncer()V
    .locals 0

    return-void
.end method

.method public userActivity()V
    .locals 0

    return-void
.end method
