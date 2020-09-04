.class public final Lcom/android/systemui/assist/ui/EdgeLight;
.super Ljava/lang/Object;
.source "EdgeLight.java"


# instance fields
.field private mColor:I

.field private mLength:F

.field private mOffset:F


# direct methods
.method public constructor <init>(IFF)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p1, p0, Lcom/android/systemui/assist/ui/EdgeLight;->mColor:I

    .line 48
    iput p2, p0, Lcom/android/systemui/assist/ui/EdgeLight;->mOffset:F

    .line 49
    iput p3, p0, Lcom/android/systemui/assist/ui/EdgeLight;->mLength:F

    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 0

    .line 61
    iget p0, p0, Lcom/android/systemui/assist/ui/EdgeLight;->mColor:I

    return p0
.end method

.method public getLength()F
    .locals 0

    .line 71
    iget p0, p0, Lcom/android/systemui/assist/ui/EdgeLight;->mLength:F

    return p0
.end method

.method public getOffset()F
    .locals 0

    .line 84
    iget p0, p0, Lcom/android/systemui/assist/ui/EdgeLight;->mOffset:F

    return p0
.end method

.method public setColor(I)V
    .locals 0

    .line 66
    iput p1, p0, Lcom/android/systemui/assist/ui/EdgeLight;->mColor:I

    return-void
.end method

.method public setLength(F)V
    .locals 0

    .line 76
    iput p1, p0, Lcom/android/systemui/assist/ui/EdgeLight;->mLength:F

    return-void
.end method

.method public setOffset(F)V
    .locals 0

    .line 92
    iput p1, p0, Lcom/android/systemui/assist/ui/EdgeLight;->mOffset:F

    return-void
.end method
