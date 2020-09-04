.class public Lcom/oneplus/aod/OpMinimalismClock;
.super Landroid/widget/RelativeLayout;
.source "OpMinimalismClock.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mHour:Landroid/widget/ImageView;

.field private mMin:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const-string p1, "OpMinimalismClock"

    .line 14
    iput-object p1, p0, Lcom/oneplus/aod/OpMinimalismClock;->TAG:Ljava/lang/String;

    .line 20
    invoke-direct {p0}, Lcom/oneplus/aod/OpMinimalismClock;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "OpMinimalismClock"

    .line 14
    iput-object p1, p0, Lcom/oneplus/aod/OpMinimalismClock;->TAG:Ljava/lang/String;

    .line 25
    invoke-direct {p0}, Lcom/oneplus/aod/OpMinimalismClock;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, "OpMinimalismClock"

    .line 14
    iput-object p1, p0, Lcom/oneplus/aod/OpMinimalismClock;->TAG:Ljava/lang/String;

    .line 30
    invoke-direct {p0}, Lcom/oneplus/aod/OpMinimalismClock;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    .line 34
    iget-object p0, p0, Lcom/oneplus/aod/OpMinimalismClock;->TAG:Ljava/lang/String;

    const-string v0, "init"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .line 46
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 47
    iget-object v0, p0, Lcom/oneplus/aod/OpMinimalismClock;->TAG:Ljava/lang/String;

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-virtual {p0}, Lcom/oneplus/aod/OpMinimalismClock;->refreshTime()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 39
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 40
    sget v0, Lcom/android/systemui/R$id;->minimalism_hour:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/aod/OpMinimalismClock;->mHour:Landroid/widget/ImageView;

    .line 41
    sget v0, Lcom/android/systemui/R$id;->minimalism_min:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/aod/OpMinimalismClock;->mMin:Landroid/widget/ImageView;

    return-void
.end method

.method public refreshTime()V
    .locals 5

    .line 52
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "hh:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 53
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 57
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    .line 58
    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 60
    iget-object v2, p0, Lcom/oneplus/aod/OpMinimalismClock;->mHour:Landroid/widget/ImageView;

    sget v3, Lcom/android/systemui/R$drawable;->minimalism_hour:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 61
    iget-object v2, p0, Lcom/oneplus/aod/OpMinimalismClock;->mMin:Landroid/widget/ImageView;

    sget v3, Lcom/android/systemui/R$drawable;->minimalism_min:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    int-to-float v1, v1

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float/2addr v1, v2

    const/high16 v3, 0x41400000    # 12.0f

    div-float/2addr v1, v3

    int-to-float v0, v0

    const/high16 v3, 0x41f00000    # 30.0f

    mul-float/2addr v3, v0

    const/high16 v4, 0x42700000    # 60.0f

    div-float/2addr v3, v4

    add-float/2addr v1, v3

    mul-float/2addr v0, v2

    div-float/2addr v0, v4

    .line 67
    iget-object v2, p0, Lcom/oneplus/aod/OpMinimalismClock;->mHour:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 68
    iget-object p0, p0, Lcom/oneplus/aod/OpMinimalismClock;->mMin:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setRotation(F)V

    return-void
.end method
