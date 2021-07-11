.class final enum Lcom/android/systemui/statusbar/phone/ScrimState$2;
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

    .line 69
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/ScrimState;-><init>(Ljava/lang/String;ILcom/android/systemui/statusbar/phone/ScrimState$1;)V

    return-void
.end method


# virtual methods
.method public prepare(Lcom/android/systemui/statusbar/phone/ScrimState;)V
    .locals 4

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBlankScreen:Z

    .line 73
    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    const-wide/16 v2, 0x1f4

    if-ne p1, v1, :cond_0

    .line 74
    iput-wide v2, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mAnimationDuration:J

    .line 75
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mDisplayRequiresBlanking:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 79
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBlankScreen:Z

    goto :goto_0

    .line 81
    :cond_0
    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->KEYGUARD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne p1, v1, :cond_1

    .line 82
    iput-wide v2, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mAnimationDuration:J

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0xdc

    .line 84
    iput-wide v1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mAnimationDuration:J

    :cond_2
    :goto_0
    const/high16 p1, -0x1000000

    .line 86
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mFrontTint:I

    .line 87
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBehindTint:I

    .line 88
    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBubbleTint:I

    const/4 p1, 0x0

    .line 90
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mFrontAlpha:F

    .line 91
    iget v1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mScrimBehindAlphaKeyguard:F

    iput v1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBehindAlpha:F

    .line 92
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBubbleAlpha:F

    .line 95
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mAnimateChange:Z

    return-void
.end method
