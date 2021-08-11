.class public final Lcom/android/systemui/assist/ui/EdgeLight;
.super Ljava/lang/Object;
.source "EdgeLight.java"


# instance fields
.field private mColor:I

.field private mLength:F

.field private mStart:F


# direct methods
.method public constructor <init>(IFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/assist/ui/EdgeLight;->mColor:I

    iput p2, p0, Lcom/android/systemui/assist/ui/EdgeLight;->mStart:F

    iput p3, p0, Lcom/android/systemui/assist/ui/EdgeLight;->mLength:F

    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/assist/ui/EdgeLight;->mColor:I

    return p0
.end method

.method public getLength()F
    .locals 0

    iget p0, p0, Lcom/android/systemui/assist/ui/EdgeLight;->mLength:F

    return p0
.end method

.method public getStart()F
    .locals 0

    iget p0, p0, Lcom/android/systemui/assist/ui/EdgeLight;->mStart:F

    return p0
.end method

.method public setColor(I)Z
    .locals 1

    iget v0, p0, Lcom/android/systemui/assist/ui/EdgeLight;->mColor:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput p1, p0, Lcom/android/systemui/assist/ui/EdgeLight;->mColor:I

    return v0
.end method

.method public setEndpoints(FF)V
    .locals 1

    cmpl-float v0, p1, p2

    if-lez v0, :cond_0

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, p0, v0

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, p0, p1

    const-string p1, "Endpoint must be >= start (add 1 if necessary). Got [%f, %f]"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "EdgeLight"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput p1, p0, Lcom/android/systemui/assist/ui/EdgeLight;->mStart:F

    sub-float/2addr p2, p1

    iput p2, p0, Lcom/android/systemui/assist/ui/EdgeLight;->mLength:F

    return-void
.end method
