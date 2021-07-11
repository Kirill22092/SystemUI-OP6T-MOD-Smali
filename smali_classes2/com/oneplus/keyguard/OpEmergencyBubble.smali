.class public Lcom/oneplus/keyguard/OpEmergencyBubble;
.super Landroid/widget/FrameLayout;
.source "OpEmergencyBubble.java"


# static fields
.field public static ACTIVE_CIRCLE_COLOR:I = -0x14ffd8

.field public static ACTIVE_TEXT_COLOR:I = -0x1

.field public static DEFAULT_CIRCLE_COLOR:I = -0x1


# instance fields
.field private mCircleAlpha:I

.field private mCircleColor:I

.field private mCircleRadius:F

.field private mContext:Landroid/content/Context;

.field private mPaint:Landroid/graphics/Paint;

.field private mText:Landroid/widget/TextView;

.field private mTextColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, v0}, Lcom/oneplus/keyguard/OpEmergencyBubble;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/keyguard/OpEmergencyBubble;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    sget p2, Lcom/oneplus/keyguard/OpEmergencyBubble;->DEFAULT_CIRCLE_COLOR:I

    iput p2, p0, Lcom/oneplus/keyguard/OpEmergencyBubble;->mCircleColor:I

    const/16 p2, 0xff

    .line 33
    iput p2, p0, Lcom/oneplus/keyguard/OpEmergencyBubble;->mCircleAlpha:I

    const p2, -0x14ffd8

    .line 34
    iput p2, p0, Lcom/oneplus/keyguard/OpEmergencyBubble;->mTextColor:I

    .line 48
    iput-object p1, p0, Lcom/oneplus/keyguard/OpEmergencyBubble;->mContext:Landroid/content/Context;

    .line 49
    invoke-direct {p0, p1}, Lcom/oneplus/keyguard/OpEmergencyBubble;->init(Landroid/content/Context;)V

    return-void
.end method

.method private drawBackgroundCircle(Landroid/graphics/Canvas;)V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/oneplus/keyguard/OpEmergencyBubble;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oneplus/keyguard/OpEmergencyBubble;->mCircleColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 96
    iget-object v0, p0, Lcom/oneplus/keyguard/OpEmergencyBubble;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oneplus/keyguard/OpEmergencyBubble;->mCircleAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 97
    iget-object v0, p0, Lcom/oneplus/keyguard/OpEmergencyBubble;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 98
    iget v0, p0, Lcom/oneplus/keyguard/OpEmergencyBubble;->mCircleRadius:F

    iget-object p0, p0, Lcom/oneplus/keyguard/OpEmergencyBubble;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v0, v0, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawText()V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/oneplus/keyguard/OpEmergencyBubble;->mText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 82
    iget p0, p0, Lcom/oneplus/keyguard/OpEmergencyBubble;->mTextColor:I

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method private drawWhiteCircle(Landroid/graphics/Canvas;)V
    .locals 2

    .line 87
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 88
    sget v1, Lcom/oneplus/keyguard/OpEmergencyBubble;->DEFAULT_CIRCLE_COLOR:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v1, 0x1

    .line 90
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 91
    iget p0, p0, Lcom/oneplus/keyguard/OpEmergencyBubble;->mCircleRadius:F

    invoke-virtual {p1, p0, p0, p0, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 59
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/oneplus/keyguard/OpEmergencyBubble;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    .line 60
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 63
    iget-object p1, p0, Lcom/oneplus/keyguard/OpEmergencyBubble;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/assist/ui/DisplayUtils;->getWidth(Landroid/content/Context;)I

    move-result p1

    const/16 v0, 0x438

    if-le p1, v0, :cond_0

    .line 65
    iget-object p1, p0, Lcom/oneplus/keyguard/OpEmergencyBubble;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/systemui/R$dimen;->op_emergency_bubble_diameter:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    invoke-static {p1, v0}, Lcom/oneplus/util/OpUtils;->convertPxByResolutionProportion(FI)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iput p1, p0, Lcom/oneplus/keyguard/OpEmergencyBubble;->mCircleRadius:F

    goto :goto_0

    .line 67
    :cond_0
    iget-object p1, p0, Lcom/oneplus/keyguard/OpEmergencyBubble;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$dimen;->op_emergency_bubble_diameter:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iput p1, p0, Lcom/oneplus/keyguard/OpEmergencyBubble;->mCircleRadius:F

    :goto_0
    return-void
.end method


# virtual methods
.method public drawView(IIIII)V
    .locals 0

    .line 102
    iput p1, p0, Lcom/oneplus/keyguard/OpEmergencyBubble;->mCircleColor:I

    .line 103
    iput p2, p0, Lcom/oneplus/keyguard/OpEmergencyBubble;->mCircleAlpha:I

    .line 104
    iput p4, p0, Lcom/oneplus/keyguard/OpEmergencyBubble;->mTextColor:I

    .line 106
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lcom/oneplus/keyguard/OpEmergencyBubble;->drawWhiteCircle(Landroid/graphics/Canvas;)V

    .line 75
    invoke-direct {p0, p1}, Lcom/oneplus/keyguard/OpEmergencyBubble;->drawBackgroundCircle(Landroid/graphics/Canvas;)V

    .line 76
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpEmergencyBubble;->drawText()V

    .line 77
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 54
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 55
    sget v0, Lcom/android/systemui/R$id;->sos:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/keyguard/OpEmergencyBubble;->mText:Landroid/widget/TextView;

    return-void
.end method

.method public reset()V
    .locals 1

    .line 110
    sget v0, Lcom/oneplus/keyguard/OpEmergencyBubble;->DEFAULT_CIRCLE_COLOR:I

    iput v0, p0, Lcom/oneplus/keyguard/OpEmergencyBubble;->mCircleColor:I

    const/16 v0, 0xff

    .line 111
    iput v0, p0, Lcom/oneplus/keyguard/OpEmergencyBubble;->mCircleAlpha:I

    const v0, -0x14ffd8

    .line 112
    iput v0, p0, Lcom/oneplus/keyguard/OpEmergencyBubble;->mTextColor:I

    .line 114
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
