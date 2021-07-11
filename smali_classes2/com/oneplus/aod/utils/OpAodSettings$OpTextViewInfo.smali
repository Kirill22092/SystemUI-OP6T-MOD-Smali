.class public Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;
.super Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;
.source "OpAodSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/utils/OpAodSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OpTextViewInfo"
.end annotation


# instance fields
.field mFollowSystemFont:Z

.field mFontFamily:I

.field mTextFontWeight:I

.field mTextSizeId:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 397
    invoke-direct {p0}, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;-><init>()V

    const/4 v0, -0x1

    .line 393
    iput v0, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;->mTextFontWeight:I

    .line 399
    iput v0, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;->mFontFamily:I

    .line 400
    iput v0, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;->mTextSizeId:I

    const/4 v0, 0x1

    .line 401
    iput-boolean v0, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;->mFollowSystemFont:Z

    return-void
.end method


# virtual methods
.method public getFontFamily()I
    .locals 0

    .line 413
    iget p0, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;->mFontFamily:I

    return p0
.end method

.method public getTextFontWeight()I
    .locals 0

    .line 421
    iget p0, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;->mTextFontWeight:I

    return p0
.end method

.method public getTextSize(Landroid/content/Context;)I
    .locals 1

    .line 425
    iget v0, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;->mTextSizeId:I

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->getSize(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public getTextSizeId()I
    .locals 0

    .line 417
    iget p0, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;->mTextSizeId:I

    return p0
.end method

.method public isFollowSystemFont()Z
    .locals 0

    .line 429
    iget-boolean p0, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;->mFollowSystemFont:Z

    return p0
.end method

.method parse(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V
    .locals 0

    .line 405
    invoke-super {p0, p1, p2}, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->parse(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    .line 407
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p2

    .line 408
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;->parseTextAppearance(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 409
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;->parseOpFont(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method protected parseOpFont(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 456
    sget-object v0, Lcom/android/systemui/R$styleable;->OpAodFont:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 458
    sget p2, Lcom/android/systemui/R$styleable;->OpAodFont_followSystemFont:I

    iget-boolean v0, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;->mFollowSystemFont:Z

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;->mFollowSystemFont:Z

    .line 459
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method protected parseTextAppearance(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 433
    sget-object v0, Lcom/android/internal/R$styleable;->TextAppearance:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 435
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    :goto_0
    if-ge v1, p2, :cond_3

    .line 437
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    const/4 v2, -0x1

    if-eqz v0, :cond_2

    const/16 v3, 0xc

    if-eq v0, v3, :cond_1

    const/16 v2, 0x12

    if-eq v0, v2, :cond_0

    goto :goto_1

    .line 446
    :cond_0
    iget v2, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;->mTextFontWeight:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;->mTextFontWeight:I

    goto :goto_1

    .line 440
    :cond_1
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;->mFontFamily:I

    goto :goto_1

    .line 443
    :cond_2
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/utils/OpAodSettings$OpTextViewInfo;->mTextSizeId:I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 452
    :cond_3
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
