.class public Lcom/oneplus/aod/OpAodBatteryMeterView;
.super Landroid/widget/ImageView;
.source "OpAodBatteryMeterView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;


# instance fields
.field private final CHARGE_ICONS:[I

.field private final STATE_CHARGED:I

.field private final STATE_CHARGING:I

.field private final STATE_FAST_CHARGING:I

.field private final STATE_INVALID:I

.field private final TAG:Ljava/lang/String;

.field private mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private mBatteryStyle:I

.field private mChargeState:I

.field private mContext:Landroid/content/Context;

.field private final mDrawable:Lcom/oneplus/aod/OpAodBatteryMeterDrawable;

.field private mFastCharge:Z

.field private mLevel:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/aod/OpAodBatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/aod/OpAodBatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v0, "BatteryMeterView"

    .line 37
    iput-object v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterView;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterView;->mFastCharge:Z

    .line 49
    iput v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterView;->mBatteryStyle:I

    const/4 v1, 0x3

    new-array v1, v1, [I

    .line 55
    sget v2, Lcom/android/systemui/R$drawable;->aod_ic_battery_charged:I

    aput v2, v1, v0

    sget v2, Lcom/android/systemui/R$drawable;->aod_ic_battery_charging:I

    const/4 v3, 0x1

    aput v2, v1, v3

    sget v2, Lcom/android/systemui/R$drawable;->aod_ic_battery_fast_charging:I

    const/4 v4, 0x2

    aput v2, v1, v4

    iput-object v1, p0, Lcom/oneplus/aod/OpAodBatteryMeterView;->CHARGE_ICONS:[I

    const/4 v1, -0x1

    .line 60
    iput v1, p0, Lcom/oneplus/aod/OpAodBatteryMeterView;->STATE_INVALID:I

    .line 61
    iput v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterView;->STATE_CHARGED:I

    .line 62
    iput v3, p0, Lcom/oneplus/aod/OpAodBatteryMeterView;->STATE_CHARGING:I

    .line 63
    iput v4, p0, Lcom/oneplus/aod/OpAodBatteryMeterView;->STATE_FAST_CHARGING:I

    .line 64
    iput v1, p0, Lcom/oneplus/aod/OpAodBatteryMeterView;->mChargeState:I

    .line 80
    iput-object p1, p0, Lcom/oneplus/aod/OpAodBatteryMeterView;->mContext:Landroid/content/Context;

    .line 81
    sget-object v1, Lcom/android/systemui/R$styleable;->BatteryMeterView:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 83
    sget p3, Lcom/android/systemui/R$styleable;->BatteryMeterView_frameColor:I

    sget v0, Lcom/android/systemui/R$color;->batterymeter_frame_color:I

    .line 84
    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 83
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    .line 85
    new-instance v0, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p1, v1, p3}, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterView;->mDrawable:Lcom/oneplus/aod/OpAodBatteryMeterDrawable;

    .line 87
    iget-object p1, p0, Lcom/oneplus/aod/OpAodBatteryMeterView;->mDrawable:Lcom/oneplus/aod/OpAodBatteryMeterDrawable;

    invoke-virtual {p1, v3}, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->setIconPlace(Z)V

    .line 89
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 91
    iget-object p1, p0, Lcom/oneplus/aod/OpAodBatteryMeterView;->mDrawable:Lcom/oneplus/aod/OpAodBatteryMeterDrawable;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private updateBatteryMeterVisibility()V
    .locals 2

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateBatteryMeterVisibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/aod/OpAodBatteryMeterView;->mBatteryStyle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fastCharge = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oneplus/aod/OpAodBatteryMeterView;->mFastCharge:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BatteryMeterView"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateViewState()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x5c

    aput v2, v0, v1

    .line 175
    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    .line 176
    iget-boolean v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterView;->mFastCharge:Z

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 186
    :cond_0
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 190
    :cond_1
    iget v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterView;->mChargeState:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    .line 195
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 202
    :cond_2
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onAttachedToWindow()V
    .locals 3

    .line 101
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 119
    const-class v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 120
    iget-object v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 121
    iget-object v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterView;->mDrawable:Lcom/oneplus/aod/OpAodBatteryMeterDrawable;

    iget-object v1, p0, Lcom/oneplus/aod/OpAodBatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->setBatteryController(Lcom/android/systemui/statusbar/policy/BatteryController;)V

    .line 122
    iget-object v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterView;->mDrawable:Lcom/oneplus/aod/OpAodBatteryMeterDrawable;

    invoke-virtual {v0}, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->startListening()V

    .line 124
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodBatteryMeterView;->updateBatteryMeterVisibility()V

    .line 128
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 129
    iget-object v1, p0, Lcom/oneplus/aod/OpAodBatteryMeterView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->battery_icon_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 130
    iget-object v1, p0, Lcom/oneplus/aod/OpAodBatteryMeterView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->battery_icon_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 131
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    iget-object p0, p0, Lcom/oneplus/aod/OpAodBatteryMeterView;->mDrawable:Lcom/oneplus/aod/OpAodBatteryMeterDrawable;

    invoke-virtual {p0}, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->relayout()V

    return-void
.end method

.method public onBatteryLevelChanged(IZZ)V
    .locals 3

    .line 148
    iput p1, p0, Lcom/oneplus/aod/OpAodBatteryMeterView;->mLevel:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 152
    iget p2, p0, Lcom/oneplus/aod/OpAodBatteryMeterView;->mLevel:I

    const/16 v2, 0x64

    if-lt p2, v2, :cond_0

    .line 153
    iput v1, p0, Lcom/oneplus/aod/OpAodBatteryMeterView;->mChargeState:I

    goto :goto_0

    .line 154
    :cond_0
    iget-boolean p2, p0, Lcom/oneplus/aod/OpAodBatteryMeterView;->mFastCharge:Z

    if-eqz p2, :cond_1

    const/4 p2, 0x2

    .line 155
    iput p2, p0, Lcom/oneplus/aod/OpAodBatteryMeterView;->mChargeState:I

    goto :goto_0

    .line 157
    :cond_1
    iput v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterView;->mChargeState:I

    goto :goto_0

    :cond_2
    const/4 p2, -0x1

    .line 160
    iput p2, p0, Lcom/oneplus/aod/OpAodBatteryMeterView;->mChargeState:I

    .line 165
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p3, :cond_3

    sget p3, Lcom/android/systemui/R$string;->accessibility_battery_level_charging:I

    goto :goto_1

    .line 166
    :cond_3
    sget p3, Lcom/android/systemui/R$string;->accessibility_battery_level:I

    :goto_1
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    .line 165
    invoke-virtual {p2, p3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 164
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 170
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodBatteryMeterView;->updateViewState()V

    return-void
.end method

.method public onBatteryPercentShowChange(Z)V
    .locals 0

    return-void
.end method

.method public onBatteryStyleChanged(I)V
    .locals 1

    .line 231
    iget v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterView;->mBatteryStyle:I

    if-eq v0, p1, :cond_0

    .line 232
    iput p1, p0, Lcom/oneplus/aod/OpAodBatteryMeterView;->mBatteryStyle:I

    .line 233
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodBatteryMeterView;->updateBatteryMeterVisibility()V

    .line 234
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 141
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 142
    iget-object v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 143
    iget-object p0, p0, Lcom/oneplus/aod/OpAodBatteryMeterView;->mDrawable:Lcom/oneplus/aod/OpAodBatteryMeterDrawable;

    invoke-virtual {p0}, Lcom/oneplus/aod/OpAodBatteryMeterDrawable;->stopListening()V

    return-void
.end method

.method public onFastChargeChanged(I)V
    .locals 1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 222
    :goto_0
    iget-boolean v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterView;->mFastCharge:Z

    if-eq v0, p1, :cond_1

    .line 223
    iput-boolean p1, p0, Lcom/oneplus/aod/OpAodBatteryMeterView;->mFastCharge:Z

    .line 224
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodBatteryMeterView;->updateBatteryMeterVisibility()V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 249
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 251
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 252
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 253
    iget v0, p0, Lcom/oneplus/aod/OpAodBatteryMeterView;->mBatteryStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-eq p1, p2, :cond_0

    add-int/lit8 p1, p2, 0x3

    move p2, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 257
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 259
    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/widget/ImageView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onPowerSaveChanged(Z)V
    .locals 0

    return-void
.end method
