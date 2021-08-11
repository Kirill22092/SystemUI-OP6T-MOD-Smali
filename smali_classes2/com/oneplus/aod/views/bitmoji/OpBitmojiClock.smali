.class public Lcom/oneplus/aod/views/bitmoji/OpBitmojiClock;
.super Landroid/widget/FrameLayout;
.source "OpBitmojiClock.java"

# interfaces
.implements Lcom/oneplus/aod/views/IOpAodClock;
.implements Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager$OnTriggerChangedListener;


# static fields
.field private static final DEBUG_TEST:Z


# instance fields
.field private mBitmojiIcon:Landroid/widget/ImageView;

.field private mBitmojiIconHeightId:I

.field private mBitmojiIconWidthId:I

.field private mBitmojiManager:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;

.field private mCurrentPackId:Ljava/lang/String;

.field private mDateMarginTopId:I

.field private mDateView:Landroid/widget/TextView;

.field private mPaint:Landroid/graphics/Paint;

.field private mTimeView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "sys.aod.bitmoji.support"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/aod/views/bitmoji/OpBitmojiClock;->DEBUG_TEST:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/aod/views/bitmoji/OpBitmojiClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/aod/views/bitmoji/OpBitmojiClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget p3, Lcom/android/systemui/R$layout;->op_aod_bitmoji_clock:I

    const/4 v0, 0x0

    invoke-static {p1, p3, v0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    sget v0, Lcom/android/systemui/R$id;->bitmoji_icon:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/aod/views/bitmoji/OpBitmojiClock;->mBitmojiIcon:Landroid/widget/ImageView;

    sget v0, Lcom/android/systemui/R$id;->date:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/aod/views/bitmoji/OpBitmojiClock;->mDateView:Landroid/widget/TextView;

    sget v0, Lcom/android/systemui/R$id;->time:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/aod/views/bitmoji/OpBitmojiClock;->mTimeView:Landroid/widget/TextView;

    invoke-direct {p0, p2}, Lcom/oneplus/aod/views/bitmoji/OpBitmojiClock;->setupAttributes(Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p3, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :try_start_0
    const-class p1, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;

    iput-object p1, p0, Lcom/oneplus/aod/views/bitmoji/OpBitmojiClock;->mBitmojiManager:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "OpBitmojiClock"

    const-string p3, "bitmojiManager error"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    sget-boolean p1, Lcom/oneplus/aod/views/bitmoji/OpBitmojiClock;->DEBUG_TEST:Z

    if-eqz p1, :cond_0

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/oneplus/aod/views/bitmoji/OpBitmojiClock;->mPaint:Landroid/graphics/Paint;

    const p2, -0xff0100

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p0, p0, Lcom/oneplus/aod/views/bitmoji/OpBitmojiClock;->mPaint:Landroid/graphics/Paint;

    const/high16 p1, 0x42700000    # 60.0f

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_0
    return-void
.end method

.method private is24HourModeEnabled()Z
    .locals 1

    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method

.method private setupAttributes(Landroid/util/AttributeSet;)V
    .locals 3

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui/R$styleable;->OpBitmojiClock:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$styleable;->OpBitmojiClock_bitmojiIconWidth:I

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/views/bitmoji/OpBitmojiClock;->mBitmojiIconWidthId:I

    sget v0, Lcom/android/systemui/R$styleable;->OpBitmojiClock_bitmojiIconHeight:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/views/bitmoji/OpBitmojiClock;->mBitmojiIconHeightId:I

    sget v0, Lcom/android/systemui/R$styleable;->OpBitmojiClock_dateMarginTop:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/views/bitmoji/OpBitmojiClock;->mDateMarginTopId:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private updateData([Ljava/lang/Object;)V
    .locals 2

    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/aod/views/bitmoji/OpBitmojiClock;->mCurrentPackId:Ljava/lang/String;

    iget-object p0, p0, Lcom/oneplus/aod/views/bitmoji/OpBitmojiClock;->mBitmojiIcon:Landroid/widget/ImageView;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private updateTextSize(Landroid/widget/TextView;I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x1010095

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p0, v2, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    invoke-static {p2}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx2(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, v2, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public applyLayoutParams(Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->getMarginStart(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->getMarginEnd(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->getMarginTop(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/oneplus/aod/utils/OpAodSettings$OpViewInfo;->getMarginBottom(Landroid/content/Context;)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :cond_0
    iget-object p1, p0, Lcom/oneplus/aod/views/bitmoji/OpBitmojiClock;->mBitmojiIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/oneplus/aod/views/bitmoji/OpBitmojiClock;->mBitmojiIconWidthId:I

    invoke-static {v0, v1}, Lcom/oneplus/aod/utils/OpAodDimenHelper;->convertDpToFixedPx(Landroid/content/Context;I)I

    move-result v0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/oneplus/aod/views/bitmoji/OpBitmojiClock;->mBitmojiIconHeightId:I

    invoke-static {v0, v1}, Lcom/oneplus/aod/utils/OpAodDimenHelper;->convertDpToFixedPx(Landroid/content/Context;I)I

    move-result v0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :cond_1
    iget-object p1, p0, Lcom/oneplus/aod/views/bitmoji/OpBitmojiClock;->mDateView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/oneplus/aod/views/bitmoji/OpBitmojiClock;->mDateMarginTopId:I

    invoke-static {v0, v1}, Lcom/oneplus/aod/utils/OpAodDimenHelper;->convertDpToFixedPx(Landroid/content/Context;I)I

    move-result v0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :cond_2
    iget-object p1, p0, Lcom/oneplus/aod/views/bitmoji/OpBitmojiClock;->mDateView:Landroid/widget/TextView;

    sget v0, Lcom/android/systemui/R$style;->op_text_style_h6:I

    invoke-direct {p0, p1, v0}, Lcom/oneplus/aod/views/bitmoji/OpBitmojiClock;->updateTextSize(Landroid/widget/TextView;I)V

    iget-object p1, p0, Lcom/oneplus/aod/views/bitmoji/OpBitmojiClock;->mTimeView:Landroid/widget/TextView;

    sget v0, Lcom/android/systemui/R$style;->op_text_style_h2:I

    invoke-direct {p0, p1, v0}, Lcom/oneplus/aod/views/bitmoji/OpBitmojiClock;->updateTextSize(Landroid/widget/TextView;I)V

    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    sget-boolean v0, Lcom/oneplus/aod/views/bitmoji/OpBitmojiClock;->DEBUG_TEST:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/views/bitmoji/OpBitmojiClock;->mCurrentPackId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/views/bitmoji/OpBitmojiClock;->mCurrentPackId:Ljava/lang/String;

    const/4 v1, 0x0

    const/high16 v2, 0x42c80000    # 100.0f

    iget-object p0, p0, Lcom/oneplus/aod/views/bitmoji/OpBitmojiClock;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/oneplus/aod/views/bitmoji/OpBitmojiClock;->mBitmojiManager:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->addListener(Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager$OnTriggerChangedListener;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/oneplus/aod/views/bitmoji/OpBitmojiClock;->mBitmojiManager:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->removeListener(Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager$OnTriggerChangedListener;)V

    :cond_0
    return-void
.end method

.method public onTimeChanged(Ljava/util/Calendar;)V
    .locals 3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "zh_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "ko_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "ja_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEEE, MMMM d"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string v1, "MMMMd EEEE"

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    move-object v0, v2

    :goto_1
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/aod/views/bitmoji/OpBitmojiClock;->mDateView:Landroid/widget/TextView;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/oneplus/aod/views/bitmoji/OpBitmojiClock;->is24HourModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "h:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/aod/views/bitmoji/OpBitmojiClock;->mTimeView:Landroid/widget/TextView;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x3a

    const/16 v2, 0x2236

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/oneplus/aod/views/bitmoji/OpBitmojiClock;->mBitmojiManager:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->getAodImage()[Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oneplus/aod/views/bitmoji/OpBitmojiClock;->updateData([Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public onTriggerChanged()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/views/bitmoji/OpBitmojiClock;->mBitmojiManager:Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/aod/utils/bitmoji/OpBitmojiManager;->getAodImage()[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/aod/views/bitmoji/OpBitmojiClock;->updateData([Ljava/lang/Object;)V

    sget-boolean v0, Lcom/oneplus/aod/views/bitmoji/OpBitmojiClock;->DEBUG_TEST:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    return-void
.end method
