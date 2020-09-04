.class public Lcom/oneplus/faceunlock/OpFacelockLightView;
.super Landroid/widget/RelativeLayout;
.source "OpFacelockLightView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/faceunlock/OpFacelockLightView$Patterns;
    }
.end annotation


# instance fields
.field private mButton:Landroid/widget/TextView;

.field private mClockView:Lcom/oneplus/keyguard/clock/OpTextClock;

.field private mConfig:Landroid/content/res/Configuration;

.field private mContext:Landroid/content/Context;

.field private mDateView:Lcom/oneplus/keyguard/clock/OpTextClock;

.field private mInnerView:Landroid/widget/LinearLayout;

.field private mNotify:Landroid/widget/TextView;

.field private mNotifyView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 54
    iput-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockLightView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    iput-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockLightView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    iput-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockLightView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 39
    iput-object p1, p0, Lcom/oneplus/faceunlock/OpFacelockLightView;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getDateViewFormat()Ljava/lang/String;
    .locals 1

    .line 115
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    const-string v0, "EEMMMd"

    .line 116
    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private refresh()V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockLightView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/faceunlock/OpFacelockLightView$Patterns;->update(Landroid/content/Context;)V

    .line 135
    invoke-virtual {p0}, Lcom/oneplus/faceunlock/OpFacelockLightView;->refreshTime()V

    return-void
.end method

.method private relayout()V
    .locals 6

    .line 84
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockLightView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 86
    iget-object v1, p0, Lcom/oneplus/faceunlock/OpFacelockLightView;->mInnerView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    int-to-double v2, v0

    const-wide/high16 v4, 0x3fc0000000000000L    # 0.125

    mul-double/2addr v2, v4

    double-to-int v0, v2

    .line 87
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 88
    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockLightView;->mInnerView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 2

    .line 65
    sget v0, Lcom/android/systemui/R$id;->face_unlock_light_inner_view:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockLightView;->mInnerView:Landroid/widget/LinearLayout;

    .line 66
    sget v0, Lcom/android/systemui/R$id;->face_unlock_light_view_notify:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockLightView;->mNotify:Landroid/widget/TextView;

    .line 67
    new-instance v0, Landroid/content/res/Configuration;

    iget-object v1, p0, Lcom/oneplus/faceunlock/OpFacelockLightView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockLightView;->mConfig:Landroid/content/res/Configuration;

    .line 68
    sget v0, Lcom/android/systemui/R$id;->face_unlock_clock_view:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/keyguard/clock/OpTextClock;

    iput-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockLightView;->mClockView:Lcom/oneplus/keyguard/clock/OpTextClock;

    .line 69
    sget v0, Lcom/android/systemui/R$id;->face_unlock_date_view:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/keyguard/clock/OpTextClock;

    iput-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockLightView;->mDateView:Lcom/oneplus/keyguard/clock/OpTextClock;

    .line 70
    sget v0, Lcom/android/systemui/R$id;->face_unlock_light_view_notify:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockLightView;->mNotifyView:Landroid/widget/TextView;

    .line 71
    sget v0, Lcom/android/systemui/R$id;->face_unlock_light_view_close_button:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockLightView;->mButton:Landroid/widget/TextView;

    .line 72
    sget v0, Lcom/android/systemui/R$id;->face_unlock_light_view_bg:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 73
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 75
    iget-object v1, p0, Lcom/oneplus/faceunlock/OpFacelockLightView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFacelockLightingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    sget v1, Lcom/android/systemui/R$drawable;->face_unlock_light_view_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    const-string v0, "OpFacelockLightView"

    const-string v1, "init"

    .line 79
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-direct {p0}, Lcom/oneplus/faceunlock/OpFacelockLightView;->relayout()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockLightView;->mNotify:Landroid/widget/TextView;

    sget v1, Lcom/android/systemui/R$string;->face_unlock_light_view_notify:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 60
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockLightView;->mButton:Landroid/widget/TextView;

    sget v1, Lcom/android/systemui/R$string;->accessibility_desc_close:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 61
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockLightView;->mConfig:Landroid/content/res/Configuration;

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 93
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    .line 95
    invoke-direct {p0}, Lcom/oneplus/faceunlock/OpFacelockLightView;->refresh()V

    :cond_0
    return-void
.end method

.method public refreshTime()V
    .locals 3

    .line 121
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 122
    iget-object v1, p0, Lcom/oneplus/faceunlock/OpFacelockLightView;->mClockView:Lcom/oneplus/keyguard/clock/OpTextClock;

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextClock;->setTimeZone(Ljava/lang/String;)V

    .line 123
    iget-object v1, p0, Lcom/oneplus/faceunlock/OpFacelockLightView;->mDateView:Lcom/oneplus/keyguard/clock/OpTextClock;

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextClock;->setTimeZone(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockLightView;->mDateView:Lcom/oneplus/keyguard/clock/OpTextClock;

    invoke-direct {p0}, Lcom/oneplus/faceunlock/OpFacelockLightView;->getDateViewFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockLightView;->mDateView:Lcom/oneplus/keyguard/clock/OpTextClock;

    invoke-direct {p0}, Lcom/oneplus/faceunlock/OpFacelockLightView;->getDateViewFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v0, p0, Lcom/oneplus/faceunlock/OpFacelockLightView;->mClockView:Lcom/oneplus/keyguard/clock/OpTextClock;

    sget-object v1, Lcom/oneplus/faceunlock/OpFacelockLightView$Patterns;->clockView12:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 130
    iget-object p0, p0, Lcom/oneplus/faceunlock/OpFacelockLightView;->mClockView:Lcom/oneplus/keyguard/clock/OpTextClock;

    sget-object v0, Lcom/oneplus/faceunlock/OpFacelockLightView$Patterns;->clockView24:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/TextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setImageBG(Z)V
    .locals 1

    .line 104
    sget v0, Lcom/android/systemui/R$id;->face_unlock_light_view_bg:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    .line 105
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    if-eqz p1, :cond_0

    .line 108
    sget p1, Lcom/android/systemui/R$drawable;->face_unlock_light_view_bg:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 110
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method
