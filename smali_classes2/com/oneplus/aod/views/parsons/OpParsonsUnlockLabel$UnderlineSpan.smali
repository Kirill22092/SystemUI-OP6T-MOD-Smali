.class Lcom/oneplus/aod/views/parsons/OpParsonsUnlockLabel$UnderlineSpan;
.super Landroid/text/style/ReplacementSpan;
.source "OpParsonsUnlockLabel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/views/parsons/OpParsonsUnlockLabel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnderlineSpan"
.end annotation


# instance fields
.field private mLeftPadding:I

.field private mLineHeight:I

.field private mRightPadding:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    iput p1, p0, Lcom/oneplus/aod/views/parsons/OpParsonsUnlockLabel$UnderlineSpan;->mLeftPadding:I

    iput p2, p0, Lcom/oneplus/aod/views/parsons/OpParsonsUnlockLabel$UnderlineSpan;->mRightPadding:I

    iput p3, p0, Lcom/oneplus/aod/views/parsons/OpParsonsUnlockLabel$UnderlineSpan;->mLineHeight:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 12

    move-object v0, p0

    move/from16 v1, p8

    move-object v3, p2

    move v4, p3

    move/from16 v5, p4

    move-object/from16 v9, p9

    invoke-virtual {v9, p2, p3, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v10

    iget v2, v0, Lcom/oneplus/aod/views/parsons/OpParsonsUnlockLabel$UnderlineSpan;->mLeftPadding:I

    int-to-float v2, v2

    add-float v2, p5, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->descent()F

    move-result v7

    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->ascent()F

    move-result v8

    add-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    float-to-int v6, v6

    int-to-float v11, v2

    int-to-float v7, v6

    move-object v2, p1

    move v6, v11

    move-object/from16 v8, p9

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    iget v0, v0, Lcom/oneplus/aod/views/parsons/OpParsonsUnlockLabel$UnderlineSpan;->mLineHeight:I

    sub-int v0, v1, v0

    int-to-float v0, v0

    add-float v2, v11, v10

    int-to-float v1, v1

    move-object p0, p1

    move p1, v11

    move p2, v0

    move p3, v2

    move/from16 p4, v1

    move-object/from16 p5, p9

    invoke-virtual/range {p0 .. p5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 0

    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result p1

    iget p2, p0, Lcom/oneplus/aod/views/parsons/OpParsonsUnlockLabel$UnderlineSpan;->mLeftPadding:I

    int-to-float p2, p2

    add-float/2addr p1, p2

    iget p0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsUnlockLabel$UnderlineSpan;->mRightPadding:I

    int-to-float p0, p0

    add-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method
