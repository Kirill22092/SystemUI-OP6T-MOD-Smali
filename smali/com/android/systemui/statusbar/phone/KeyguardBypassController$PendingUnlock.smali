.class final Lcom/android/systemui/statusbar/phone/KeyguardBypassController$PendingUnlock;
.super Ljava/lang/Object;
.source "KeyguardBypassController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/KeyguardBypassController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PendingUnlock"
.end annotation


# instance fields
.field private final isStrongBiometric:Z

.field private final pendingUnlockType:Landroid/hardware/biometrics/BiometricSourceType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/hardware/biometrics/BiometricSourceType;Z)V
    .locals 1
    .param p1    # Landroid/hardware/biometrics/BiometricSourceType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pendingUnlockType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$PendingUnlock;->pendingUnlockType:Landroid/hardware/biometrics/BiometricSourceType;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$PendingUnlock;->isStrongBiometric:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$PendingUnlock;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$PendingUnlock;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$PendingUnlock;->pendingUnlockType:Landroid/hardware/biometrics/BiometricSourceType;

    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$PendingUnlock;->pendingUnlockType:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$PendingUnlock;->isStrongBiometric:Z

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$PendingUnlock;->isStrongBiometric:Z

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final getPendingUnlockType()Landroid/hardware/biometrics/BiometricSourceType;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 52
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$PendingUnlock;->pendingUnlockType:Landroid/hardware/biometrics/BiometricSourceType;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$PendingUnlock;->pendingUnlockType:Landroid/hardware/biometrics/BiometricSourceType;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$PendingUnlock;->isStrongBiometric:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    :cond_1
    add-int/2addr v0, p0

    return v0
.end method

.method public final isStrongBiometric()Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$PendingUnlock;->isStrongBiometric:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PendingUnlock(pendingUnlockType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$PendingUnlock;->pendingUnlockType:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isStrongBiometric="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$PendingUnlock;->isStrongBiometric:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
