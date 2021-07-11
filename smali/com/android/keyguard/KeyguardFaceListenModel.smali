.class public final Lcom/android/keyguard/KeyguardFaceListenModel;
.super Ljava/lang/Object;
.source "KeyguardFaceListenModel.kt"


# instance fields
.field private final isAuthInterruptActive:Z

.field private final isBecauseCannotSkipBouncer:Z

.field private final isBouncer:Z

.field private final isFaceDisabled:Z

.field private final isFaceSettingEnabledForUser:Z

.field private final isKeyguardAwake:Z

.field private final isKeyguardGoingAway:Z

.field private final isListeningForFace:Z

.field private final isListeningForFaceAssistant:Z

.field private final isLockIconPressed:Z

.field private final isPrimaryUser:Z

.field private final isScanningAllowedByStrongAuth:Z

.field private final isSecureCameraLaunched:Z

.field private final isSwitchingUser:Z

.field private final timeMillis:J

.field private final userId:I


# direct methods
.method public constructor <init>(JIZZZZZZZZZZZZZZ)V
    .locals 3

    move-object v0, p0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p1

    iput-wide v1, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->timeMillis:J

    move v1, p3

    iput v1, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->userId:I

    move v1, p4

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->isListeningForFace:Z

    move v1, p5

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->isBouncer:Z

    move v1, p6

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->isAuthInterruptActive:Z

    move v1, p7

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->isKeyguardAwake:Z

    move v1, p8

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->isListeningForFaceAssistant:Z

    move v1, p9

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->isSwitchingUser:Z

    move v1, p10

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->isFaceDisabled:Z

    move v1, p11

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->isBecauseCannotSkipBouncer:Z

    move v1, p12

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->isKeyguardGoingAway:Z

    move/from16 v1, p13

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->isFaceSettingEnabledForUser:Z

    move/from16 v1, p14

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->isLockIconPressed:Z

    move/from16 v1, p15

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->isScanningAllowedByStrongAuth:Z

    move/from16 v1, p16

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->isPrimaryUser:Z

    move/from16 v1, p17

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardFaceListenModel;->isSecureCameraLaunched:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/android/keyguard/KeyguardFaceListenModel;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/keyguard/KeyguardFaceListenModel;

    iget-wide v0, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->timeMillis:J

    iget-wide v2, p1, Lcom/android/keyguard/KeyguardFaceListenModel;->timeMillis:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->userId:I

    iget v1, p1, Lcom/android/keyguard/KeyguardFaceListenModel;->userId:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->isListeningForFace:Z

    iget-boolean v1, p1, Lcom/android/keyguard/KeyguardFaceListenModel;->isListeningForFace:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->isBouncer:Z

    iget-boolean v1, p1, Lcom/android/keyguard/KeyguardFaceListenModel;->isBouncer:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->isAuthInterruptActive:Z

    iget-boolean v1, p1, Lcom/android/keyguard/KeyguardFaceListenModel;->isAuthInterruptActive:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->isKeyguardAwake:Z

    iget-boolean v1, p1, Lcom/android/keyguard/KeyguardFaceListenModel;->isKeyguardAwake:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->isListeningForFaceAssistant:Z

    iget-boolean v1, p1, Lcom/android/keyguard/KeyguardFaceListenModel;->isListeningForFaceAssistant:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->isSwitchingUser:Z

    iget-boolean v1, p1, Lcom/android/keyguard/KeyguardFaceListenModel;->isSwitchingUser:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->isFaceDisabled:Z

    iget-boolean v1, p1, Lcom/android/keyguard/KeyguardFaceListenModel;->isFaceDisabled:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->isBecauseCannotSkipBouncer:Z

    iget-boolean v1, p1, Lcom/android/keyguard/KeyguardFaceListenModel;->isBecauseCannotSkipBouncer:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->isKeyguardGoingAway:Z

    iget-boolean v1, p1, Lcom/android/keyguard/KeyguardFaceListenModel;->isKeyguardGoingAway:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->isFaceSettingEnabledForUser:Z

    iget-boolean v1, p1, Lcom/android/keyguard/KeyguardFaceListenModel;->isFaceSettingEnabledForUser:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->isLockIconPressed:Z

    iget-boolean v1, p1, Lcom/android/keyguard/KeyguardFaceListenModel;->isLockIconPressed:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->isScanningAllowedByStrongAuth:Z

    iget-boolean v1, p1, Lcom/android/keyguard/KeyguardFaceListenModel;->isScanningAllowedByStrongAuth:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->isPrimaryUser:Z

    iget-boolean v1, p1, Lcom/android/keyguard/KeyguardFaceListenModel;->isPrimaryUser:Z

    if-ne v0, v1, :cond_0

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->isSecureCameraLaunched:Z

    iget-boolean p1, p1, Lcom/android/keyguard/KeyguardFaceListenModel;->isSecureCameraLaunched:Z

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

.method public final getTimeMillis()J
    .locals 2

    .line 10
    iget-wide v0, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->timeMillis:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->timeMillis:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->userId:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->isListeningForFace:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->isBouncer:Z

    if-eqz v1, :cond_1

    move v1, v2

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->isAuthInterruptActive:Z

    if-eqz v1, :cond_2

    move v1, v2

    :cond_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->isKeyguardAwake:Z

    if-eqz v1, :cond_3

    move v1, v2

    :cond_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->isListeningForFaceAssistant:Z

    if-eqz v1, :cond_4

    move v1, v2

    :cond_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->isSwitchingUser:Z

    if-eqz v1, :cond_5

    move v1, v2

    :cond_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->isFaceDisabled:Z

    if-eqz v1, :cond_6

    move v1, v2

    :cond_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->isBecauseCannotSkipBouncer:Z

    if-eqz v1, :cond_7

    move v1, v2

    :cond_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->isKeyguardGoingAway:Z

    if-eqz v1, :cond_8

    move v1, v2

    :cond_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->isFaceSettingEnabledForUser:Z

    if-eqz v1, :cond_9

    move v1, v2

    :cond_9
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->isLockIconPressed:Z

    if-eqz v1, :cond_a

    move v1, v2

    :cond_a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->isScanningAllowedByStrongAuth:Z

    if-eqz v1, :cond_b

    move v1, v2

    :cond_b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->isPrimaryUser:Z

    if-eqz v1, :cond_c

    move v1, v2

    :cond_c
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->isSecureCameraLaunched:Z

    if-eqz p0, :cond_d

    goto :goto_0

    :cond_d
    move v2, p0

    :goto_0
    add-int/2addr v0, v2

    return v0
.end method

.method public final isListeningForFace()Z
    .locals 0

    .line 12
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->isListeningForFace:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeyguardFaceListenModel(timeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->timeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isListeningForFace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->isListeningForFace:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isBouncer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->isBouncer:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isAuthInterruptActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->isAuthInterruptActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isKeyguardAwake="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->isKeyguardAwake:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isListeningForFaceAssistant="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->isListeningForFaceAssistant:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isSwitchingUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->isSwitchingUser:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isFaceDisabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->isFaceDisabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isBecauseCannotSkipBouncer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->isBecauseCannotSkipBouncer:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isKeyguardGoingAway="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->isKeyguardGoingAway:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isFaceSettingEnabledForUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->isFaceSettingEnabledForUser:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isLockIconPressed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->isLockIconPressed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isScanningAllowedByStrongAuth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->isScanningAllowedByStrongAuth:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isPrimaryUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->isPrimaryUser:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isSecureCameraLaunched="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardFaceListenModel;->isSecureCameraLaunched:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
