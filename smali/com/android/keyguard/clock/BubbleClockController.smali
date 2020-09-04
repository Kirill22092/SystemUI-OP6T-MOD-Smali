.class public Lcom/android/keyguard/clock/BubbleClockController;
.super Ljava/lang/Object;
.source "BubbleClockController.java"

# interfaces
.implements Lcom/android/systemui/plugins/ClockPlugin;


# instance fields
.field private mAnalogClock:Lcom/android/keyguard/clock/ImageClock;

.field private final mClockPosition:Lcom/android/keyguard/clock/SmallClockPosition;

.field private final mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLockClock:Landroid/widget/TextClock;

.field private mLockClockContainer:Landroid/view/View;

.field private final mRenderer:Lcom/android/keyguard/clock/ViewPreviewer;

.field private final mResources:Landroid/content/res/Resources;

.field private mView:Lcom/android/keyguard/clock/ClockLayout;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)V
    .locals 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lcom/android/keyguard/clock/ViewPreviewer;

    invoke-direct {v0}, Lcom/android/keyguard/clock/ViewPreviewer;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/clock/BubbleClockController;->mRenderer:Lcom/android/keyguard/clock/ViewPreviewer;

    .line 86
    iput-object p1, p0, Lcom/android/keyguard/clock/BubbleClockController;->mResources:Landroid/content/res/Resources;

    .line 87
    iput-object p2, p0, Lcom/android/keyguard/clock/BubbleClockController;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 88
    iput-object p3, p0, Lcom/android/keyguard/clock/BubbleClockController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    .line 89
    new-instance p2, Lcom/android/keyguard/clock/SmallClockPosition;

    invoke-direct {p2, p1}, Lcom/android/keyguard/clock/SmallClockPosition;-><init>(Landroid/content/res/Resources;)V

    iput-object p2, p0, Lcom/android/keyguard/clock/BubbleClockController;->mClockPosition:Lcom/android/keyguard/clock/SmallClockPosition;

    return-void
.end method

.method private createViews()V
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/android/keyguard/clock/BubbleClockController;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/keyguard/R$layout;->bubble_clock:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/clock/ClockLayout;

    iput-object v0, p0, Lcom/android/keyguard/clock/BubbleClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    .line 94
    iget-object v0, p0, Lcom/android/keyguard/clock/BubbleClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    sget v1, Lcom/android/keyguard/R$id;->analog_clock:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/clock/ImageClock;

    iput-object v0, p0, Lcom/android/keyguard/clock/BubbleClockController;->mAnalogClock:Lcom/android/keyguard/clock/ImageClock;

    .line 96
    iget-object v0, p0, Lcom/android/keyguard/clock/BubbleClockController;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/keyguard/R$layout;->digital_clock:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/clock/BubbleClockController;->mLockClockContainer:Landroid/view/View;

    .line 97
    iget-object v0, p0, Lcom/android/keyguard/clock/BubbleClockController;->mLockClockContainer:Landroid/view/View;

    sget v1, Lcom/android/keyguard/R$id;->lock_screen_clock:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/android/keyguard/clock/BubbleClockController;->mLockClock:Landroid/widget/TextClock;

    return-void
.end method


# virtual methods
.method public getBigClockView()Landroid/view/View;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/android/keyguard/clock/BubbleClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    if-nez v0, :cond_0

    .line 151
    invoke-direct {p0}, Lcom/android/keyguard/clock/BubbleClockController;->createViews()V

    .line 153
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/clock/BubbleClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    const-string p0, "bubble"

    return-object p0
.end method

.method public getPreferredY(I)I
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/android/keyguard/clock/BubbleClockController;->mClockPosition:Lcom/android/keyguard/clock/SmallClockPosition;

    invoke-virtual {p0}, Lcom/android/keyguard/clock/SmallClockPosition;->getPreferredY()I

    move-result p0

    return p0
.end method

.method public getPreview(II)Landroid/graphics/Bitmap;
    .locals 3

    .line 127
    invoke-virtual {p0}, Lcom/android/keyguard/clock/BubbleClockController;->getBigClockView()Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 130
    invoke-virtual {p0, v1}, Lcom/android/keyguard/clock/BubbleClockController;->setDarkAmount(F)V

    const/4 v1, -0x1

    .line 131
    invoke-virtual {p0, v1}, Lcom/android/keyguard/clock/BubbleClockController;->setTextColor(I)V

    .line 132
    iget-object v1, p0, Lcom/android/keyguard/clock/BubbleClockController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/internal/colorextraction/ColorExtractor;->getColors(I)Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object v1

    .line 134
    invoke-virtual {v1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->supportsDarkText()Z

    move-result v2

    invoke-virtual {v1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->getColorPalette()[I

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/android/keyguard/clock/BubbleClockController;->setColorPalette(Z[I)V

    .line 135
    invoke-virtual {p0}, Lcom/android/keyguard/clock/BubbleClockController;->onTimeTick()V

    .line 137
    iget-object p0, p0, Lcom/android/keyguard/clock/BubbleClockController;->mRenderer:Lcom/android/keyguard/clock/ViewPreviewer;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/keyguard/clock/ViewPreviewer;->createPreview(Landroid/view/View;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    .line 120
    iget-object p0, p0, Lcom/android/keyguard/clock/BubbleClockController;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/android/keyguard/R$drawable;->bubble_thumbnail:I

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object p0, p0, Lcom/android/keyguard/clock/BubbleClockController;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/android/keyguard/R$string;->clock_title_bubble:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/android/keyguard/clock/BubbleClockController;->mLockClockContainer:Landroid/view/View;

    if-nez v0, :cond_0

    .line 143
    invoke-direct {p0}, Lcom/android/keyguard/clock/BubbleClockController;->createViews()V

    .line 145
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/clock/BubbleClockController;->mLockClockContainer:Landroid/view/View;

    return-object p0
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    .line 102
    iput-object v0, p0, Lcom/android/keyguard/clock/BubbleClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    .line 103
    iput-object v0, p0, Lcom/android/keyguard/clock/BubbleClockController;->mAnalogClock:Lcom/android/keyguard/clock/ImageClock;

    .line 104
    iput-object v0, p0, Lcom/android/keyguard/clock/BubbleClockController;->mLockClockContainer:Landroid/view/View;

    .line 105
    iput-object v0, p0, Lcom/android/keyguard/clock/BubbleClockController;->mLockClock:Landroid/widget/TextClock;

    return-void
.end method

.method public onTimeTick()V
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/android/keyguard/clock/BubbleClockController;->mAnalogClock:Lcom/android/keyguard/clock/ImageClock;

    invoke-virtual {v0}, Lcom/android/keyguard/clock/ImageClock;->onTimeChanged()V

    .line 187
    iget-object v0, p0, Lcom/android/keyguard/clock/BubbleClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    invoke-virtual {v0}, Lcom/android/keyguard/clock/ClockLayout;->onTimeChanged()V

    .line 188
    iget-object p0, p0, Lcom/android/keyguard/clock/BubbleClockController;->mLockClock:Landroid/widget/TextClock;

    invoke-virtual {p0}, Landroid/widget/TextClock;->refresh()V

    return-void
.end method

.method public onTimeZoneChanged(Ljava/util/TimeZone;)V
    .locals 0

    .line 193
    iget-object p0, p0, Lcom/android/keyguard/clock/BubbleClockController;->mAnalogClock:Lcom/android/keyguard/clock/ImageClock;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/clock/ImageClock;->onTimeZoneChanged(Ljava/util/TimeZone;)V

    return-void
.end method

.method public setColorPalette(Z[I)V
    .locals 1

    if-eqz p2, :cond_1

    .line 169
    array-length p1, p2

    if-nez p1, :cond_0

    goto :goto_0

    .line 172
    :cond_0
    array-length p1, p2

    const/4 v0, 0x0

    add-int/lit8 p1, p1, -0x3

    .line 173
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    aget p1, p2, p1

    .line 174
    iget-object p2, p0, Lcom/android/keyguard/clock/BubbleClockController;->mLockClock:Landroid/widget/TextClock;

    invoke-virtual {p2, p1}, Landroid/widget/TextClock;->setTextColor(I)V

    .line 175
    iget-object p0, p0, Lcom/android/keyguard/clock/BubbleClockController;->mAnalogClock:Lcom/android/keyguard/clock/ImageClock;

    invoke-virtual {p0, p1, p1}, Lcom/android/keyguard/clock/ImageClock;->setClockColors(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setDarkAmount(F)V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/android/keyguard/clock/BubbleClockController;->mClockPosition:Lcom/android/keyguard/clock/SmallClockPosition;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/clock/SmallClockPosition;->setDarkAmount(F)V

    .line 181
    iget-object p0, p0, Lcom/android/keyguard/clock/BubbleClockController;->mView:Lcom/android/keyguard/clock/ClockLayout;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/clock/ClockLayout;->setDarkAmount(F)V

    return-void
.end method

.method public setStyle(Landroid/graphics/Paint$Style;)V
    .locals 0

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    return-void
.end method

.method public shouldShowStatusArea()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
