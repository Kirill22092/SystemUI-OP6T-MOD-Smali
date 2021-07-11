.class public Lcom/oneplus/keyguard/OpKeyguardOneplusTextView;
.super Landroid/widget/TextView;
.source "OpKeyguardOneplusTextView.java"


# instance fields
.field private mIsAOD:Z

.field private mIsClock:Z

.field private mIsTimeLineTwo:Z

.field private mShadowDx:F

.field private mShadowDy:F

.field private mShadowRadius:F

.field private mStrokeColor:I

.field private mStrokeWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$dimen;->op_cb_lockscreen_clock_stroke_width:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/oneplus/keyguard/OpKeyguardOneplusTextView;->mStrokeWidth:F

    .line 46
    sget p2, Lcom/android/systemui/R$color;->op_brand_yellow:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/oneplus/keyguard/OpKeyguardOneplusTextView;->mStrokeColor:I

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$dimen;->op_cb_lockscreen_clock_shadow_radius:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p2

    iput p2, p0, Lcom/oneplus/keyguard/OpKeyguardOneplusTextView;->mShadowRadius:F

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$dimen;->op_cb_lockscreen_clock_shadow_dx:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p2

    iput p2, p0, Lcom/oneplus/keyguard/OpKeyguardOneplusTextView;->mShadowDx:F

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->op_cb_lockscreen_clock_shadow_dy:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p1

    iput p1, p0, Lcom/oneplus/keyguard/OpKeyguardOneplusTextView;->mShadowDy:F

    return-void
.end method

.method private getTextWithOneplusColor(Ljava/lang/CharSequence;)Landroid/text/SpannableString;
    .locals 6

    .line 94
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getThemeResId()I

    move-result v0

    sget v1, Lcom/android/systemui/R$style;->Theme_SystemUI_Light:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 95
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz v0, :cond_1

    sget v0, Lcom/android/systemui/R$color;->op_control_accent_color_red_light:I

    goto :goto_1

    :cond_1
    sget v0, Lcom/android/systemui/R$color;->op_control_accent_color_red_dark:I

    :goto_1
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    if-eqz p1, :cond_2

    .line 104
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    const-string p1, ""

    .line 105
    :goto_2
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const-string v1, "1"

    .line 107
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    :goto_3
    if-ltz v2, :cond_3

    const/4 v3, 0x2

    if-ge v2, v3, :cond_3

    .line 108
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2236

    if-eq v3, v4, :cond_3

    .line 109
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OpColorTextView"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v3, p0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/lit8 v4, v2, 0x1

    const/16 v5, 0x21

    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 111
    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    goto :goto_3

    :cond_3
    return-object v0
.end method

.method private isREDVersion()Z
    .locals 4

    .line 87
    invoke-static {}, Lcom/oneplus/aod/OpClockViewCtrl;->getClockStyle()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x32

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 88
    :goto_0
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isREDVersion()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/oneplus/keyguard/OpKeyguardOneplusTextView;->mIsAOD:Z

    if-eqz v3, :cond_3

    :cond_1
    iget-boolean p0, p0, Lcom/oneplus/keyguard/OpKeyguardOneplusTextView;->mIsAOD:Z

    if-eqz p0, :cond_2

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :cond_3
    :goto_1
    return v1
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 0

    .line 55
    invoke-super {p0}, Landroid/widget/TextView;->onFinishInflate()V

    return-void
.end method

.method public setIsAOD(Z)V
    .locals 0

    .line 79
    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardOneplusTextView;->mIsAOD:Z

    return-void
.end method

.method public setIsClockTimeLineTwo(Z)V
    .locals 0

    .line 83
    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardOneplusTextView;->mIsTimeLineTwo:Z

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 3

    .line 61
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    .line 63
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpKeyguardOneplusTextView;->isREDVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oneplus/keyguard/OpKeyguardOneplusTextView;->mStrokeWidth:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 64
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 65
    iget v0, p0, Lcom/oneplus/keyguard/OpKeyguardOneplusTextView;->mStrokeWidth:F

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 66
    iget p2, p0, Lcom/oneplus/keyguard/OpKeyguardOneplusTextView;->mStrokeColor:I

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 67
    iget p2, p0, Lcom/oneplus/keyguard/OpKeyguardOneplusTextView;->mShadowRadius:F

    iget v0, p0, Lcom/oneplus/keyguard/OpKeyguardOneplusTextView;->mShadowDx:F

    iget v1, p0, Lcom/oneplus/keyguard/OpKeyguardOneplusTextView;->mShadowDy:F

    iget v2, p0, Lcom/oneplus/keyguard/OpKeyguardOneplusTextView;->mStrokeColor:I

    invoke-virtual {p0, p2, v0, v1, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 68
    sget-object p2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_0

    .line 70
    :cond_0
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 71
    invoke-virtual {p2}, Landroid/graphics/Paint;->clearShadowLayer()V

    .line 72
    iget-boolean p2, p0, Lcom/oneplus/keyguard/OpKeyguardOneplusTextView;->mIsTimeLineTwo:Z

    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Lcom/oneplus/keyguard/OpKeyguardOneplusTextView;->getTextWithOneplusColor(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object p1

    :cond_1
    sget-object p2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    :goto_0
    return-void
.end method

.method public updataClockView()V
    .locals 4

    .line 123
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 124
    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 126
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsClock:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oneplus/keyguard/OpKeyguardOneplusTextView;->mIsClock:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isRtl:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "OpColorTextView"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpKeyguardOneplusTextView;->mIsClock:Z

    if-eqz v0, :cond_2

    .line 128
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setLayoutDirection(I)V

    if-eqz v2, :cond_1

    const/4 v0, 0x5

    goto :goto_1

    :cond_1
    const/4 v0, 0x3

    :goto_1
    or-int/lit8 v0, v0, 0x10

    .line 129
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setGravity(I)V

    :cond_2
    return-void
.end method

.method public updataClockView(Z)V
    .locals 0

    .line 118
    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpKeyguardOneplusTextView;->mIsClock:Z

    .line 119
    invoke-virtual {p0}, Lcom/oneplus/keyguard/OpKeyguardOneplusTextView;->updataClockView()V

    return-void
.end method
