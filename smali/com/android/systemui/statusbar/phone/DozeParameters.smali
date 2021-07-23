.class public Lcom/android/systemui/statusbar/phone/DozeParameters;
.super Ljava/lang/Object;
.source "DozeParameters.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;
.implements Lcom/android/systemui/plugins/statusbar/DozeParameters;


# static fields
.field public static final FORCE_BLANKING:Z

.field public static final FORCE_NO_BLANKING:Z


# instance fields
.field private final mAlwaysOnPolicy:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

.field private final mAmbientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

.field private mControlScreenOffAnimation:Z

.field private mDozeAlwaysOn:Z

.field private final mPowerManager:Landroid/os/PowerManager;

.field private final mResources:Landroid/content/res/Resources;

.field private mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "debug.force_no_blanking"

    const/4 v1, 0x0

    .line 60
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/DozeParameters;->FORCE_NO_BLANKING:Z

    const-string v0, "debug.force_blanking"

    .line 62
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/DozeParameters;->FORCE_BLANKING:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/res/Resources;Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;Landroid/os/PowerManager;Lcom/android/systemui/tuner/TunerService;)V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 73
    iput v0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mUserId:I

    .line 83
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mResources:Landroid/content/res/Resources;

    .line 84
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mAmbientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 85
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mAlwaysOnPolicy:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    .line 87
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getDisplayNeedsBlanking()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mControlScreenOffAnimation:Z

    .line 88
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mPowerManager:Landroid/os/PowerManager;

    .line 90
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mUserId:I

    .line 91
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "DozeParameters init:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DozeParameters"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mPowerManager:Landroid/os/PowerManager;

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mControlScreenOffAnimation:Z

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/PowerManager;->setDozeAfterScreenOff(Z)V

    if-eqz p5, :cond_0

    const-string p1, "doze_always_on"

    const-string p2, "accessibility_display_inversion_enabled"

    .line 97
    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p0, p1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private getBoolean(Ljava/lang/String;I)Z
    .locals 0

    .line 262
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    invoke-static {p1, p0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private getInt(Ljava/lang/String;I)I
    .locals 0

    .line 266
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    invoke-static {p1, p0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x0

    const p2, 0xea60

    .line 267
    invoke-static {p0, p1, p2}, Landroid/util/MathUtils;->constrain(III)I

    move-result p0

    return p0
.end method


# virtual methods
.method public doubleTapReportsTouchCoordinates()Z
    .locals 1

    .line 275
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/android/systemui/R$bool;->doze_double_tap_reports_touch_coordinates:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public getAlwaysOn()Z
    .locals 0

    .line 219
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mDozeAlwaysOn:Z

    return p0
.end method

.method public getDisplayNeedsBlanking()Z
    .locals 1

    .line 229
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/DozeParameters;->FORCE_BLANKING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/DozeParameters;->FORCE_NO_BLANKING:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mResources:Landroid/content/res/Resources;

    const v0, 0x1110057

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public getDisplayStateSupported()Z
    .locals 2

    .line 124
    sget v0, Lcom/android/systemui/R$bool;->doze_display_state_supported:I

    const-string v1, "doze.display.supported"

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getBoolean(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public getDozeSuspendDisplayStateSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getPickupVibrationThreshold()I
    .locals 2

    .line 192
    sget v0, Lcom/android/systemui/R$integer;->doze_pickup_vibration_threshold:I

    const-string v1, "doze.pickup.vibration.threshold"

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getPolicy()Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;
    .locals 0

    .line 284
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mAlwaysOnPolicy:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    return-object p0
.end method

.method public getProxCheckBeforePulse()Z
    .locals 2

    .line 188
    sget v0, Lcom/android/systemui/R$bool;->doze_proximity_check_before_pulse:I

    const-string v1, "doze.pulse.proxcheck"

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getBoolean(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public getPulseOnSigMotion()Z
    .locals 2

    .line 176
    sget v0, Lcom/android/systemui/R$bool;->doze_pulse_on_significant_motion:I

    const-string v1, "doze.pulse.sigmotion"

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getBoolean(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public getPulseVisibleDuration(I)I
    .registers 5
    .param p1, "n"    # I

    .prologue
    const/4 v2, 0x3

    .line 418
    invoke-static {}, Lcom/oneplus/aod/OpAodUtils;->isAlwaysOnEnabled()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 419
    const v0, 0x7fffffff

    .line 436
    .local v0, "b":I
    :goto_a
    return v0

    .line 421
    .end local v0    # "b":I
    :cond_b
    const/16 v1, 0xa

    if-ne p1, v1, :cond_18

    .line 422
    const-string v1, "op_doze_three_key_pulse_duration_visible"

    invoke-static {v1, v2}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v1

    mul-int/lit16 v0, v1, 0x3e8

    .restart local v0    # "b":I
    goto :goto_a

    .line 424
    .end local v0    # "b":I
    :cond_18
    if-ne p1, v2, :cond_23

    .line 425
    const-string v1, "op_doze_pick_up_pulse_duration_visible"

    invoke-static {v1, v2}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v1

    mul-int/lit16 v0, v1, 0x3e8

    .restart local v0    # "b":I
    goto :goto_a

    .line 427
    .end local v0    # "b":I
    :cond_23
    const/16 v1, 0xc

    if-ne p1, v1, :cond_30

    .line 428
    const-string v1, "op_doze_single_tap_pulse_duration_visible"

    invoke-static {v1, v2}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v1

    mul-int/lit16 v0, v1, 0x3e8

    .restart local v0    # "b":I
    goto :goto_a

    .line 430
    .end local v0    # "b":I
    :cond_30
    const/16 v1, 0xd

    if-ne p1, v1, :cond_3d

    .line 431
    const-string v1, "op_doze_fingerprint_poke_pulse_duration_visible"

    invoke-static {v1, v2}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v1

    mul-int/lit16 v0, v1, 0x3e8

    .restart local v0    # "b":I
    goto :goto_a

    .line 434
    .end local v0    # "b":I
    :cond_3d
    const-string v1, "op_doze_pulse_duration_visible"

    const/16 v2, 0x1388

    invoke-static {v1, v2}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v1

    mul-int/lit16 v0, v1, 0x3e8

    .restart local v0    # "b":I
    goto :goto_a
.end method

.method public getScreenBrightnessDoze()F
    .locals 1

    .line 139
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mResources:Landroid/content/res/Resources;

    const v0, 0x10e00b2

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p0, v0

    return p0
.end method

.method public getWallpaperAodDuration()J
    .locals 2

    .line 200
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->shouldControlScreenOff()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x9c4

    return-wide v0

    .line 203
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mAlwaysOnPolicy:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    iget-wide v0, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->wallpaperVisibilityDuration:J

    return-wide v0
.end method

.method public getWallpaperFadeOutDuration()J
    .locals 2

    .line 211
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mAlwaysOnPolicy:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    iget-wide v0, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->wallpaperFadeOutDuration:J

    return-wide v0
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 280
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mAmbientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

    const/4 p2, -0x2

    invoke-virtual {p1, p2}, Landroid/hardware/display/AmbientDisplayConfiguration;->alwaysOnEnabled(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mDozeAlwaysOn:Z

    return-void
.end method

.method public setControlScreenOffAnimation(Z)V
    .locals 2

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setControlScreenOffAnimation, controlScreenOffAnimation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", stack:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    .line 240
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DozeParameters"

    .line 238
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 251
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mControlScreenOffAnimation:Z

    if-ne v1, p1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mUserId:I

    if-ne v0, v1, :cond_0

    return-void

    .line 255
    :cond_0
    iput v0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mUserId:I

    .line 257
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mControlScreenOffAnimation:Z

    .line 258
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mPowerManager:Landroid/os/PowerManager;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/PowerManager;->setDozeAfterScreenOff(Z)V

    return-void
.end method

.method public shouldControlScreenOff()Z
    .locals 0

    .line 234
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mControlScreenOffAnimation:Z

    return p0
.end method
