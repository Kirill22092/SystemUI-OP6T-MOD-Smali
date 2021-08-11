.class public Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;
.super Ljava/lang/Object;


# instance fields
.field private final backgroundRes:I

.field private clock:Landroid/widget/TextClock;

.field private final contentView:Landroid/widget/LinearLayout;

.field private final context:Landroid/content/Context;

.field private customizeResourcePackage:Ljava/lang/String;

.field private data:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;

.field private enableDate:Z

.field private enableWeather:Z

.field private isLanguageSupported:Z

.field private isLeftAligned:Z

.field private final layoutInflater:Landroid/view/LayoutInflater;

.field private final listener:Lcom/google/android/libraries/assistant/oemsmartspace/shared/SmartspaceUpdateListener;

.field final smartspaceHorizontalPadding:I

.field private final sscsContainer:Landroid/widget/LinearLayout;

.field private subtitleIcon:Landroid/widget/ImageView;

.field private subtitleLine:Landroid/widget/LinearLayout;

.field private subtitleTextView:Landroid/widget/TextView;

.field private subtitleWeather:Landroid/widget/TextView;

.field private textColor:I

.field private textFont:Landroid/graphics/Typeface;

.field private final textPaint:Landroid/text/TextPaint;

.field private textSizeFactor:F

.field private titleTextView:Landroid/widget/TextView;

.field private topLine:Landroid/widget/LinearLayout;

.field private weatherIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/libraries/assistant/oemsmartspace/shared/SmartspaceUpdateListener;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->enableDate:Z

    iput-boolean v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->enableWeather:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->isLeftAligned:Z

    iput v1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->textColor:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->textFont:Landroid/graphics/Typeface;

    const-string v3, ""

    iput-object v3, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->customizeResourcePackage:Ljava/lang/String;

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->textSizeFactor:F

    sget v3, Lcom/google/android/libraries/assistant/oemsmartspace/lib/R$drawable;->bg_smartspace:I

    iput v3, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->backgroundRes:I

    new-instance v3, Landroid/text/TextPaint;

    invoke-direct {v3}, Landroid/text/TextPaint;-><init>()V

    iput-object v3, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->textPaint:Landroid/text/TextPaint;

    new-instance v3, Landroid/animation/LayoutTransition;

    invoke-direct {v3}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {v3, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    invoke-virtual {v3, v0}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    iput-object p1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/google/android/libraries/assistant/oemsmartspace/lib/R$dimen;->smartspace_horizontal_padding:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->smartspaceHorizontalPadding:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/google/android/libraries/assistant/oemsmartspace/lib/R$dimen;->smartspace_title_icon_size_5x5:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->layoutInflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/R$layout;->smartspace_view:I

    invoke-virtual {p1, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->contentView:Landroid/widget/LinearLayout;

    sget v0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/R$id;->sscs_container:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->sscsContainer:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->bindViews()V

    iput-object p2, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->listener:Lcom/google/android/libraries/assistant/oemsmartspace/shared/SmartspaceUpdateListener;

    invoke-static {}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceContainerController;->isLanguageSupported()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->isLanguageSupported:Z

    return-void
.end method

.method private applyCurrentCard(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;)Z
    .locals 5

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->contentView:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->backgroundRes:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    invoke-virtual {p1}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;->hasCurrent()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez v0, :cond_0

    const-string p1, "SmartspaceView"

    const-string v0, "No current card available to display"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->subtitleTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->subtitleIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->topLine:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return v1

    :cond_0
    iget-object p1, p1, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;->currentCard:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;

    invoke-virtual {p1}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->hasParams()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->titleTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->ellipsizeTitle()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->getTitle()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v0, v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->titleTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->getTruncateAt(Z)Landroid/text/TextUtils$TruncateAt;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {p1}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->getCard()Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->getCard()Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->hasTapAction()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->titleTextView:Landroid/widget/TextView;

    new-instance v4, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView$2;

    invoke-direct {v4, p0, p1}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView$2;-><init>(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/google/android/libraries/assistant/oemsmartspace/lib/R$dimen;->smartspace_title_size:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget-object v4, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->titleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v4, v0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->setCustomizeTextStyle(Landroid/widget/TextView;F)V

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->topLine:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->enableLayoutWithCustomizeParams(Landroid/widget/LinearLayout;)V

    invoke-virtual {p1}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->getSubtitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->clock:Landroid/widget/TextClock;

    invoke-virtual {v0, v2}, Landroid/widget/TextClock;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->subtitleIcon:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->getCustomizedIcon(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->textColor:I

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->subtitleIcon:Landroid/widget/ImageView;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v0, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->subtitleIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->subtitleTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->ellipsizeSubtitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->subtitleTextView:Landroid/widget/TextView;

    new-instance v2, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView$3;

    invoke-direct {v2, p0, p1}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView$3;-><init>(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/R$dimen;->smartspace_text_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-direct {p0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->setSubtitleMargin()V

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->subtitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->setCustomizeTextStyle(Landroid/widget/TextView;F)V

    iget-object p0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->subtitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_6
    return v3
.end method

.method private applyDate(Z)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->contentView:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->contentView:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    :goto_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/libraries/assistant/oemsmartspace/lib/R$string;->icu_w_month_day_no_year:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->titleTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->topLine:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->contentView:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->subtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->subtitleIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->enableDate:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->clock:Landroid/widget/TextClock;

    invoke-virtual {v0, p1}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->clock:Landroid/widget/TextClock;

    invoke-virtual {v0, p1}, Landroid/widget/TextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->clock:Landroid/widget/TextClock;

    invoke-virtual {p1, v2}, Landroid/widget/TextClock;->setVisibility(I)V

    iget-object p1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/R$dimen;->smartspace_text_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->clock:Landroid/widget/TextClock;

    invoke-direct {p0, v0, p1}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->setCustomizeTextStyle(Landroid/widget/TextView;F)V

    :cond_2
    return-void
.end method

.method private applyNewHeightToListener()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->sscsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iget-object v3, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 v4, -0x2

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v4, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object v3, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->contentView:Landroid/widget/LinearLayout;

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v3, v4, v2}, Landroid/widget/LinearLayout;->measure(II)V

    iget-object v2, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v2

    const-string v3, "SmartspaceView"

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x2b

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "onBothCardAndChipShown, height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->listener:Lcom/google/android/libraries/assistant/oemsmartspace/shared/SmartspaceUpdateListener;

    invoke-interface {p0, v2}, Lcom/google/android/libraries/assistant/oemsmartspace/shared/SmartspaceUpdateListener;->onBothCardAndChipShown(I)V

    return-void

    :cond_3
    const/16 v4, 0x20

    if-eqz v1, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "onChipShown, height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->listener:Lcom/google/android/libraries/assistant/oemsmartspace/shared/SmartspaceUpdateListener;

    invoke-interface {p0, v2}, Lcom/google/android/libraries/assistant/oemsmartspace/shared/SmartspaceUpdateListener;->onChipShown(I)V

    return-void

    :cond_4
    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "onCardShown, height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->listener:Lcom/google/android/libraries/assistant/oemsmartspace/shared/SmartspaceUpdateListener;

    invoke-interface {p0, v2}, Lcom/google/android/libraries/assistant/oemsmartspace/shared/SmartspaceUpdateListener;->onCardShown(I)V

    return-void

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "onNoCardAndChipShown, height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->listener:Lcom/google/android/libraries/assistant/oemsmartspace/shared/SmartspaceUpdateListener;

    invoke-interface {p0, v2}, Lcom/google/android/libraries/assistant/oemsmartspace/shared/SmartspaceUpdateListener;->onNoCardAndChipShown(I)V

    return-void
.end method

.method private applyWeather(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->subtitleWeather:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->weatherIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;->hasWeather()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->enableWeather:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->enableDate:Z

    const/4 v2, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;->hasCurrent()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->clock:Landroid/widget/TextClock;

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->subtitleIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->subtitleTextView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;->weatherCard:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;

    invoke-virtual {v1}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->getWeatherDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->subtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/libraries/assistant/oemsmartspace/lib/R$dimen;->smartspace_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget-object v1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->subtitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->setCustomizeTextStyle(Landroid/widget/TextView;F)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->subtitleWeather:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;->weatherCard:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;

    invoke-virtual {v1}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->getFullWeatherAccessibilityDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/libraries/assistant/oemsmartspace/lib/R$dimen;->smartspace_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget-object v1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->subtitleWeather:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->setCustomizeTextStyle(Landroid/widget/TextView;F)V

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->subtitleWeather:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;->weatherCard:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;

    invoke-virtual {v1}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->getTitle()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->weatherIcon:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object p1, p1, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;->weatherCard:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;

    invoke-virtual {p1}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->getIcon()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->weatherIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->subtitleWeather:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->subtitleWeather:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->weatherIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method private bindViews()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->contentView:Landroid/widget/LinearLayout;

    sget v1, Lcom/google/android/libraries/assistant/oemsmartspace/lib/R$id;->subtitle_weather_text:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->subtitleWeather:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->contentView:Landroid/widget/LinearLayout;

    sget v1, Lcom/google/android/libraries/assistant/oemsmartspace/lib/R$id;->subtitle_weather_icon:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->weatherIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->contentView:Landroid/widget/LinearLayout;

    sget v1, Lcom/google/android/libraries/assistant/oemsmartspace/lib/R$id;->subtitle_icon:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->subtitleIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->contentView:Landroid/widget/LinearLayout;

    sget v1, Lcom/google/android/libraries/assistant/oemsmartspace/lib/R$id;->date_text:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->clock:Landroid/widget/TextClock;

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->contentView:Landroid/widget/LinearLayout;

    sget v1, Lcom/google/android/libraries/assistant/oemsmartspace/lib/R$id;->top_line:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->topLine:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->contentView:Landroid/widget/LinearLayout;

    sget v1, Lcom/google/android/libraries/assistant/oemsmartspace/lib/R$id;->title_fixed_text:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->titleTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->contentView:Landroid/widget/LinearLayout;

    sget v1, Lcom/google/android/libraries/assistant/oemsmartspace/lib/R$id;->subtitle_line:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->subtitleLine:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->contentView:Landroid/widget/LinearLayout;

    sget v1, Lcom/google/android/libraries/assistant/oemsmartspace/lib/R$id;->subtitle_text:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->subtitleTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->clock:Landroid/widget/TextClock;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->subtitleWeather:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->weatherIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->subtitleIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->subtitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private ellipsizeSubtitle()Ljava/lang/CharSequence;
    .locals 4

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/libraries/assistant/oemsmartspace/lib/R$dimen;->subtitle_max_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->subtitleIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->subtitleTextView:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->getHorizontalMargin(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->subtitleLine:Landroid/widget/LinearLayout;

    invoke-static {v1}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->getHorizontalMargin(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->subtitleWeather:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->subtitleWeather:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->textPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->subtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->data:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;

    iget-object v1, v1, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;->currentCard:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;

    invoke-virtual {v1}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->getSubtitle()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->textPaint:Landroid/text/TextPaint;

    int-to-float v0, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->getTruncateAt(Z)Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-static {v2, p0, v0, v1}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private ellipsizeTitle()Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->data:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;

    iget-object v0, v0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;->currentCard:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;

    iget-object v1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMaxLines()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/libraries/assistant/oemsmartspace/lib/R$dimen;->subtitle_max_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v4

    iget v5, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->smartspaceHorizontalPadding:I

    iget-object v6, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->textPaint:Landroid/text/TextPaint;

    iget-object v7, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getTextSize()F

    move-result v7

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v6, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->textPaint:Landroid/text/TextPaint;

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->getTextNonTruncatable(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    invoke-virtual {v0, v7}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->getTextTruncatable(Z)Ljava/lang/String;

    move-result-object v7

    iget-object p0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->textPaint:Landroid/text/TextPaint;

    sub-int/2addr v2, v3

    sub-int/2addr v2, v4

    sub-int/2addr v2, v5

    mul-int/2addr v1, v2

    int-to-float v1, v1

    sub-float/2addr v1, v6

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v7, p0, v1, v2}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->ellipsizeTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private enableLayoutWithCustomizeParams(Landroid/widget/LinearLayout;)V
    .locals 1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-boolean p0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->isLeftAligned:Z

    if-eqz p0, :cond_0

    const p0, 0x800003

    goto :goto_0

    :cond_0
    const/16 p0, 0x11

    :goto_0
    iput p0, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private static getCardIconName(Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView$4;->$SwitchMap$com$google$geo$sidekick$SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string p0, "reminder"

    return-object p0

    :cond_1
    const-string p0, "flight"

    return-object p0

    :cond_2
    const-string p0, "alarm"

    return-object p0

    :cond_3
    const-string p0, "commute"

    return-object p0

    :cond_4
    const-string p0, "calendar"

    return-object p0
.end method

.method private getCustomizedIcon(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;)Landroid/graphics/drawable/Drawable;
    .locals 4

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->customizeResourcePackage:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->getCard()Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard;->getCardType()Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->getCardIconName(Lcom/google/geo/sidekick/SmartspaceProto$SmartspaceUpdate$SmartspaceCard$CardType;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->customizeResourcePackage:Ljava/lang/String;

    const-string v3, "drawable"

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object p0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceCard;->getIcon()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method private static getHorizontalMargin(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private setChipStrokeAndBackgroundColor(Landroid/view/View;)V
    .locals 5

    iget v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->textColor:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->context:Landroid/content/Context;

    sget v1, Lcom/google/android/libraries/assistant/oemsmartspace/lib/R$color;->cw_chip_action_bg:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iget v1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->textColor:I

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    iget v2, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->textColor:I

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    iget v3, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->textColor:I

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/libraries/assistant/oemsmartspace/lib/R$dimen;->ssc_action_bg_stroke_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iget-object v2, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->context:Landroid/content/Context;

    sget v3, Lcom/google/android/libraries/assistant/oemsmartspace/lib/R$color;->cw_chip_bg:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    iget v3, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->textColor:I

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v3

    iget v4, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->textColor:I

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v4

    iget p0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->textColor:I

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    rsub-int v3, v3, 0xff

    rsub-int v4, v4, 0xff

    rsub-int p0, p0, 0xff

    invoke-static {v2, v3, v4, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    float-to-int v1, v1

    invoke-virtual {p1, v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-void
.end method

.method private setCustomizeTextStyle(Landroid/widget/TextView;F)V
    .locals 1

    iget v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->textColor:I

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->textFont:Landroid/graphics/Typeface;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_1
    const/4 v0, 0x0

    iget p0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->textSizeFactor:F

    mul-float/2addr p2, p0

    invoke-virtual {p1, v0, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method private setSubtitleMargin()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/libraries/assistant/oemsmartspace/lib/R$dimen;->vertical_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget-object v1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->subtitleLine:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    iget-object v1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->subtitleLine:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->textSizeFactor:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object p0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->subtitleLine:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateChip(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceChip;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->layoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/google/android/libraries/assistant/oemsmartspace/lib/R$layout;->ssc:I

    iget-object v2, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->sscsContainer:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->sscsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->sscsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget v1, Lcom/google/android/libraries/assistant/oemsmartspace/lib/R$id;->ssc_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    sget v2, Lcom/google/android/libraries/assistant/oemsmartspace/lib/R$id;->ssc_textview:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceChip;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/google/android/libraries/assistant/oemsmartspace/lib/R$dimen;->ssc_text_size:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-direct {p0, v2, v4}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->setCustomizeTextStyle(Landroid/widget/TextView;F)V

    sget v4, Lcom/google/android/libraries/assistant/oemsmartspace/lib/R$id;->ssc_wrapper:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v4}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->setChipStrokeAndBackgroundColor(Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceChip;->hasIcon()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceChip;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget v2, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->textColor:I

    if-eqz v2, :cond_1

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_1
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceChip;->hasPendingIntent()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView$1;-><init>(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceChip;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-void
.end method

.method private updateChips()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->sscsContainer:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->enableLayoutWithCustomizeParams(Landroid/widget/LinearLayout;)V

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->sscsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->sscsContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->data:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;

    iget-object v0, v0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;->firstChip:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceChip;

    invoke-direct {p0, v0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->updateChip(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceChip;)V

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->data:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;

    iget-object v0, v0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;->secondChip:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceChip;

    invoke-direct {p0, v0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->updateChip(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceChip;)V

    return-void
.end method

.method private updateView(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->subtitleLine:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->enableLayoutWithCustomizeParams(Landroid/widget/LinearLayout;)V

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->data:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->isLanguageSupported:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;->hasCurrent()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->data:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;

    invoke-direct {p0, v0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->applyCurrentCard(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->applyDate(Z)V

    :cond_2
    iget-object p1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->data:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;

    invoke-direct {p0, p1}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->applyWeather(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;)V

    invoke-direct {p0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->updateChips()V

    return-void

    :cond_3
    :goto_0
    const-string v0, "SmartspaceView"

    const-string v1, "No smartspace data available right now"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->weatherIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->subtitleWeather:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->sscsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->sscsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-direct {p0, p1}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->applyDate(Z)V

    return-void
.end method


# virtual methods
.method public enableDate(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->enableDate:Z

    return-void
.end method

.method public enableWeather(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->enableWeather:Z

    return-void
.end method

.method public onSmartspaceUpdated(Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;Z)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->data:Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceData;

    invoke-direct {p0, p2}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->updateView(Z)V

    iget-object p1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->contentView:Landroid/widget/LinearLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-direct {p0}, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->applyNewHeightToListener()V

    iget-object p0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->contentView:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public setColor(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->textColor:I

    return-void
.end method

.method public setFont(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->textFont:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Cannot find font with the provided path: "

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    const-string p1, "SmartspaceView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setLanguageSupported(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->isLanguageSupported:Z

    return-void
.end method

.method public setLeftAligned(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->isLeftAligned:Z

    return-void
.end method

.method public setResource(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->customizeResourcePackage:Ljava/lang/String;

    return-void
.end method

.method public setTextSizeFactor(F)V
    .locals 0

    iput p1, p0, Lcom/google/android/libraries/assistant/oemsmartspace/lib/SmartspaceView;->textSizeFactor:F

    return-void
.end method
