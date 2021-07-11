.class Lcom/android/systemui/classifier/AnglesClassifier$Data;
.super Ljava/lang/Object;
.source "AnglesClassifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/classifier/AnglesClassifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Data"
.end annotation


# instance fields
.field private mAnglesCount:F

.field private mBiggestAngle:F

.field private mCount:F

.field private mFirstAngleVariance:F

.field private mFirstLength:F

.field private mLastThreePoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/classifier/Point;",
            ">;"
        }
    .end annotation
.end field

.field private mLeftAngles:F

.field private mLength:F

.field private mPreviousAngle:F

.field private mRightAngles:F

.field private mSecondCount:F

.field private mSecondSum:F

.field private mSecondSumSquares:F

.field private mStraightAngles:F

.field private mSum:F

.field private mSumSquares:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mLastThreePoints:Ljava/util/List;

    const/4 v0, 0x0

    .line 114
    iput v0, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mFirstAngleVariance:F

    const v1, 0x40490fdb    # (float)Math.PI

    .line 115
    iput v1, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mPreviousAngle:F

    .line 116
    iput v0, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mBiggestAngle:F

    .line 117
    iput v0, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mSecondSumSquares:F

    iput v0, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mSumSquares:F

    .line 118
    iput v0, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mSecondSum:F

    iput v0, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mSum:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 119
    iput v1, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mSecondCount:F

    iput v1, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mCount:F

    .line 120
    iput v0, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mFirstLength:F

    iput v0, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mLength:F

    .line 121
    iput v0, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mStraightAngles:F

    iput v0, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mRightAngles:F

    iput v0, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mLeftAngles:F

    iput v0, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mAnglesCount:F

    return-void
.end method


# virtual methods
.method public addPoint(Lcom/android/systemui/classifier/Point;)V
    .locals 7

    .line 127
    iget-object v0, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mLastThreePoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mLastThreePoints:Ljava/util/List;

    .line 128
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/classifier/Point;

    invoke-virtual {v0, p1}, Lcom/android/systemui/classifier/Point;->equals(Lcom/android/systemui/classifier/Point;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mLastThreePoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 130
    iget v0, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mLength:F

    iget-object v2, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mLastThreePoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/classifier/Point;

    invoke-virtual {v2, p1}, Lcom/android/systemui/classifier/Point;->dist(Lcom/android/systemui/classifier/Point;)F

    move-result v2

    add-float/2addr v0, v2

    iput v0, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mLength:F

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mLastThreePoints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object p1, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mLastThreePoints:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    .line 134
    iget-object p1, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mLastThreePoints:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 136
    iget-object p1, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mLastThreePoints:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/classifier/Point;

    iget-object v1, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mLastThreePoints:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/classifier/Point;

    iget-object v1, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mLastThreePoints:Ljava/util/List;

    const/4 v2, 0x2

    .line 137
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/classifier/Point;

    .line 136
    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/classifier/Point;->getAngle(Lcom/android/systemui/classifier/Point;Lcom/android/systemui/classifier/Point;)F

    move-result p1

    .line 139
    iget v0, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mAnglesCount:F

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mAnglesCount:F

    float-to-double v2, p1

    const-wide v4, 0x4007e0485c442d18L    # 2.9845130165391645

    cmpg-double v0, v2, v4

    if-gez v0, :cond_2

    .line 141
    iget v0, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mLeftAngles:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mLeftAngles:F

    goto :goto_0

    :cond_2
    const-wide v4, 0x400a63ae4c442d18L    # 3.298672290640422

    cmpg-double v0, v2, v4

    if-gtz v0, :cond_3

    .line 143
    iget v0, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mStraightAngles:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mStraightAngles:F

    goto :goto_0

    .line 145
    :cond_3
    iget v0, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mRightAngles:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mRightAngles:F

    .line 148
    :goto_0
    iget v0, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mPreviousAngle:F

    sub-float v0, p1, v0

    .line 153
    iget v2, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mBiggestAngle:F

    cmpg-float v2, v2, p1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    if-gez v2, :cond_4

    .line 154
    iput p1, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mBiggestAngle:F

    .line 155
    iget v2, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mLength:F

    iput v2, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mFirstLength:F

    .line 156
    iget v2, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mSumSquares:F

    iget v5, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mSum:F

    iget v6, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mCount:F

    invoke-virtual {p0, v2, v5, v6}, Lcom/android/systemui/classifier/AnglesClassifier$Data;->getAnglesVariance(FFF)F

    move-result v2

    iput v2, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mFirstAngleVariance:F

    const/4 v2, 0x0

    .line 157
    iput v2, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mSecondSumSquares:F

    .line 158
    iput v2, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mSecondSum:F

    .line 159
    iput v1, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mSecondCount:F

    goto :goto_1

    .line 161
    :cond_4
    iget v1, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mSecondSum:F

    add-float/2addr v1, v0

    iput v1, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mSecondSum:F

    .line 162
    iget v1, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mSecondSumSquares:F

    mul-float v2, v0, v0

    add-float/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mSecondSumSquares:F

    .line 163
    iget v1, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mSecondCount:F

    float-to-double v1, v1

    add-double/2addr v1, v3

    double-to-float v1, v1

    iput v1, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mSecondCount:F

    .line 166
    :goto_1
    iget v1, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mSum:F

    add-float/2addr v1, v0

    iput v1, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mSum:F

    .line 167
    iget v1, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mSumSquares:F

    mul-float/2addr v0, v0

    add-float/2addr v1, v0

    iput v1, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mSumSquares:F

    .line 168
    iget v0, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mCount:F

    float-to-double v0, v0

    add-double/2addr v0, v3

    double-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mCount:F

    .line 169
    iput p1, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mPreviousAngle:F

    :cond_5
    return-void
.end method

.method public getAnglesPercentage()F
    .locals 4

    .line 194
    iget v0, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mAnglesCount:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 195
    sget-boolean p0, Lcom/android/systemui/classifier/AnglesClassifier;->VERBOSE:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/systemui/classifier/AnglesClassifier;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string v0, "getAnglesPercentage: count==0, result=1"

    invoke-static {p0, v0}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    .line 198
    :cond_1
    iget v0, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mLeftAngles:F

    iget v1, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mRightAngles:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mStraightAngles:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mAnglesCount:F

    div-float/2addr v0, v1

    .line 199
    sget-boolean v1, Lcom/android/systemui/classifier/AnglesClassifier;->VERBOSE:Z

    if-eqz v1, :cond_2

    .line 200
    invoke-static {}, Lcom/android/systemui/classifier/AnglesClassifier;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAnglesPercentage: left="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mLeftAngles:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " right="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mRightAngles:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " straight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mStraightAngles:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mAnglesCount:F

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, " result="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return v0
.end method

.method public getAnglesVariance()F
    .locals 5

    .line 179
    iget v0, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mSumSquares:F

    iget v1, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mSum:F

    iget v2, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mCount:F

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/classifier/AnglesClassifier$Data;->getAnglesVariance(FFF)F

    move-result v0

    .line 180
    sget-boolean v1, Lcom/android/systemui/classifier/AnglesClassifier;->VERBOSE:Z

    if-eqz v1, :cond_0

    .line 181
    invoke-static {}, Lcom/android/systemui/classifier/AnglesClassifier;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAnglesVariance: (first pass) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-static {}, Lcom/android/systemui/classifier/AnglesClassifier;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   - mFirstLength="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mFirstLength:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-static {}, Lcom/android/systemui/classifier/AnglesClassifier;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   - mLength="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mLength:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :cond_0
    iget v1, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mFirstLength:F

    iget v2, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mLength:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 186
    iget v1, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mFirstAngleVariance:F

    iget v2, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mSecondSumSquares:F

    iget v3, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mSecondSum:F

    iget v4, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mSecondCount:F

    .line 187
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/systemui/classifier/AnglesClassifier$Data;->getAnglesVariance(FFF)F

    move-result p0

    add-float/2addr v1, p0

    .line 186
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 188
    sget-boolean p0, Lcom/android/systemui/classifier/AnglesClassifier;->VERBOSE:Z

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/android/systemui/classifier/AnglesClassifier;->access$000()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAnglesVariance: (second pass) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v0
.end method

.method public getAnglesVariance(FFF)F
    .locals 0

    div-float/2addr p1, p3

    div-float/2addr p2, p3

    mul-float/2addr p2, p2

    sub-float/2addr p1, p2

    return p1
.end method
