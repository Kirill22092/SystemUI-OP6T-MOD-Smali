.class Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;
.super Ljava/lang/Object;
.source "SpeedAnglesClassifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/classifier/SpeedAnglesClassifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Data"
.end annotation


# instance fields
.field private final ANGLE_DEVIATION:F

.field private final DURATION_SCALE:F

.field private final LENGTH_SCALE:F

.field private mAcceleratingAngles:F

.field private mAnglesCount:F

.field private mCount:F

.field private mDist:F

.field private mLastThreePoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/classifier/Point;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousAngle:F

.field private mPreviousPoint:Lcom/android/systemui/classifier/Point;

.field private mSum:F

.field private mSumSquares:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x4cbebc20    # 1.0E8f

    .line 85
    iput v0, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->DURATION_SCALE:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 86
    iput v0, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->LENGTH_SCALE:F

    const v1, 0x3ea0d97c

    .line 87
    iput v1, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->ANGLE_DEVIATION:F

    .line 89
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mLastThreePoints:Ljava/util/List;

    const/4 v1, 0x0

    .line 100
    iput-object v1, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mPreviousPoint:Lcom/android/systemui/classifier/Point;

    const v1, 0x40490fdb    # (float)Math.PI

    .line 101
    iput v1, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mPreviousAngle:F

    const/4 v1, 0x0

    .line 102
    iput v1, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mSumSquares:F

    .line 103
    iput v1, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mSum:F

    .line 104
    iput v0, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mCount:F

    .line 105
    iput v1, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mDist:F

    .line 106
    iput v1, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mAcceleratingAngles:F

    iput v1, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mAnglesCount:F

    return-void
.end method


# virtual methods
.method public addPoint(Lcom/android/systemui/classifier/Point;)V
    .locals 4

    .line 110
    iget-object v0, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mPreviousPoint:Lcom/android/systemui/classifier/Point;

    if-eqz v0, :cond_0

    .line 111
    iget v1, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mDist:F

    invoke-virtual {v0, p1}, Lcom/android/systemui/classifier/Point;->dist(Lcom/android/systemui/classifier/Point;)F

    move-result v0

    add-float/2addr v1, v0

    iput v1, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mDist:F

    .line 114
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mPreviousPoint:Lcom/android/systemui/classifier/Point;

    .line 115
    new-instance v0, Lcom/android/systemui/classifier/Point;

    iget-wide v1, p1, Lcom/android/systemui/classifier/Point;->timeOffsetNano:J

    long-to-float p1, v1

    const v1, 0x4cbebc20    # 1.0E8f

    div-float/2addr p1, v1

    iget v1, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mDist:F

    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v1, v2

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/classifier/Point;-><init>(FF)V

    .line 120
    iget-object p1, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mLastThreePoints:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mLastThreePoints:Ljava/util/List;

    .line 121
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/classifier/Point;

    invoke-virtual {p1, v0}, Lcom/android/systemui/classifier/Point;->equals(Lcom/android/systemui/classifier/Point;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 122
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mLastThreePoints:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object p1, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mLastThreePoints:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 124
    iget-object p1, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mLastThreePoints:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 126
    iget-object p1, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mLastThreePoints:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/classifier/Point;

    iget-object v1, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mLastThreePoints:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/classifier/Point;

    iget-object v1, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mLastThreePoints:Ljava/util/List;

    const/4 v3, 0x2

    .line 127
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/classifier/Point;

    .line 126
    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/classifier/Point;->getAngle(Lcom/android/systemui/classifier/Point;Lcom/android/systemui/classifier/Point;)F

    move-result p1

    .line 129
    iget v0, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mAnglesCount:F

    add-float/2addr v0, v2

    iput v0, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mAnglesCount:F

    const v0, 0x4034f4ac

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_2

    .line 131
    iget v0, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mAcceleratingAngles:F

    add-float/2addr v0, v2

    iput v0, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mAcceleratingAngles:F

    .line 134
    :cond_2
    iget v0, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mPreviousAngle:F

    sub-float v0, p1, v0

    .line 135
    iget v1, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mSum:F

    add-float/2addr v1, v0

    iput v1, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mSum:F

    .line 136
    iget v1, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mSumSquares:F

    mul-float/2addr v0, v0

    add-float/2addr v1, v0

    iput v1, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mSumSquares:F

    .line 137
    iget v0, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mCount:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mCount:F

    .line 138
    iput p1, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mPreviousAngle:F

    :cond_3
    return-void
.end method

.method public getAnglesPercentage()F
    .locals 3

    .line 153
    iget v0, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mAnglesCount:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    .line 156
    :cond_0
    iget v1, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mAcceleratingAngles:F

    div-float/2addr v1, v0

    .line 157
    sget-boolean v0, Lcom/android/systemui/classifier/SpeedAnglesClassifier;->VERBOSE:Z

    if-eqz v0, :cond_1

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAnglesPercentage: angles="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mAcceleratingAngles:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " count="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mAnglesCount:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, " result="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SPD_ANG"

    invoke-static {v0, p0}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v1
.end method

.method public getAnglesVariance()F
    .locals 4

    .line 144
    iget v0, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mSumSquares:F

    iget v1, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mCount:F

    div-float/2addr v0, v1

    iget v2, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mSum:F

    div-float v3, v2, v1

    div-float/2addr v2, v1

    mul-float/2addr v3, v2

    sub-float/2addr v0, v3

    .line 145
    sget-boolean v1, Lcom/android/systemui/classifier/SpeedAnglesClassifier;->VERBOSE:Z

    if-eqz v1, :cond_0

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAnglesVariance: sum^2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mSumSquares:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mCount:F

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, " result="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SPD_ANG"

    invoke-static {v1, p0}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v0
.end method
