.class final enum Lcom/android/systemui/statusbar/phone/ScrimState$7;
.super Lcom/android/systemui/statusbar/phone/ScrimState;
.source "ScrimState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/ScrimState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 151
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/ScrimState;-><init>(Ljava/lang/String;ILcom/android/systemui/statusbar/phone/ScrimState$1;)V

    return-void
.end method


# virtual methods
.method public getBehindAlpha()F
    .locals 1

    .line 175
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mWallpaperSupportsAmbientMode:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mHasBackdrop:Z

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_0
    return p0
.end method

.method public isLowPowerState()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public prepare(Lcom/android/systemui/statusbar/phone/ScrimState;)V
    .locals 2

    .line 154
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result p1

    .line 155
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mDockManager:Lcom/android/systemui/dock/DockManager;

    invoke-interface {v0}, Lcom/android/systemui/dock/DockManager;->isDocked()Z

    move-result v0

    .line 156
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mDisplayRequiresBlanking:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBlankScreen:Z

    const/high16 v1, -0x1000000

    .line 158
    iput v1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mFrontTint:I

    if-nez p1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_1

    .line 159
    :cond_1
    :goto_0
    iget p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mAodFrontScrimAlpha:F

    :goto_1
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mFrontAlpha:F

    .line 161
    iput v1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBehindTint:I

    const/4 p1, 0x0

    .line 162
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBehindAlpha:F

    const/4 v0, 0x0

    .line 164
    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBubbleTint:I

    .line 165
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBubbleAlpha:F

    const-wide/16 v0, 0x3e8

    .line 167
    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mAnimationDuration:J

    .line 170
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->shouldControlScreenOff()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mAnimateChange:Z

    return-void
.end method
