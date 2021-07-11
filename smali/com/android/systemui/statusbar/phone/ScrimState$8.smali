.class final enum Lcom/android/systemui/statusbar/phone/ScrimState$8;
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

    .line 187
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/ScrimState;-><init>(Ljava/lang/String;ILcom/android/systemui/statusbar/phone/ScrimState$1;)V

    return-void
.end method


# virtual methods
.method public getBehindAlpha()F
    .locals 0

    .line 207
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mWakeLockScreenSensorActive:Z

    if-eqz p0, :cond_0

    const p0, 0x3f19999a    # 0.6f

    goto :goto_0

    .line 208
    :cond_0
    sget-object p0, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimState;->getBehindAlpha()F

    move-result p0

    :goto_0
    return p0
.end method

.method public prepare(Lcom/android/systemui/statusbar/phone/ScrimState;)V
    .locals 3

    .line 190
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mAodFrontScrimAlpha:F

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mFrontAlpha:F

    const/4 v0, 0x0

    .line 191
    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBubbleAlpha:F

    const/high16 v0, -0x1000000

    .line 192
    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBehindTint:I

    .line 193
    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mFrontTint:I

    .line 194
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mDisplayRequiresBlanking:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBlankScreen:Z

    .line 195
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mWakeLockScreenSensorActive:Z

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x3e8

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0xdc

    .line 196
    :goto_0
    iput-wide v1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mAnimationDuration:J

    .line 200
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mWakeLockScreenSensorActive:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne p1, v1, :cond_1

    .line 201
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/systemui/statusbar/phone/ScrimState;->updateScrimColor(Lcom/android/systemui/statusbar/ScrimView;FI)V

    :cond_1
    return-void
.end method
