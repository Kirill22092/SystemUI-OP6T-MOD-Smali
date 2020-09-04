.class public Lcom/oneplus/lib/widget/NumericTextView;
.super Landroid/widget/TextView;
.source "NumericTextView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/NumericTextView$OnValueChangedListener;
    }
.end annotation


# static fields
.field private static final LOG_RADIX:D


# instance fields
.field private mCount:I

.field private mListener:Lcom/oneplus/lib/widget/NumericTextView$OnValueChangedListener;

.field private mMaxCount:I

.field private mMaxValue:I

.field private mMinValue:I

.field private mPreviousValue:I

.field private mShowLeadingZeroes:Z

.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    .line 22
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sput-wide v0, Lcom/oneplus/lib/widget/NumericTextView;->LOG_RADIX:D

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 24
    iput p1, p0, Lcom/oneplus/lib/widget/NumericTextView;->mMinValue:I

    const/16 p1, 0x63

    .line 25
    iput p1, p0, Lcom/oneplus/lib/widget/NumericTextView;->mMaxValue:I

    const/4 p1, 0x2

    .line 28
    iput p1, p0, Lcom/oneplus/lib/widget/NumericTextView;->mMaxCount:I

    const/4 p1, 0x1

    .line 30
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/NumericTextView;->mShowLeadingZeroes:Z

    .line 49
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setFocusable(Z)V

    return-void
.end method

.method private handleKeyUp(I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x43

    if-ne p1, v2, :cond_0

    .line 250
    iget p1, p0, Lcom/oneplus/lib/widget/NumericTextView;->mCount:I

    if-lez p1, :cond_1

    .line 251
    iget v2, p0, Lcom/oneplus/lib/widget/NumericTextView;->mValue:I

    div-int/lit8 v2, v2, 0xa

    iput v2, p0, Lcom/oneplus/lib/widget/NumericTextView;->mValue:I

    sub-int/2addr p1, v1

    .line 252
    iput p1, p0, Lcom/oneplus/lib/widget/NumericTextView;->mCount:I

    goto :goto_0

    .line 254
    :cond_0
    invoke-static {p1}, Lcom/oneplus/lib/widget/NumericTextView;->isKeyCodeNumeric(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 255
    iget v2, p0, Lcom/oneplus/lib/widget/NumericTextView;->mCount:I

    iget v3, p0, Lcom/oneplus/lib/widget/NumericTextView;->mMaxCount:I

    if-ge v2, v3, :cond_1

    .line 256
    invoke-static {p1}, Lcom/oneplus/lib/widget/NumericTextView;->numericKeyCodeToInt(I)I

    move-result p1

    .line 257
    iget v2, p0, Lcom/oneplus/lib/widget/NumericTextView;->mValue:I

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v2, p1

    .line 258
    iget p1, p0, Lcom/oneplus/lib/widget/NumericTextView;->mMaxValue:I

    if-gt v2, p1, :cond_1

    .line 259
    iput v2, p0, Lcom/oneplus/lib/widget/NumericTextView;->mValue:I

    .line 260
    iget p1, p0, Lcom/oneplus/lib/widget/NumericTextView;->mCount:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/oneplus/lib/widget/NumericTextView;->mCount:I

    .line 268
    :cond_1
    :goto_0
    iget p1, p0, Lcom/oneplus/lib/widget/NumericTextView;->mCount:I

    if-lez p1, :cond_2

    .line 272
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%0"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/lib/widget/NumericTextView;->mCount:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "d"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v2, v1, [Ljava/lang/Object;

    iget v3, p0, Lcom/oneplus/lib/widget/NumericTextView;->mValue:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const-string p1, ""

    .line 277
    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object p1, p0, Lcom/oneplus/lib/widget/NumericTextView;->mListener:Lcom/oneplus/lib/widget/NumericTextView$OnValueChangedListener;

    if-eqz p1, :cond_6

    .line 280
    iget p1, p0, Lcom/oneplus/lib/widget/NumericTextView;->mValue:I

    iget v2, p0, Lcom/oneplus/lib/widget/NumericTextView;->mMinValue:I

    if-lt p1, v2, :cond_3

    move p1, v1

    goto :goto_2

    :cond_3
    move p1, v0

    .line 281
    :goto_2
    iget v2, p0, Lcom/oneplus/lib/widget/NumericTextView;->mCount:I

    iget v3, p0, Lcom/oneplus/lib/widget/NumericTextView;->mMaxCount:I

    if-ge v2, v3, :cond_4

    iget v2, p0, Lcom/oneplus/lib/widget/NumericTextView;->mValue:I

    mul-int/lit8 v2, v2, 0xa

    iget v3, p0, Lcom/oneplus/lib/widget/NumericTextView;->mMaxValue:I

    if-le v2, v3, :cond_5

    :cond_4
    move v0, v1

    .line 282
    :cond_5
    iget-object v2, p0, Lcom/oneplus/lib/widget/NumericTextView;->mListener:Lcom/oneplus/lib/widget/NumericTextView$OnValueChangedListener;

    iget v3, p0, Lcom/oneplus/lib/widget/NumericTextView;->mValue:I

    invoke-interface {v2, p0, v3, p1, v0}, Lcom/oneplus/lib/widget/NumericTextView$OnValueChangedListener;->onValueChanged(Lcom/oneplus/lib/widget/NumericTextView;IZZ)V

    :cond_6
    return v1

    :cond_7
    return v0
.end method

.method private static isKeyCodeNumeric(I)Z
    .locals 1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0xb

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0xe

    if-eq p0, v0, :cond_1

    const/16 v0, 0xf

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10

    if-ne p0, v0, :cond_0

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

.method private static numericKeyCodeToInt(I)I
    .locals 0

    add-int/lit8 p0, p0, -0x7

    return p0
.end method

.method private updateDisplayedValue()V
    .locals 4

    .line 183
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/NumericTextView;->mShowLeadingZeroes:Z

    if-eqz v0, :cond_0

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/lib/widget/NumericTextView;->mMaxCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "%d"

    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 191
    iget v3, p0, Lcom/oneplus/lib/widget/NumericTextView;->mValue:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateMinimumWidth()V
    .locals 7

    .line 201
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 204
    :goto_0
    iget v4, p0, Lcom/oneplus/lib/widget/NumericTextView;->mMaxValue:I

    if-ge v2, v4, :cond_1

    .line 205
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/oneplus/lib/widget/NumericTextView;->mMaxCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "d"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    invoke-virtual {p0, v1, v1}, Landroid/widget/TextView;->measure(II)V

    .line 208
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    if-le v4, v3, :cond_0

    move v3, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 214
    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 216
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setMinimumWidth(I)V

    return-void
.end method


# virtual methods
.method public final getValue()I
    .locals 0

    .line 112
    iget p0, p0, Lcom/oneplus/lib/widget/NumericTextView;->mValue:I

    return p0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 54
    invoke-super {p0, p1, p2, p3}, Landroid/widget/TextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    const-string p2, ""

    if-eqz p1, :cond_0

    .line 57
    iget p1, p0, Lcom/oneplus/lib/widget/NumericTextView;->mValue:I

    iput p1, p0, Lcom/oneplus/lib/widget/NumericTextView;->mPreviousValue:I

    const/4 p1, 0x0

    .line 58
    iput p1, p0, Lcom/oneplus/lib/widget/NumericTextView;->mValue:I

    .line 59
    iput p1, p0, Lcom/oneplus/lib/widget/NumericTextView;->mCount:I

    .line 62
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 63
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 65
    :cond_0
    iget p1, p0, Lcom/oneplus/lib/widget/NumericTextView;->mCount:I

    if-nez p1, :cond_1

    .line 67
    iget p1, p0, Lcom/oneplus/lib/widget/NumericTextView;->mPreviousValue:I

    iput p1, p0, Lcom/oneplus/lib/widget/NumericTextView;->mValue:I

    .line 69
    invoke-virtual {p0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 74
    :cond_1
    iget p1, p0, Lcom/oneplus/lib/widget/NumericTextView;->mValue:I

    iget p2, p0, Lcom/oneplus/lib/widget/NumericTextView;->mMinValue:I

    if-ge p1, p2, :cond_2

    .line 75
    iput p2, p0, Lcom/oneplus/lib/widget/NumericTextView;->mValue:I

    .line 78
    :cond_2
    iget p1, p0, Lcom/oneplus/lib/widget/NumericTextView;->mValue:I

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/NumericTextView;->setValue(I)V

    .line 80
    iget-object p1, p0, Lcom/oneplus/lib/widget/NumericTextView;->mListener:Lcom/oneplus/lib/widget/NumericTextView$OnValueChangedListener;

    if-eqz p1, :cond_3

    .line 81
    iget p2, p0, Lcom/oneplus/lib/widget/NumericTextView;->mValue:I

    const/4 p3, 0x1

    invoke-interface {p1, p0, p2, p3, p3}, Lcom/oneplus/lib/widget/NumericTextView$OnValueChangedListener;->onValueChanged(Lcom/oneplus/lib/widget/NumericTextView;IZZ)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 229
    invoke-static {p1}, Lcom/oneplus/lib/widget/NumericTextView;->isKeyCodeNumeric(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x43

    if-eq p1, v0, :cond_1

    .line 231
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

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

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1

    .line 236
    invoke-static {p1}, Lcom/oneplus/lib/widget/NumericTextView;->isKeyCodeNumeric(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x43

    if-eq p1, v0, :cond_1

    .line 238
    invoke-super {p0, p1, p2, p3}, Landroid/widget/TextView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

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

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 243
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/NumericTextView;->handleKeyUp(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 244
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onKeyUp(ILandroid/view/KeyEvent;)Z

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

.method public final setOnDigitEnteredListener(Lcom/oneplus/lib/widget/NumericTextView$OnValueChangedListener;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/oneplus/lib/widget/NumericTextView;->mListener:Lcom/oneplus/lib/widget/NumericTextView$OnValueChangedListener;

    return-void
.end method

.method public final setRange(II)V
    .locals 2

    .line 122
    iget v0, p0, Lcom/oneplus/lib/widget/NumericTextView;->mMinValue:I

    if-eq v0, p1, :cond_0

    .line 123
    iput p1, p0, Lcom/oneplus/lib/widget/NumericTextView;->mMinValue:I

    .line 126
    :cond_0
    iget p1, p0, Lcom/oneplus/lib/widget/NumericTextView;->mMaxValue:I

    if-eq p1, p2, :cond_1

    .line 127
    iput p2, p0, Lcom/oneplus/lib/widget/NumericTextView;->mMaxValue:I

    int-to-double p1, p2

    .line 128
    invoke-static {p1, p2}, Ljava/lang/Math;->log(D)D

    move-result-wide p1

    sget-wide v0, Lcom/oneplus/lib/widget/NumericTextView;->LOG_RADIX:D

    div-double/2addr p1, v0

    double-to-int p1, p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/oneplus/lib/widget/NumericTextView;->mMaxCount:I

    .line 130
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumericTextView;->updateMinimumWidth()V

    .line 131
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumericTextView;->updateDisplayedValue()V

    :cond_1
    return-void
.end method

.method public final setShowLeadingZeroes(Z)V
    .locals 1

    .line 164
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/NumericTextView;->mShowLeadingZeroes:Z

    if-eq v0, p1, :cond_0

    .line 165
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/NumericTextView;->mShowLeadingZeroes:Z

    .line 167
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumericTextView;->updateDisplayedValue()V

    :cond_0
    return-void
.end method

.method public final setValue(I)V
    .locals 1

    .line 96
    iget v0, p0, Lcom/oneplus/lib/widget/NumericTextView;->mValue:I

    if-eq v0, p1, :cond_0

    .line 97
    iput p1, p0, Lcom/oneplus/lib/widget/NumericTextView;->mValue:I

    .line 99
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumericTextView;->updateDisplayedValue()V

    :cond_0
    return-void
.end method
