.class Lcom/google/android/material/indicator/animation/type/WormAnimation$RectValues;
.super Ljava/lang/Object;
.source "WormAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/indicator/animation/type/WormAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RectValues"
.end annotation


# instance fields
.field final fromX:I

.field final reverseFromX:I

.field final reverseToX:I

.field final toX:I


# direct methods
.method constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/material/indicator/animation/type/WormAnimation$RectValues;->fromX:I

    iput p2, p0, Lcom/google/android/material/indicator/animation/type/WormAnimation$RectValues;->toX:I

    iput p3, p0, Lcom/google/android/material/indicator/animation/type/WormAnimation$RectValues;->reverseFromX:I

    iput p4, p0, Lcom/google/android/material/indicator/animation/type/WormAnimation$RectValues;->reverseToX:I

    return-void
.end method
