.class public Lcom/oneplus/aod/views/parsons/OpParsonsUnlockLabel;
.super Landroid/widget/TextView;
.source "OpParsonsUnlockLabel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/aod/views/parsons/OpParsonsUnlockLabel$UnderlineSpan;
    }
.end annotation


# instance fields
.field private mIsRTL:Z

.field private mUnderlineHeightId:I

.field private mUnlockPaddingId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/aod/views/parsons/OpParsonsUnlockLabel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/aod/views/parsons/OpParsonsUnlockLabel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p2}, Lcom/oneplus/aod/views/parsons/OpParsonsUnlockLabel;->setupAttributes(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private setupAttributes(Landroid/util/AttributeSet;)V
    .locals 3

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui/R$styleable;->OpParsonsUnlockLabel:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$styleable;->OpParsonsUnlockLabel_underlineHeight:I

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsUnlockLabel;->mUnderlineHeightId:I

    sget v0, Lcom/android/systemui/R$styleable;->OpParsonsUnlockLabel_unlockPadding:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/views/parsons/OpParsonsUnlockLabel;->mUnlockPaddingId:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/oneplus/aod/views/parsons/OpParsonsUnlockLabel;->mIsRTL:Z

    return-void
.end method

.method public setUnlockMsg(II)V
    .locals 8

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/oneplus/aod/views/parsons/OpParsonsUnlockLabel;->mUnlockPaddingId:I

    invoke-static {v0, v1}, Lcom/oneplus/aod/utils/OpAodDimenHelper;->convertDpToFixedPx2(Landroid/content/Context;I)I

    move-result v0

    iget-object v1, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/oneplus/aod/views/parsons/OpParsonsUnlockLabel;->mUnderlineHeightId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    new-instance v2, Landroid/text/SpannableString;

    iget-object v3, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {v2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result p1

    const-class v3, Landroid/text/Annotation;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, p1, v3}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/Annotation;

    const/4 v3, 0x1

    if-eqz p1, :cond_1

    array-length v5, p1

    if-ne v5, v3, :cond_1

    aget-object p1, p1, v4

    invoke-virtual {p1}, Landroid/text/Annotation;->getValue()Ljava/lang/String;

    move-result-object v5

    const-string v6, "unlockNum"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v2, p1}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v2, p1}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result p1

    new-instance v6, Lcom/oneplus/aod/views/parsons/OpParsonsUnlockLabel$UnderlineSpan;

    if-nez v5, :cond_0

    iget-boolean v7, p0, Lcom/oneplus/aod/views/parsons/OpParsonsUnlockLabel;->mIsRTL:Z

    if-nez v7, :cond_0

    move v7, v4

    goto :goto_0

    :cond_0
    move v7, v0

    :goto_0
    invoke-direct {v6, v7, v0, v1}, Lcom/oneplus/aod/views/parsons/OpParsonsUnlockLabel$UnderlineSpan;-><init>(III)V

    const/16 v0, 0x21

    invoke-virtual {v2, v6, v5, p1, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    new-array p1, v3, [Ljava/lang/CharSequence;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v4

    invoke-static {v2, p1}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateResource()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x1010095

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v1, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$style;->op_parsons_unlock_msg2:I

    invoke-virtual {v1, v3, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-static {v1}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx2(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
