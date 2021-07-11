.class public abstract Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;
.super Lcom/android/systemui/statusbar/notification/row/ExpandableView;
.source "ExpandableOutlineView.java"


# static fields
.field private static final BOTTOM_ROUNDNESS:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

.field private static final EMPTY_PATH:Landroid/graphics/Path;

.field private static final ROUNDNESS_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

.field private static final TOP_ROUNDNESS:Lcom/android/systemui/statusbar/notification/AnimatableProperty;


# instance fields
.field private mAlwaysRoundBothCorners:Z

.field private mBackgroundTop:I

.field private mBottomRoundness:F

.field private final mClipPath:Landroid/graphics/Path;

.field private mCurrentBottomRoundness:F

.field private mCurrentTopRoundness:F

.field private mCustomOutline:Z

.field private mDistanceToTopRoundness:F

.field private mIsHeadsUp:Z

.field private mIsNotificationShelf:Z

.field private mIsScrolledToTop:Z

.field private mIsSectionHeader:Z

.field private mOutlineAlpha:F

.field protected mOutlineRadius:F

.field private final mOutlineRect:Landroid/graphics/Rect;

.field private final mProvider:Landroid/view/ViewOutlineProvider;

.field private mShouldClipNotifToOutline:Z

.field protected mShouldTranslateContents:Z

.field private mStrokePaint:Landroid/graphics/Paint;

.field private mTmpCornerRadii:[F

.field private mTmpPath:Landroid/graphics/Path;

.field private mTopAmountRounded:Z

.field private mTopRoundness:F


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 48
    sget-object v1, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$ExpandableOutlineView$lgIjKBD4iaJhFeEZ5izPzOddhds;->INSTANCE:Lcom/android/systemui/statusbar/notification/row/-$$Lambda$ExpandableOutlineView$lgIjKBD4iaJhFeEZ5izPzOddhds;

    sget-object v2, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$iDWyu_PNFZfGQr9kcCLSWoFYxpI;->INSTANCE:Lcom/android/systemui/statusbar/notification/row/-$$Lambda$iDWyu_PNFZfGQr9kcCLSWoFYxpI;

    sget v3, Lcom/android/systemui/R$id;->top_roundess_animator_tag:I

    sget v4, Lcom/android/systemui/R$id;->top_roundess_animator_end_tag:I

    sget v5, Lcom/android/systemui/R$id;->top_roundess_animator_start_tag:I

    const-string/jumbo v0, "topRoundness"

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->from(Ljava/lang/String;Ljava/util/function/BiConsumer;Ljava/util/function/Function;III)Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->TOP_ROUNDNESS:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    .line 55
    sget-object v2, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$ExpandableOutlineView$ZLqiUGCQzNj3P4m8kfbTwbzfyaI;->INSTANCE:Lcom/android/systemui/statusbar/notification/row/-$$Lambda$ExpandableOutlineView$ZLqiUGCQzNj3P4m8kfbTwbzfyaI;

    sget-object v3, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$RLFq7_ULx7AWbuaAJNsAxNrN1PI;->INSTANCE:Lcom/android/systemui/statusbar/notification/row/-$$Lambda$RLFq7_ULx7AWbuaAJNsAxNrN1PI;

    sget v4, Lcom/android/systemui/R$id;->bottom_roundess_animator_tag:I

    sget v5, Lcom/android/systemui/R$id;->bottom_roundess_animator_end_tag:I

    sget v6, Lcom/android/systemui/R$id;->bottom_roundess_animator_start_tag:I

    const-string v1, "bottomRoundness"

    invoke-static/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->from(Ljava/lang/String;Ljava/util/function/BiConsumer;Ljava/util/function/Function;III)Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->BOTTOM_ROUNDNESS:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    .line 62
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;-><init>()V

    const-wide/16 v1, 0x168

    .line 63
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setDuration(J)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    sput-object v0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->ROUNDNESS_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    .line 64
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->EMPTY_PATH:Landroid/graphics/Path;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 180
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineRect:Landroid/graphics/Rect;

    .line 67
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mClipPath:Landroid/graphics/Path;

    const/high16 p1, -0x40800000    # -1.0f

    .line 69
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineAlpha:F

    .line 72
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mTmpPath:Landroid/graphics/Path;

    .line 85
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mDistanceToTopRoundness:F

    const/16 p1, 0x8

    new-array p1, p1, [F

    .line 86
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mTmpCornerRadii:[F

    .line 89
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mStrokePaint:Landroid/graphics/Paint;

    .line 101
    new-instance p1, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView$1;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mProvider:Landroid/view/ViewOutlineProvider;

    .line 181
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 182
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->initDimens()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mCustomOutline:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;)F
    .locals 0

    .line 46
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mCurrentTopRoundness:F

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;)F
    .locals 0

    .line 46
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mCurrentBottomRoundness:F

    return p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mAlwaysRoundBothCorners:Z

    return p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mTopAmountRounded:Z

    return p0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mBackgroundTop:I

    return p0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;)F
    .locals 0

    .line 46
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineAlpha:F

    return p0
.end method

.method private initDimens()V
    .locals 3

    .line 282
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 283
    sget v1, Lcom/android/systemui/R$bool;->config_translateNotificationContentsOnSwipe:I

    .line 284
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mShouldTranslateContents:Z

    .line 285
    sget v1, Lcom/android/systemui/R$dimen;->notification_shadow_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineRadius:F

    .line 286
    sget v1, Lcom/android/systemui/R$bool;->config_clipNotificationsToOutline:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mAlwaysRoundBothCorners:Z

    if-nez v1, :cond_0

    .line 290
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const v2, 0x1010571

    .line 291
    invoke-static {v1, v2}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result v1

    .line 290
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineRadius:F

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initDimens mOutlineRadius:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineRadius:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExpandableOutlineView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_0
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$bool;->op_config_shouldClipNotifToOutline:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mShouldClipNotifToOutline:Z

    .line 302
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mAlwaysRoundBothCorners:Z

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    .line 304
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mStrokePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 305
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mStrokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 306
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->op_cb_notification_panel_stroke_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 307
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mStrokePaint:Landroid/graphics/Paint;

    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$color;->op_turquoise:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public static synthetic lambda$ZLqiUGCQzNj3P4m8kfbTwbzfyaI(Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->setBottomRoundnessInternal(F)V

    return-void
.end method

.method public static synthetic lambda$lgIjKBD4iaJhFeEZ5izPzOddhds(Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->setTopRoundnessInternal(F)V

    return-void
.end method

.method private setBottomRoundnessInternal(F)V
    .locals 0

    .line 392
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mCurrentBottomRoundness:F

    .line 393
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->applyRoundness()V

    return-void
.end method

.method private setTopRoundnessInternal(F)V
    .locals 0

    .line 387
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mCurrentTopRoundness:F

    .line 388
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->applyRoundness()V

    return-void
.end method


# virtual methods
.method protected applyRoundness()V
    .locals 0

    .line 323
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidateOutline()V

    .line 324
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method protected childNeedsClipping(Landroid/view/View;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 9

    .line 187
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 189
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mTopAmountRounded:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->topAmountNeedsClipping()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mExtraWidthForClipping:F

    neg-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v2, v0

    .line 191
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipTopAmount:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mDistanceToTopRoundness:F

    sub-float/2addr v0, v1

    float-to-int v3, v0

    .line 192
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mExtraWidthForClipping:F

    int-to-float v4, v2

    add-float/2addr v1, v4

    float-to-int v1, v1

    add-int v4, v0, v1

    .line 193
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mMinimumHeightForClipping:I

    int-to-float v0, v0

    .line 194
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v1

    iget v5, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipBottomAmount:I

    sub-int/2addr v1, v5

    int-to-float v1, v1

    int-to-float v5, v3

    iget v6, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineRadius:F

    add-float/2addr v5, v6

    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 193
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v5, v0

    .line 195
    iget v6, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineRadius:F

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mClipPath:Landroid/graphics/Path;

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->getRoundedRectPath(IIIIFFLandroid/graphics/Path;)V

    .line 196
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mClipPath:Landroid/graphics/Path;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 199
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->childNeedsClipping(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 200
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->getCustomClipPath(Landroid/view/View;)Landroid/graphics/Path;

    move-result-object v1

    if-nez v1, :cond_1

    .line 202
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->getClipPath(Z)Landroid/graphics/Path;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    .line 206
    sget-object v2, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 208
    :cond_2
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    const/4 v2, 0x1

    .line 211
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    .line 212
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isREDVersion()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mIsHeadsUp:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mIsScrolledToTop:Z

    if-nez v4, :cond_3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 214
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_3
    if-nez v2, :cond_4

    if-eqz v0, :cond_4

    .line 220
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 222
    :cond_4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p0

    .line 223
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p0
.end method

.method protected getClipPath(Z)Landroid/graphics/Path;
    .locals 14

    .line 129
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mAlwaysRoundBothCorners:Z

    if-eqz v0, :cond_0

    .line 130
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineRadius:F

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->getCurrentBackgroundRadiusTop()F

    move-result v0

    .line 131
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mCustomOutline:Z

    if-nez v1, :cond_2

    .line 132
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mShouldTranslateContents:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    .line 133
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getTranslation()F

    move-result p1

    float-to-int p1, p1

    goto :goto_1

    :cond_1
    move p1, v2

    .line 134
    :goto_1
    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mExtraWidthForClipping:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    float-to-int v1, v1

    .line 135
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int/2addr v3, v1

    .line 136
    iget v4, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipTopAmount:I

    iget v5, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mBackgroundTop:I

    add-int/2addr v4, v5

    .line 137
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    add-int/2addr v5, v1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    add-int/2addr v5, p1

    .line 140
    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mMinimumHeightForClipping:I

    .line 141
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipBottomAmount:I

    sub-int/2addr v1, v2

    int-to-float v2, v4

    add-float/2addr v2, v0

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 140
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_2

    .line 143
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineRect:Landroid/graphics/Rect;

    iget v3, p1, Landroid/graphics/Rect;->left:I

    .line 144
    iget v4, p1, Landroid/graphics/Rect;->top:I

    .line 145
    iget v5, p1, Landroid/graphics/Rect;->right:I

    .line 146
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    :goto_2
    move v10, p1

    move v7, v3

    move v8, v4

    move v9, v5

    sub-int p1, v10, v8

    if-nez p1, :cond_3

    .line 150
    sget-object p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->EMPTY_PATH:Landroid/graphics/Path;

    return-object p0

    .line 152
    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mAlwaysRoundBothCorners:Z

    if-eqz v1, :cond_4

    .line 153
    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineRadius:F

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->getCurrentBackgroundRadiusBottom()F

    move-result v1

    :goto_3
    add-float v2, v0, v1

    int-to-float p1, p1

    cmpl-float v3, v2, p1

    if-lez v3, :cond_5

    sub-float/2addr v2, p1

    .line 156
    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mCurrentTopRoundness:F

    mul-float v3, v2, p1

    iget v4, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mCurrentBottomRoundness:F

    add-float v5, p1, v4

    div-float/2addr v3, v5

    sub-float/2addr v0, v3

    mul-float/2addr v2, v4

    add-float/2addr p1, v4

    div-float/2addr v2, p1

    sub-float/2addr v1, v2

    :cond_5
    move v11, v0

    move v12, v1

    .line 161
    iget-object v13, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mTmpPath:Landroid/graphics/Path;

    move-object v6, p0

    invoke-virtual/range {v6 .. v13}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->getRoundedRectPath(IIIIFFLandroid/graphics/Path;)V

    .line 162
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mTmpPath:Landroid/graphics/Path;

    return-object p0
.end method

.method protected getCurrentBackgroundRadiusBottom()F
    .locals 1

    .line 360
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mCurrentBottomRoundness:F

    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineRadius:F

    mul-float/2addr v0, p0

    return v0
.end method

.method public getCurrentBackgroundRadiusTop()F
    .locals 4

    .line 330
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mTopAmountRounded:Z

    if-eqz v0, :cond_1

    .line 336
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mIsSectionHeader:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineRadius:F

    goto :goto_0

    .line 337
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineRadius:F

    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mDistanceToTopRoundness:F

    sub-float/2addr v0, p0

    const p0, 0x3f59999a    # 0.85f

    mul-float/2addr p0, v0

    :goto_0
    return p0

    .line 345
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mIsNotificationShelf:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mBackgroundTop:I

    int-to-float v2, v0

    iget v3, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineRadius:F

    add-float/2addr v2, v3

    cmpl-float v2, v2, v1

    if-lez v2, :cond_3

    int-to-float v0, v0

    add-float/2addr v0, v3

    .line 346
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mCurrentTopRoundness:F

    goto :goto_1

    .line 347
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mCurrentTopRoundness:F

    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineRadius:F

    :goto_1
    mul-float v1, v0, p0

    :cond_3
    return v1
.end method

.method public getCurrentBottomRoundness()F
    .locals 0

    .line 356
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mCurrentBottomRoundness:F

    return p0
.end method

.method public getCurrentTopRoundness()F
    .locals 0

    .line 352
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mCurrentTopRoundness:F

    return p0
.end method

.method public getCustomClipPath(Landroid/view/View;)Landroid/graphics/Path;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getOutlineAlpha()F
    .locals 0

    .line 437
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineAlpha:F

    return p0
.end method

.method public getOutlineTranslation()I
    .locals 1

    .line 451
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mCustomOutline:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getTranslation()F

    move-result p0

    float-to-int p0, p0

    :goto_0
    return p0
.end method

.method public getRoundedRectPath(IIIIFFLandroid/graphics/Path;)V
    .locals 1

    .line 167
    invoke-virtual {p7}, Landroid/graphics/Path;->reset()V

    .line 168
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mTmpCornerRadii:[F

    const/4 p0, 0x0

    aput p5, v0, p0

    const/4 p0, 0x1

    .line 169
    aput p5, v0, p0

    const/4 p0, 0x2

    .line 170
    aput p5, v0, p0

    const/4 p0, 0x3

    .line 171
    aput p5, v0, p0

    const/4 p0, 0x4

    .line 172
    aput p6, v0, p0

    const/4 p0, 0x5

    .line 173
    aput p6, v0, p0

    const/4 p0, 0x6

    .line 174
    aput p6, v0, p0

    const/4 p0, 0x7

    .line 175
    aput p6, v0, p0

    int-to-float p1, p1

    int-to-float p2, p2

    int-to-float p3, p3

    int-to-float p4, p4

    .line 176
    sget-object p6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object p0, p7

    move-object p5, v0

    invoke-virtual/range {p0 .. p6}, Landroid/graphics/Path;->addRoundRect(FFFF[FLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method protected isClippingNeeded()Z
    .locals 2

    .line 277
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mAlwaysRoundBothCorners:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mCustomOutline:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getTranslation()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mShouldClipNotifToOutline:Z

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

.method protected needsOutline()Z
    .locals 3

    .line 467
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isChildInGroup()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 468
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isGroupExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isGroupExpansionChanging()Z

    move-result p0

    if-nez p0, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 469
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isSummaryWithChildren()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 470
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isGroupExpanded()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isGroupExpansionChanging()Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1

    :cond_4
    return v2
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 0

    .line 397
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->initDimens()V

    .line 398
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->applyRoundness()V

    return-void
.end method

.method public onScrolledToTop()V
    .locals 1

    const/4 v0, 0x1

    .line 258
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mIsScrolledToTop:Z

    return-void
.end method

.method public setActualHeight(IZ)V
    .locals 1

    .line 403
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v0

    .line 404
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setActualHeight(IZ)V

    if-eq v0, p1, :cond_0

    .line 406
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->applyRoundness()V

    :cond_0
    return-void
.end method

.method protected setBackgroundTop(I)V
    .locals 1

    .line 375
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mBackgroundTop:I

    if-eq v0, p1, :cond_0

    .line 376
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mBackgroundTop:I

    .line 377
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidateOutline()V

    .line 379
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mIsNotificationShelf:Z

    if-eqz p1, :cond_0

    .line 380
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method public setBottomRoundness(FZ)Z
    .locals 2

    .line 365
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mBottomRoundness:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 366
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mBottomRoundness:F

    .line 367
    sget-object v0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->BOTTOM_ROUNDNESS:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    sget-object v1, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->ROUNDNESS_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-static {p0, v0, p1, v1, p2}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setClipBottomAmount(I)V
    .locals 1

    .line 421
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getClipBottomAmount()I

    move-result v0

    .line 422
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setClipBottomAmount(I)V

    if-eq v0, p1, :cond_0

    .line 424
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->applyRoundness()V

    :cond_0
    return-void
.end method

.method public setClipTopAmount(I)V
    .locals 1

    .line 412
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getClipTopAmount()I

    move-result v0

    .line 413
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setClipTopAmount(I)V

    if-eq v0, p1, :cond_0

    .line 415
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->applyRoundness()V

    :cond_0
    return-void
.end method

.method public setDistanceToTopRoundness(F)V
    .locals 1

    .line 241
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setDistanceToTopRoundness(F)V

    .line 242
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mDistanceToTopRoundness:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 243
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mTopAmountRounded:Z

    .line 244
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mDistanceToTopRoundness:F

    .line 245
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->applyRoundness()V

    :cond_1
    return-void
.end method

.method public setExtraWidthForClipping(F)V
    .locals 0

    .line 229
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setExtraWidthForClipping(F)V

    .line 230
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setIsHeadsUp(Z)V
    .locals 1

    .line 251
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mIsHeadsUp:Z

    if-nez v0, :cond_0

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    .line 252
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mIsScrolledToTop:Z

    .line 254
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mIsHeadsUp:Z

    return-void
.end method

.method public setIsNotificationShelf(Z)V
    .locals 0

    .line 501
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mIsNotificationShelf:Z

    return-void
.end method

.method public setIsSectionHeader(Z)V
    .locals 0

    .line 497
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mIsSectionHeader:Z

    return-void
.end method

.method public setMinimumHeightForClipping(I)V
    .locals 0

    .line 235
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setMinimumHeightForClipping(I)V

    .line 236
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method protected setOutlineAlpha(F)V
    .locals 1

    .line 429
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineAlpha:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 430
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineAlpha:F

    .line 431
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->applyRoundness()V

    :cond_0
    return-void
.end method

.method protected setOutlineRect(FFFF)V
    .locals 3

    const/4 v0, 0x1

    .line 481
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mCustomOutline:Z

    .line 483
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineRect:Landroid/graphics/Rect;

    float-to-int v1, p1

    float-to-int v2, p2

    float-to-int p3, p3

    float-to-int p4, p4

    invoke-virtual {v0, v1, v2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 486
    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineRect:Landroid/graphics/Rect;

    iget p4, p3, Landroid/graphics/Rect;->bottom:I

    int-to-float p4, p4

    invoke-static {p2, p4}, Ljava/lang/Math;->max(FF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p3, Landroid/graphics/Rect;->bottom:I

    .line 487
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineRect:Landroid/graphics/Rect;

    iget p3, p2, Landroid/graphics/Rect;->right:I

    int-to-float p3, p3

    invoke-static {p1, p3}, Ljava/lang/Math;->max(FF)F

    move-result p1

    float-to-int p1, p1

    iput p1, p2, Landroid/graphics/Rect;->right:I

    .line 488
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->applyRoundness()V

    return-void
.end method

.method protected setOutlineRect(Landroid/graphics/RectF;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 442
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->setOutlineRect(FFFF)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 444
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mCustomOutline:Z

    .line 445
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->applyRoundness()V

    :goto_0
    return-void
.end method

.method public setTopRoundness(FZ)Z
    .locals 2

    .line 313
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mTopRoundness:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 314
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mTopRoundness:F

    .line 315
    sget-object v0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->TOP_ROUNDNESS:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    sget-object v1, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->ROUNDNESS_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-static {p0, v0, p1, v1, p2}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public topAmountNeedsClipping()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public updateOutline()V
    .locals 1

    .line 455
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mCustomOutline:Z

    if-eqz v0, :cond_0

    return-void

    .line 458
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->needsOutline()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 459
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mProvider:Landroid/view/ViewOutlineProvider;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method
